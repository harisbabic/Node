#!/bin/bash
# master-setup.sh
# Description: Master script for setting up a new project
# Relative path: d/Node/utils/master-setup.sh

set -euo pipefail

# Source the common functions and logger
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/common-functions.sh"
source "$SCRIPT_DIR/logger.sh"

# Source the project configuration
source "$SCRIPT_DIR/project-config.sh"

# Function to prompt user for configuration
prompt_config() {
    local var_name="$1"
    local description="$2"
    local default_value="${!var_name}"

    read -p "$description [$default_value]: " user_input
    if [ -n "$user_input" ]; then
        eval "$var_name=$user_input"
    fi
}

# Function to create standardized .gitignore files
create_gitignore() {
    local dir="$1"
    local type="$2"

    cat > "$dir/.gitignore" << EOF
# Common
node_modules/
*.log
.DS_Store

# Environment variables
.env
.env.local
.env.*.local

# Editor directories and files
.idea
.vscode
*.suo
*.ntvs*
*.njsproj
*.sln
*.sw?

# Testing
/coverage

EOF

    if [ "$type" = "client" ]; then
        cat >> "$dir/.gitignore" << EOF
# Client-specific
/build
/dist

# Dependency directories
/.pnp
.pnp.js

# Optional eslint cache
.eslintcache

# Optional REPL history
.node_repl_history

# Output of 'npm pack'
*.tgz

# Yarn Integrity file
.yarn-integrity
EOF
    elif [ "$type" = "server" ]; then
        cat >> "$dir/.gitignore" << EOF
# Server-specific
/dist
/build

# Logs
logs
*.log
npm-debug.log*
yarn-debug.log*
yarn-error.log*

# TypeScript cache
*.tsbuildinfo

# Optional npm cache directory
.npm
EOF
    fi

    log_info "Created .gitignore file in $dir"
}

# Function to run setup script with error handling
run_setup_script() {
    local script=$1
    shift  # Remove the first argument (script name) from the argument list
    log_info "Running $script..."
    if "$SCRIPT_DIR/$script" "$PROJECT_NAME" "$@"; then
        log_info "$script completed successfully."
    else
        log_error "$script failed. Check the logs for details."
        exit 1
    fi
}

# Function to run Setup for Client directories
setup_client_structure() {
    if [ "$SETUP_CLIENT" = true ]; then
        if [ ! -d "$PROJECT_DIR/client" ]; then
            mkdir -p "$PROJECT_DIR/client"
            create_gitignore "$PROJECT_DIR/client" "client"
        else
            log_warn "Client directory already exists. Skipping initial client setup."
        fi
    fi
}

# Check if project name is provided
if [ $# -eq 0 ]; then
    log_error "Please provide a project name as an argument."
    echo "Usage: $0 <project-name>"
    exit 1
fi

PROJECT_NAME="$1"

# Allow user to specify a custom base directory
read -p "Enter base directory for the project (default: /d/Node/projects): " BASE_DIR
BASE_DIR=${BASE_DIR:-"/d/Node/projects"}

PROJECT_DIR="$BASE_DIR/$PROJECT_NAME"

log_info "Starting setup for project: $PROJECT_NAME in $PROJECT_DIR"

# Prompt user for customization
echo "Project Configuration"
echo "====================="
prompt_config SETUP_CLIENT "Set up client-side? (true/false)"
prompt_config SETUP_ANIMATION "Set up animations? (true/false)"
prompt_config SETUP_I18N "Set up internationalization? (true/false)"
prompt_config SETUP_SEO "Set up SEO? (true/false)"
prompt_config SETUP_PWA "Set up as Progressive Web App? (true/false)"
prompt_config SETUP_API "Set up API? (true/false)"
prompt_config SETUP_NOLOCO "Set up Noloco-like functionality? (true/false)"
if [ "$SETUP_NOLOCO" = true ]; then
    prompt_config NOLOCO_OPTION "Noloco option (1: Full, 2: API Only, 3: UI Only, 4: RBAC and Workflows)"
fi
prompt_config SETUP_COMPONENT_DOCS "Set up component documentation? (true/false)"
prompt_config USE_TYPESCRIPT "Use TypeScript? (true/false)"
prompt_config DATABASE_TYPE "Database type (postgresql/mysql/mongodb)"
prompt_config FRONTEND_FRAMEWORK "Frontend framework (react/vue/angular)"

# Check if project directory already exists
if [ -d "$PROJECT_DIR" ]; then
    log_warn "Project directory already exists. Existing files may be overwritten."
    read -p "Do you want to continue? (y/n): " confirm
    if [[ $confirm != [yY] ]]; then
        log_info "Setup aborted."
        exit 0
    fi
fi

# Create project directory structure
mkdir -p "$PROJECT_DIR/server"
# mkdir -p "$PROJECT_DIR"/{client/{public,src},server/{src/{middleware},tests/{integration,unit}}}

# Set appropriate permissions
chmod 755 "$PROJECT_DIR"
find "$PROJECT_DIR" -type d -exec chmod 755 {} \;

# Create .gitignore files
# create_gitignore "$PROJECT_DIR/client" "client"
create_gitignore "$PROJECT_DIR/server" "server"

# Check for required tools
check_required_tools

# Run setup scripts
run_setup_script setup-database.sh
run_setup_script setup-project.sh

setup_client_structure

run_setup_script set-configs.sh
run_setup_script update-package-json.sh
run_setup_script setup-ci-cd.sh
run_setup_script generate-tests.sh
run_setup_script init-git.sh

# Client setup
if [ "$SETUP_CLIENT" = true ]; then
    run_setup_script setup-client.sh
fi

# Optional setups
[ "$SETUP_ANIMATION" = true ] && run_setup_script setup-animation.sh
[ "$SETUP_I18N" = true ] && run_setup_script setup-i18n.sh
[ "$SETUP_SEO" = true ] && run_setup_script setup-seo.sh
[ "$SETUP_PWA" = true ] && run_setup_script setup-pwa.sh

# Server setup
run_setup_script setup-auth.sh

# API setup
if [ "$SETUP_API" = true ]; then
    read -p "Enter the route name: " route_name
    run_setup_script create-api-route.sh "$route_name"
fi

# Noloco-like functionality setup
if [ "$SETUP_NOLOCO" = true ]; then
    case $NOLOCO_OPTION in
        1) run_setup_script setup-noloco.sh full ;;
        2) run_setup_script setup-noloco.sh api ;;
        3) run_setup_script setup-noloco.sh ui ;;
        4) run_setup_script setup-noloco.sh rbac-workflows ;;
        *) log_error "Invalid Noloco option. Skipping Noloco setup." ;;
    esac
fi

[ "$SETUP_COMPONENT_DOCS" = true ] && run_setup_script setup-component-docs.sh

log_info "Project $PROJECT_NAME setup completed. Check the logs for any warnings or errors."

# Provide summary of setup
print_setup_summary

# Offer to open project in user's preferred editor
offer_open_in_editor
