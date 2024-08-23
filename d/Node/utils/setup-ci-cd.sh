#!/bin/bash
# setup-ci-cd.sh
# Relative path: d/Node/utils/setup-ci-cd.sh
# Description: Sets up CI/CD workflow for the project

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

log_info "Setting up CI/CD for project: $PROJECT_NAME"

# Ensure project directory exists
if [ ! -d "$PROJECT_DIR" ]; then
    log_error "Project directory does not exist: $PROJECT_DIR"
    exit 1
fi

# Create .github/workflows directory
WORKFLOW_DIR="$PROJECT_DIR/.github/workflows"
ensure_directory "$WORKFLOW_DIR"

# Create or update ci.yml
CI_FILE="$WORKFLOW_DIR/ci.yml"
if [ -f "$CI_FILE" ]; then
    log_warn "CI workflow file already exists. It will be overwritten."
    backup_file "$CI_FILE"
fi

# Get the latest LTS versions of Node.js
LATEST_LTS=$(curl -s https://nodejs.org/dist/index.json | jq -r 'map(select(.lts != false)) | sort_by(.version | sub("^v";"") | split(".") | map(tonumber)) | reverse | .[0,1,2].version')

cat > "$CI_FILE" << EOF
name: CI/CD

on:
  push:
    branches: [ main, develop ]
  pull_request:
    branches: [ main, develop ]

jobs:
  test:
    runs-on: ubuntu-latest

    strategy:
      matrix:
        node-version: [$(echo "$LATEST_LTS" | tr '\n' ',' | sed 's/,$//' | sed 's/v//g')]

    steps:
    - uses: actions/checkout@v3
    - name: Use Node.js \${{ matrix.node-version }}
      uses: actions/setup-node@v3
      with:
        node-version: \${{ matrix.node-version }}
    - name: Cache node modules
      uses: actions/cache@v3
      env:
        cache-name: cache-node-modules
      with:
        path: ~/.npm
        key: \${{ runner.os }}-build-\${{ env.cache-name }}-\${{ hashFiles('**/package-lock.json') }}
        restore-keys: |
          \${{ runner.os }}-build-\${{ env.cache-name }}-
          \${{ runner.os }}-build-
          \${{ runner.os }}-
    - name: Install dependencies
      run: |
        cd server && npm ci
        cd ../client && npm ci
    - name: Run linter
      run: |
        cd server && npm run lint
        cd ../client && npm run lint
    - name: Run tests
      run: |
        cd server && npm test
        cd ../client && npm test
    - name: Upload coverage reports to Codecov
      uses: codecov/codecov-action@v3
      env:
        CODECOV_TOKEN: \${{ secrets.CODECOV_TOKEN }}

  build:
    needs: test
    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v3
    - name: Use Node.js
      uses: actions/setup-node@v3
      with:
        node-version: '14.x'
    - name: Build server
      run: |
        cd server
        npm ci
        npm run build
    - name: Build client
      run: |
        cd client
        npm ci
        npm run build

  deploy:
    needs: build
    runs-on: ubuntu-latest
    if: github.ref == 'refs/heads/main'

    steps:
    - uses: actions/checkout@v3
    - name: Deploy to production
      run: |
        # Add your deployment steps here
        echo "Deploying to production"
      env:
        # Add any necessary deployment environment variables
        DEPLOY_TOKEN: \${{ secrets.DEPLOY_TOKEN }}
EOF

log_info "GitHub Actions CI/CD workflow created for $PROJECT_NAME"

# Optionally, set up additional CI/CD tools
read -p "Do you want to set up additional CI/CD tools? (y/n): " setup_additional

if [[ $setup_additional == [yY] ]]; then
    # Example: Setting up Travis CI
    if command_exists travis; then
        log_info "Setting up Travis CI"
        travis init
    else
        log_warn "Travis CI CLI not found. Skipping Travis CI setup."
    fi

    # Example: Setting up CircleCI
    if [ ! -f "$PROJECT_DIR/.circleci/config.yml" ]; then
        ensure_directory "$PROJECT_DIR/.circleci"
        cat > "$PROJECT_DIR/.circleci/config.yml" << EOF
version: 2.1
orbs:
  node: circleci/node@5.0.2
jobs:
  build-and-test:
    docker:
      - image: cimg/node:lts
    steps:
      - checkout
      - node/install-packages:
          pkg-manager: npm
      - run:
          name: Run server tests
          command: cd server && npm test
      - run:
          name: Run client tests
          command: cd client && npm test
workflows:
  version: 2
  build-test-deploy:
    jobs:
      - build-and-test
EOF
        log_info "CircleCI configuration added"
    else
        log_warn "CircleCI configuration already exists. Skipping."
    fi
fi

log_info "CI/CD setup completed for $PROJECT_NAME"
