#!/bin/bash
# continue-master-setup.sh

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
utils_dir="/d/Node/utils"

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

# Client setup
run_script setup-redux.sh "$project_dir"
# Server setup
read -s -p "Enter PostgreSQL password for ${project_name}_user: " db_password
echo
run_script setup-postgresql.sh "$project_name" "${project_name}_user" "$db_password"
run_script setup-auth.sh "$project_name"
run_script run-migrations.sh "$project_name" "${project_name}_user" "$db_password"
run_script enhance-error-handling.sh "$project_name"

# API Route setup
read -p "Do you want to create an API route? (y/n) " create_route
if [[ $create_route =~ ^[Yy]$ ]]; then
  read -p "Enter the route name: " route_name
  run_script create-api-route.sh "$project_name" "$route_name"
fi

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
  run_script setup-noloco-theme.sh "$project_dir" "both"
fi

log "Project setup complete."
echo "Project $project_name has been set up successfully!"

# Remove the trap before exiting normally
trap - EXIT
