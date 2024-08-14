#!/bin/bash
# master-setup.sh
# Relative path: d/Node/utils/master-setup.sh

set -e

# Source the common functions and logger
source "$(dirname "$0")/common-functions.sh"
source "$(dirname "$0")/logger.sh"

# Check if project name is provided
if [ -z "$1" ]; then
    log_error "Please provide a project name as an argument."
    exit 1
fi

PROJECT_NAME="$1"
PROJECT_DIR="/d/Node/projects/$PROJECT_NAME"

# Set up logging for this project
setup_log_file "$PROJECT_NAME"

log_info "Starting setup for project: $PROJECT_NAME"

# Source the default config
source "$(dirname "$0")/project-config.sh"

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

# Create project directory
mkdir -p "$PROJECT_DIR"
cd "$PROJECT_DIR"

# Function to run setup script with error handling
run_setup_script() {
    local script=$1
    shift  # Remove the first argument (script name) from the argument list
    log_info "Running $script..."
    if ../../utils/$script "$PROJECT_NAME" "$@"; then
        log_info "$script completed successfully."
    else
        log_warn "Warning: $script completed with potential issues. Check the logs for details."
    fi
}

# Run database setup
run_setup_script setup-database.sh

# Run project setup
run_setup_script setup-project.sh

# Core setup
run_setup_script set-configs.sh
run_setup_script update-package-json.sh
run_setup_script setup-ci-cd.sh
run_setup_script generate-tests.sh
run_setup_script init-git.sh

# Client setup
if [ "$SETUP_CLIENT" = true ]; then
    run_setup_script setup-sass.sh
    run_setup_script setup-styled-components.sh
    run_setup_script setup-redux.sh
    run_setup_script generate-config.sh
    run_setup_script generate-layout.sh dashboard
    run_setup_script setup-state-management.sh redux
    run_setup_script generate-api-service.sh api
    run_setup_script setup-responsive-design.sh
    run_setup_script setup-accessibility.sh
    run_setup_script setup-performance-optimization.sh
fi

# Optional setups
if [ "$SETUP_ANIMATION" = true ]; then
    run_setup_script setup-animation.sh framer-motion
fi

if [ "$SETUP_I18N" = true ]; then
    run_setup_script setup-i18n.sh
fi

if [ "$SETUP_SEO" = true ]; then
    run_setup_script setup-seo.sh
fi

if [ "$SETUP_PWA" = true ]; then
    run_setup_script setup-pwa.sh
fi

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
        1)
            run_setup_script setup-api-generation.sh
            run_setup_script setup-rbac.sh
            run_setup_script setup-workflows.sh
            run_setup_script setup-dynamic-ui.sh
            run_setup_script setup-file-management.sh
            run_setup_script setup-email-templates.sh
            run_setup_script setup-dashboard.sh
            run_setup_script setup-noloco-theme.sh "both"
            run_setup_script setup-data-modeling.sh
            ;;
        2)
            run_setup_script setup-api-generation.sh
            ;;
        3)
            run_setup_script setup-dynamic-ui.sh
            run_setup_script setup-noloco-theme.sh "both"
            ;;
        4)
            run_setup_script setup-rbac.sh
            run_setup_script setup-workflows.sh
            ;;
    esac
fi

if [ "$SETUP_COMPONENT_DOCS" = true ]; then
    run_setup_script setup-component-docs.sh
fi

log_info "Project $PROJECT_NAME setup completed. Check the logs for any warnings or errors."
