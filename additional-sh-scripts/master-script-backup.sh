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
# mkdir -p "$project_dir"
# cd "$project_dir"

# Core setup
run_script setup-project.sh "$project_name"
run_script set-configs.sh "$project_dir" "$project_name"
run_script generate-tests.sh "$project_name"

# Frontend setup
run_script setup-sass.sh "$project_dir"
run_script setup-styled-components.sh "$project_dir"
run_script setup-redux.sh "$project_dir"
run_script generate-config.sh "$project_dir" webpack
run_script generate-config.sh "$project_dir" babel
run_script generate-config.sh "$project_dir" tsconfig
run_script generate-layout.sh "$project_dir" dashboard
run_script setup-state-management.sh "$project_dir" redux
run_script generate-api-service.sh "$project_dir" api
run_script setup-responsive-design.sh "$project_dir"
run_script setup-accessibility.sh "$project_dir"
run_script setup-performance-optimization.sh "$project_dir"

# Optional frontend setups
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

read -p "Do you want to set up component documentation? (y/n) " setup_component_docs
if [[ $setup_component_docs =~ ^[Yy]$ ]]; then
  run_script setup-component-docs.sh "$project_dir"
fi

# Backend setup
read -s -p "Enter PostgreSQL password for ${project_name}_user: " db_password
echo
run_script setup-postgresql.sh "$project_name" "${project_name}_user" "$db_password"

# Noloco-like functionality setup
read -p "Do you want to set up Noloco-like functionalities? (y/n) " setup_noloco
if [[ $setup_noloco =~ ^[Yy]$ ]]; then
  run_script setup-data-modeling.sh "$project_dir"
  run_script setup-api-generation.sh "$project_dir"
  run_script setup-rbac.sh "$project_dir"
  run_script setup-workflows.sh "$project_dir"
  run_script setup-dynamic-ui.sh "$project_dir"
  run_script setup-file-management.sh "$project_dir"
  run_script setup-email-templates.sh "$project_dir"
  run_script setup-dashboard.sh "$project_dir"
fi

log "Project setup complete."
echo "Project $project_name has been set up successfully!"

# Remove the trap before exiting normally
trap - EXIT
