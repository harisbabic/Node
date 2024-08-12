#!/bin/bash
# master-setup.sh

set -euo pipefail

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

project_name=$1
log "$project_name"

# Parse command line options
verbose=false
while getopts "v" opt; do
  case $opt in
    v) verbose=true ;;
    *) echo "Usage: $0 [-v] <project-name>"; exit 1 ;;
  esac
done
shift $((OPTIND-1))

if $verbose; then
  set -x
fi

if [ -z "$project_name" ]; then
  echo "Usage: $0 [-v] <project-name>"
  exit 1
fi

project_dir="/d/Node/projects/$project_name"
log "$project_dir"
utils_dir="/d/Node/utils"

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

run_script() {
  local script=$1
  shift
  log "Running $script..."
  if [ -f "$utils_dir/$script" ]; then
    if ! "$utils_dir/$script" "$@"; then
      error_exit "Script $script failed. Stopping setup."
    fi
  else
    log "Warning: $script not found. Skipping..."
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
mkdir -p "$project_dir"
cd "$project_dir"

# Core setup
run_script setup-project.sh "$project_name"
run_script set-configs.sh "$project_dir" "$project_name"
run_script update-package-json.sh "$project_name"
run_script setup-ci-cd.sh "$project_name"
run_script generate-tests.sh "$project_name"
run_script init-git.sh "$project_name"

# Client setup
run_script setup-sass.sh "$project_dir"
run_script setup-styled-components.sh "$project_dir"
run_script setup-redux.sh "$project_dir"
run_script generate-config.sh "$project_dir"
run_script generate-layout.sh "$project_dir" dashboard
run_script setup-state-management.sh "$project_dir" redux
run_script generate-api-service.sh "$project_dir" api
run_script setup-responsive-design.sh "$project_dir"
run_script setup-accessibility.sh "$project_dir"
run_script setup-performance-optimization.sh "$project_dir"

# Optional Client setups
read -p "Do you want to set up animations with Framer Motion? (y/n) " setup_animation
if [[ $setup_animation =~ ^[Yy]$ ]]; then
  run_script setup-animation.sh "$project_dir" framer-motion
fi

read -p "Do you want to set up internationalization (i18n)? (y/n) " setup_i18n
if [[ $setup_i18n =~ ^[Yy]$ ]]; then
  run_script setup-i18n.sh "$project_dir"
fi

read -p "Do you want to set up SEO? (y/n) " setup_seo
if [[ $setup_seo =~ ^[Yy]$ ]]; then
  run_script setup-seo.sh "$project_dir"
fi

read -p "Do you want to set up as a Progressive Web App (PWA)? (y/n) " setup_pwa
if [[ $setup_pwa =~ ^[Yy]$ ]]; then
  run_script setup-pwa.sh "$project_dir"
fi

# Server setup
echo "Setting up PostgreSQL..."

# Ensure DB_PASS is defined
if [ -z "${DB_PASS:-}" ]; then
  read -s -p "Enter PostgreSQL password for ${project_name}_user: " db_password
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
export DB_NAME="${project_name}_db"
export DB_USER="${project_name}_user"
export DB_PASS="${DB_PASS}"
EOL

chmod +x ./env.sh

echo "Loading environment variables..."
source ./env.sh

echo "Setting up the database..."
run_script setup-database.sh

run_script setup-auth.sh "$project_name"
# run_script run-migrations.sh "$project_name" "${project_name}_user" "$db_password"
run_script enhance-error-handling.sh "$project_name"

# API Route setup
read -p "Do you want to create an API route? (y/n) " create_route
if [[ $create_route =~ ^[Yy]$ ]]; then
  read -p "Enter the route name: " route_name
  run_script create-api-route.sh "$project_name" "$route_name"
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
      run_script setup-api-generation.sh "$project_dir"
      run_script setup-rbac.sh "$project_dir"
      run_script setup-workflows.sh "$project_dir"
      run_script setup-dynamic-ui.sh "$project_dir"
      run_script setup-file-management.sh "$project_dir"
      run_script setup-email-templates.sh "$project_dir"
      run_script setup-dashboard.sh "$project_dir"
      run_script setup-noloco-theme.sh "$project_dir" "both"
      run_script setup-data-modeling.sh "$project_dir"
      ;;
    2)
      run_script setup-api-generation.sh "$project_dir"
      ;;
    3)
      run_script setup-dynamic-ui.sh "$project_dir"
      run_script setup-noloco-theme.sh "$project_dir" "both"
      ;;
    4)
      run_script setup-rbac.sh "$project_dir"
      run_script setup-workflows.sh "$project_dir"
      ;;
    *)
      echo "Invalid option. Skipping Noloco-like functionality setup."
      ;;
  esac
fi

read -p "Do you want to set up component documentation? (y/n) " setup_component_docs
if [[ $setup_component_docs =~ ^[Yy]$ ]]; then
  run_script setup-component-docs.sh "$project_dir"
fi

log "Project setup complete."
echo "Project $project_name has been set up successfully!"

# Remove the trap before exiting normally
trap - EXIT
