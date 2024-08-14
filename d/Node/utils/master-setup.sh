#!/bin/bash
# master-setup.sh

set -e

# Source the common functions
source "$(dirname "$0")/common-functions.sh"

# Check if project name is provided
if [ -z "$1" ]; then
    echo "Please provide a project name as an argument."
    exit 1
fi

PROJECT_NAME="$1"
PROJECT_DIR="../projects/$PROJECT_NAME"

# Database setup
../utils/setup-database.sh "$PROJECT_NAME"

# Create project directory
mkdir -p "$PROJECT_DIR"
cd "$PROJECT_DIR" || exit


log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

# Function to run setup script with error handling
run_setup_script() {
    local script=$1
    echo "Running $script..."
    if ../utils/$script "$PROJECT_NAME"; then
        echo "$script completed successfully."
    else
        echo "Error: $script failed."
        exit 1
    fi
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

cleanup() {
  log "Setup interrupted. Cleaning up..."
  # Add cleanup actions here
  # For example, you might want to remove partially created directories
  # rm -rf "$project_dir"
}

trap cleanup EXIT

# Create project directory
mkdir -p "$PROJECT_DIR"
cd "$PROJECT_DIR"

# Core setup
run_script setup-project.sh "$PROJECT_NAME"
run_script set-configs.sh "$PROJECT_DIR" "$PROJECT_NAME"
run_script update-package-json.sh "$PROJECT_NAME"
run_script setup-ci-cd.sh "$PROJECT_NAME"
run_script generate-tests.sh "$PROJECT_NAME"
run_script init-git.sh "$PROJECT_NAME"

# Client setup
run_script setup-sass.sh "$PROJECT_DIR"
run_script setup-styled-components.sh "$PROJECT_DIR"
run_script setup-redux.sh "$PROJECT_DIR"
run_script generate-config.sh "$PROJECT_DIR"
run_script generate-layout.sh "$PROJECT_DIR" dashboard
run_script setup-state-management.sh "$PROJECT_DIR" redux
run_script generate-api-service.sh "$PROJECT_DIR" api
run_script setup-responsive-design.sh "$PROJECT_DIR"
run_script setup-accessibility.sh "$PROJECT_DIR"
run_script setup-performance-optimization.sh "$PROJECT_DIR"

# Optional Client setups
read -p "Do you want to set up animations with Framer Motion? (y/n) " setup_animation
if [[ $setup_animation =~ ^[Yy]$ ]]; then
  run_script setup-animation.sh "$PROJECT_DIR" framer-motion
fi

read -p "Do you want to set up internationalization (i18n)? (y/n) " setup_i18n
if [[ $setup_i18n =~ ^[Yy]$ ]]; then
  run_script setup-i18n.sh "$PROJECT_DIR"
fi

read -p "Do you want to set up SEO? (y/n) " setup_seo
if [[ $setup_seo =~ ^[Yy]$ ]]; then
  run_script setup-seo.sh "$PROJECT_DIR"
fi

read -p "Do you want to set up as a Progressive Web App (PWA)? (y/n) " setup_pwa
if [[ $setup_pwa =~ ^[Yy]$ ]]; then
  run_script setup-pwa.sh "$PROJECT_DIR"
fi

# Server setup
echo "Setting up PostgreSQL..."

# Ensure DB_PASS is defined
if [ -z "${DB_PASS:-}" ]; then
  read -s -p "Enter PostgreSQL password for ${PROJECT_NAME}_user: " db_password
  export DB_PASS="$db_password"
  echo
else
  echo "Using existing PostgreSQL password from environment."
fi

# Generate the .env file before setting up PostgreSQL
log "Creating .env file with project-specific credentials..."
cat <<EOL > ./env.sh
#!/bin/bash

# Database credentials
export DB_NAME="${PROJECT_NAME}_db"
export DB_USER="${PROJECT_NAME}_user"
export DB_PASS="${DB_PASS}"
EOL

chmod +x ./env.sh

echo "Loading environment variables..."
source ./env.sh

echo "Setting up the database..."
run_script setup-database.sh

run_script setup-auth.sh "$PROJECT_NAME"
# run_script run-migrations.sh "$PROJECT_NAME" "${PROJECT_NAME}_user" "$db_password"
run_script enhance-error-handling.sh "$PROJECT_NAME"

# API Route setup
read -p "Do you want to create an API route? (y/n) " create_route
if [[ $create_route =~ ^[Yy]$ ]]; then
  read -p "Enter the route name: " route_name
  run_script create-api-route.sh "$PROJECT_NAME" "$route_name"
fi

# Noloco-like functionality setup with customization
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
      run_script setup-api-generation.sh "$PROJECT_DIR"
      run_script setup-rbac.sh "$PROJECT_DIR"
      run_script setup-workflows.sh "$PROJECT_DIR"
      run_script setup-dynamic-ui.sh "$PROJECT_DIR"
      run_script setup-file-management.sh "$PROJECT_DIR"
      run_script setup-email-templates.sh "$PROJECT_DIR"
      run_script setup-dashboard.sh "$PROJECT_DIR"
      run_script setup-noloco-theme.sh "$PROJECT_DIR" "both"
      run_script setup-data-modeling.sh "$PROJECT_DIR"
      ;;
    2)
      run_script setup-api-generation.sh "$PROJECT_DIR"
      ;;
    3)
      run_script setup-dynamic-ui.sh "$PROJECT_DIR"
      run_script setup-noloco-theme.sh "$PROJECT_DIR" "both"
      ;;
    4)
      run_script setup-rbac.sh "$PROJECT_DIR"
      run_script setup-workflows.sh "$PROJECT_DIR"
      ;;
    *)
      echo "Invalid option. Skipping Noloco-like functionality setup."
      ;;
  esac
fi

read -p "Do you want to set up component documentation? (y/n) " setup_component_docs
if [[ $setup_component_docs =~ ^[Yy]$ ]]; then
  run_script setup-component-docs.sh "$PROJECT_DIR"
fi

log "Project setup complete."
echo "Project $PROJECT_NAME setup completed successfully!"

# Remove the trap before exiting normally
trap - EXIT
