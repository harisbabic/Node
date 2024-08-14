#!/bin/bash
# master-setup.sh

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
PROJECT_DIR="../projects/$PROJECT_NAME"

# Function to run setup script with error handling
run_setup_script() {
    local script=$1
    log_info "Running $script..."
    if ../utils/$script "$PROJECT_NAME"; then
        log_info "$script completed successfully."
    else
        log_error "Error: $script failed."
        exit 1
    fi
}

cleanup() {
    log_warn "Setup interrupted. Cleaning up..."
    # Add cleanup actions here if needed
}

trap cleanup EXIT

# Create project directory
mkdir -p "$PROJECT_DIR"
cd "$PROJECT_DIR" || exit

# Database setup
log_info "Starting database setup..."
run_setup_script setup-database.sh

# Core setup
log_info "Starting core setup..."
run_setup_script setup-project.sh
run_setup_script set-configs.sh
run_setup_script update-package-json.sh
run_setup_script setup-ci-cd.sh
run_setup_script generate-tests.sh
run_setup_script init-git.sh

# Client setup
log_info "Starting client setup..."
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

# Optional Client setups
log_info "Optional client setups..."
read -p "Do you want to set up animations with Framer Motion? (y/n) " setup_animation
if [[ $setup_animation =~ ^[Yy]$ ]]; then
    run_setup_script setup-animation.sh framer-motion
fi

read -p "Do you want to set up internationalization (i18n)? (y/n) " setup_i18n
if [[ $setup_i18n =~ ^[Yy]$ ]]; then
    run_setup_script setup-i18n.sh
fi

read -p "Do you want to set up SEO? (y/n) " setup_seo
if [[ $setup_seo =~ ^[Yy]$ ]]; then
    run_setup_script setup-seo.sh
fi

read -p "Do you want to set up as a Progressive Web App (PWA)? (y/n) " setup_pwa
if [[ $setup_pwa =~ ^[Yy]$ ]]; then
    run_setup_script setup-pwa.sh
fi

# Server setup
log_info "Starting server setup..."
run_setup_script setup-auth.sh

# API Route setup
read -p "Do you want to create an API route? (y/n) " create_route
if [[ $create_route =~ ^[Yy]$ ]]; then
    read -p "Enter the route name: " route_name
    run_setup_script create-api-route.sh "$route_name"
fi

# Noloco-like functionality setup
read -p "Do you want to set up Noloco-like functionalities? (y/n) " setup_noloco
if [[ $setup_noloco =~ ^[Yy]$ ]]; then
    echo "Noloco-like functionalities setup options:"
    echo "1. Full Setup"
    echo "2. API Generation Only"
    echo "3. UI Customization Only"
    echo "4. RBAC and Workflows Only"
    read -p "Choose an option (1-4): " noloco_option

    case $noloco_option in
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
        *)
            log_warn "Invalid option. Skipping Noloco-like functionality setup."
            ;;
    esac
fi

read -p "Do you want to set up component documentation? (y/n) " setup_component_docs
if [[ $setup_component_docs =~ ^[Yy]$ ]]; then
    run_setup_script setup-component-docs.sh
fi

log_info "Project $PROJECT_NAME setup completed successfully!"

# Remove the trap before exiting normally
trap - EXIT
