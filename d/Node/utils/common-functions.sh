#!/bin/bash
# common-functions.sh
# Relative path: d/Node/utils/common-functions.sh
# Description: Common utility functions for project setup scripts

set -euo pipefail

# Source the logger
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/logger.sh"

# Check if a command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Check if a package is installed
package_installed() {
    if command_exists dpkg; then
        dpkg -s "$1" >/dev/null 2>&1
    elif command_exists rpm; then
        rpm -q "$1" >/dev/null 2>&1
    else
        log_error "Unable to check if package is installed: neither dpkg nor rpm found"
        return 1
    fi
}

# Install a package if it's not already installed
ensure_package() {
    if ! package_installed "$1"; then
        log_info "Installing $1..."
        if command_exists apt-get; then
            sudo apt-get update && sudo apt-get install -y "$1"
        elif command_exists yum; then
            sudo yum install -y "$1"
        elif command_exists brew; then
            brew install "$1"
        else
            log_error "Unable to install package: no supported package manager found"
            return 1
        fi
    else
        log_info "$1 is already installed."
    fi
}

# Check if a directory exists, create it if it doesn't
ensure_directory() {
    if [ ! -d "$1" ]; then
        log_info "Creating directory: $1"
        mkdir -p "$1"
    else
        log_info "Directory already exists: $1"
    fi
}

# Check if a file exists
file_exists() {
    [ -f "$1" ]
}

# Backup a file
backup_file() {
    if file_exists "$1"; then
        local backup_file="$1.bak.$(date +%Y%m%d%H%M%S)"
        log_info "Backing up $1 to $backup_file"
        cp "$1" "$backup_file"
    else
        log_warn "File does not exist, cannot backup: $1"
    fi
}

# Check if we're running as root
is_root() {
    [ "$(id -u)" -eq 0 ]
}

# Ensure we're running as root
ensure_root() {
    if ! is_root; then
        log_error "This script must be run as root"
        exit 1
    fi
}

# Check if a port is in use
port_in_use() {
    if command_exists netstat; then
        netstat -tuln | grep -q ":$1 "
    elif command_exists ss; then
        ss -tuln | grep -q ":$1 "
    else
        log_error "Unable to check if port is in use: neither netstat nor ss found"
        return 1
    fi
}

# Wait for a service to be available
wait_for_service() {
    local host=$1
    local port=$2
    local timeout=${3:-30}
    local start_time=$(date +%s)

    while ! nc -z "$host" "$port" >/dev/null 2>&1; do
        if [ $(($(date +%s) - start_time)) -gt "$timeout" ]; then
            log_error "Service $host:$port did not become available in time"
            return 1
        fi
        sleep 1
    done
    log_info "Service $host:$port is now available"
}

# Generate a random string
generate_random_string() {
    local length=${1:-32}
    if command_exists openssl; then
        openssl rand -base64 "$length" | tr -dc 'a-zA-Z0-9' | fold -w "$length" | head -n 1
    else
        tr -dc 'a-zA-Z0-9' < /dev/urandom | fold -w "$length" | head -n 1
    fi
}

# Validate an email address format
validate_email() {
    local email=$1
    if [[ "$email" =~ ^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}$ ]]; then
        return 0
    else
        return 1
    fi
}

# Check if a variable is set
is_var_set() {
    [ -n "${1+x}" ]
}

# Source an environment file
source_env_file() {
    local env_file=$1
    if file_exists "$env_file"; then
        log_info "Sourcing environment file: $env_file"
        set -a
        # shellcheck source=/dev/null
        source "$env_file"
        set +a
    else
        log_warn "Environment file not found: $env_file"
    fi
}

# Check for required tools
check_required_tools() {
    local required_tools=("git" "node" "npm" "docker")
    local missing_tools=()

    for tool in "${required_tools[@]}"; do
        if ! command_exists "$tool"; then
            missing_tools+=("$tool")
        fi
    done

    if [ ${#missing_tools[@]} -ne 0 ]; then
        log_error "The following required tools are missing: ${missing_tools[*]}"
        log_error "Please install them and try again."
        exit 1
    fi
}

# Print setup summary
print_setup_summary() {
    log_info "Setup Summary:"
    log_info "Project Name: $PROJECT_NAME"
    log_info "Project Directory: $PROJECT_DIR"
    log_info "Database Type: $DATABASE_TYPE"
    log_info "Frontend Framework: $FRONTEND_FRAMEWORK"
    [ "$SETUP_CLIENT" = true ] && log_info "Client-side setup: Completed" || log_info "Client-side setup: Skipped"
    [ "$SETUP_API" = true ] && log_info "API setup: Completed" || log_info "API setup: Skipped"
    [ "$SETUP_NOLOCO" = true ] && log_info "Noloco-like functionality: Completed (Option: $NOLOCO_OPTION)" || log_info "Noloco-like functionality: Skipped"
}

# Offer to open project in user's preferred editor
offer_open_in_editor() {
    if command_exists code; then
        read -p "Do you want to open the project in Visual Studio Code? (y/n): " open_vscode
        if [[ $open_vscode == [yY] ]]; then
            code "$PROJECT_DIR"
        fi
    elif command_exists atom; then
        read -p "Do you want to open the project in Atom? (y/n): " open_atom
        if [[ $open_atom == [yY] ]]; then
            atom "$PROJECT_DIR"
        fi
    elif command_exists subl; then
        read -p "Do you want to open the project in Sublime Text? (y/n): " open_sublime
        if [[ $open_sublime == [yY] ]]; then
            subl "$PROJECT_DIR"
        fi
    else
        log_info "No supported code editor found. You can open the project manually in your preferred editor."
    fi
}

# Remove redundant lines from a file
remove_redundant_lines() {
    local file="$1"
    if [ ! -f "$file" ]; then
        log_error "File not found: $file"
        return 1
    fi

    log_info "Removing redundant lines from $file"
    # Create a temporary file
    local temp_file=$(mktemp)

    # Sort the file, remove duplicate lines, and preserve comments
    awk '!seen[$0]++ || /^#/' "$file" | sort -u > "$temp_file"

    # Replace the original file with the cleaned version
    mv "$temp_file" "$file"

    log_info "Redundant lines removed from $file"
}

# Main execution check
if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    log_warn "This script is meant to be sourced, not executed directly."
    exit 1
fi
