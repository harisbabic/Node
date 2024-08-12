#!/bin/bash
# init-git.sh
# Usage: ./init-git.sh <project-name>

project_name=$1
project_dir="/d/Node/projects/$project_name"

cd "$project_dir"

# Initialize Git
git init

# Create .gitignore
cat << EOF > .gitignore
# Dependencies
node_modules/
/.pnp
.pnp.js

# Testing
/coverage

# Production
/build

# Misc
.DS_Store
.env.local
.env.development.local
.env.test.local
.env.production.local

# Logs
npm-debug.log*
yarn-debug.log*
yarn-error.log*

# Environment variables
.env

# IDE specific files
.idea/
.vscode/
*.swp
*.swo

# Operating System Files
.DS_Store
.DS_Store?
._*
.Spotlight-V100
.Trashes
ehthumbs.db
Thumbs.db

# Optional npm cache directory
.npm

# Optional eslint cache
.eslintcache

# Optional REPL history
.node_repl_history

# Output of 'npm pack'
*.tgz

# Yarn Integrity file
.yarn-integrity

# dotenv environment variables file
.env
EOF

git add .
git commit -m "Initial commit"

echo "Git initialized with .gitignore for $project_name"
