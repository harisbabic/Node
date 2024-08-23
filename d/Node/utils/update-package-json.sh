#!/bin/bash
# update-package-json.sh
# Relative path: d/Node/utils/update-package-json.sh
# Description: Updates package.json with additional scripts and dependencies

set -euo pipefail

# Source the common functions and logger
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/common-functions.sh"
source "$SCRIPT_DIR/logger.sh"

# Check if project name is provided
if [ $# -eq 0 ]; then
    log_error "Please provide a project name as an argument."
    echo "Usage: $0 <project-name>"
    exit 1
fi

PROJECT_NAME="$1"
PROJECT_DIR="$NODE_DIR/projects/$PROJECT_NAME"
SERVER_DIR="$PROJECT_DIR/server"
CLIENT_DIR="$PROJECT_DIR/client"

log_info "Updating package.json for project: $PROJECT_NAME"

# Function to update package.json
update_package_json() {
    local dir="$1"
    local prefix="$2"

    if [ ! -d "$dir" ]; then
        log_error "Directory does not exist: $dir"
        return 1
    fi

    cd "$dir" || exit 1

    if [ ! -f package.json ]; then
        log_error "package.json not found in $dir"
        return 1
    fi

    # Backup original package.json
    backup_file package.json

    log_info "Updating package.json in $dir"

    # Update scripts
    npm pkg set scripts.test="jest --verbose"
    npm pkg set scripts.test:watch="jest --watch --verbose"
    npm pkg set scripts.test:coverage="jest --coverage --verbose"
    npm pkg set scripts.lint="eslint . --max-warnings=0"
    npm pkg set scripts.format="prettier --write 'src/**/*.{js,ts,jsx,tsx}'"

    if [ "$prefix" = "server" ]; then
        npm pkg set scripts.start="ts-node src/index.ts"
        npm pkg set scripts.dev="nodemon --exec ts-node src/index.ts"
        npm pkg set scripts.build="tsc"
    elif [ "$prefix" = "client" ]; then
        npm pkg set scripts.start="react-scripts start"
        npm pkg set scripts.build="react-scripts build"
        npm pkg set scripts.eject="react-scripts eject"
    fi

    # Add or update devDependencies
    npm install --save-dev \
        jest \
        @types/jest \
        ts-jest \
        eslint \
        @typescript-eslint/parser \
        @typescript-eslint/eslint-plugin \
        prettier \
        eslint-config-prettier \
        eslint-plugin-prettier

    log_info "package.json updated successfully in $dir"

    # Display the changes
    if command_exists diff; then
        log_info "Changes made to package.json in $dir:"
        diff package.json.bak.* package.json || true
    else
        log_warn "diff command not found. Unable to show changes."
    fi
}

# Update server package.json
update_package_json "$SERVER_DIR" "server"

# Update client package.json if it exists
if [ -d "$CLIENT_DIR" ]; then
    update_package_json "$CLIENT_DIR" "client"
fi

log_info "package.json update completed for $PROJECT_NAME"
