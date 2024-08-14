#!/bin/bash

# common-functions.sh
# Relative path: d/Node/utils/common-functions.sh

# Set strict mode
set -euo pipefail

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Logging functions
log_info() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

log_warn() {
    echo -e "${YELLOW}[WARN]${NC} $1" >&2
}

log_error() {
    echo -e "${RED}[ERROR]${NC} $1" >&2
}

# Check if a command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Check if a package is installed (for apt-based systems)
package_installed() {
    dpkg -s "$1" >/dev/null 2>&1
}

# Install a package if it's not already installed
ensure_package() {
    if ! package_installed "$1"; then
        log_info "Installing $1..."
        sudo apt-get update && sudo apt-get install -y "$1"
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
    netstat -tuln | grep -q ":$1 "
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
    tr -dc 'a-zA-Z0-9' < /dev/urandom | fold -w "$length" | head -n 1
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

# Main execution check
if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    log_warn "This script is meant to be sourced, not executed directly."
    exit 1
fi
