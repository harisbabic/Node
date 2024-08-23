#!/bin/bash
# init-git.sh
# Relative path: d/Node/utils/init-git.sh
# Description: Initializes a Git repository for the project

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

log_info "Initializing Git for project: $PROJECT_NAME"

# Ensure project directory exists
if [ ! -d "$PROJECT_DIR" ]; then
    log_error "Project directory does not exist: $PROJECT_DIR"
    exit 1
fi

# Change to project directory
cd "$PROJECT_DIR" || exit 1

# Check if Git is already initialized
if [ -d .git ]; then
    log_warn "Git repository already exists. Skipping initialization."
else
    # Initialize Git
    git init
    log_info "Git repository initialized."
fi

# Create .gitignore if it doesn't exist
if [ ! -f .gitignore ]; then
    cat << EOF > .gitignore
# Dependencies
node_modules/
/.pnp
.pnp.js

# Testing
/coverage

# Production
/build
/dist

# Misc
.DS_Store
.env
.env.local
.env.development.local
.env.test.local
.env.production.local

# Logs
npm-debug.log*
yarn-debug.log*
yarn-error.log*
logs
*.log

# IDE specific files
.idea/
.vscode/
*.swp
*.swo

# TypeScript
*.tsbuildinfo

# Optional npm cache directory
.npm

# Optional eslint cache
.eslintcache

# Yarn
.yarn-integrity
.yarn/cache
.yarn/unplugged
.yarn/build-state.yml
.yarn/install-state.gz

# dotenv environment variables file
.env
.env.test

# parcel-bundler cache
.cache
.parcel-cache

# Next.js build output
.next
out

# Nuxt.js build / generate output
.nuxt
dist

# Gatsby files
.cache/
# Comment in the public line in if your project uses Gatsby and not Next.js
# public

# VuePress build output
.vuepress/dist

# Serverless directories
.serverless/

# FuseBox cache
.fusebox/

# DynamoDB Local files
.dynamodb/

# TernJS port file
.tern-port

# Stores VSCode versions used for testing VSCode extensions
.vscode-test
EOF
    log_info ".gitignore file created."
else
    log_warn ".gitignore file already exists. Skipping creation."
fi

# Create initial README.md
if [ ! -f README.md ]; then
    cat << EOF > README.md
# $PROJECT_NAME

## Description
A brief description of your project.

## Installation
\`\`\`bash
npm install
\`\`\`

## Usage
\`\`\`bash
npm start
\`\`\`

## Testing
\`\`\`bash
npm test
\`\`\`

## Contributing
Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests.

## License
This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
EOF
    log_info "README.md file created."
else
    log_warn "README.md file already exists. Skipping creation."
fi

# Check if there are any files to commit
if git status --porcelain | grep -q '^'; then
    # Stage all files
    git add .

    # Commit
    git commit -m "Initial commit"
    log_info "Initial commit created."
else
    log_warn "No files to commit. Skipping initial commit."
fi

# Offer to create a remote repository
read -p "Do you want to create a remote repository on GitHub? (y/n): " create_remote
if [[ $create_remote == [yY] ]]; then
    if command_exists gh; then
        gh repo create "$PROJECT_NAME" --private --source=. --remote=origin
        git push -u origin main
        log_info "Remote repository created and code pushed."
    else
        log_warn "GitHub CLI (gh) not found. Please create a remote repository manually."
    fi
fi

log_info "Git initialization completed for $PROJECT_NAME"
