#!/bin/bash
# setup-monorepo.sh
# Usage: ./setup-monorepo.sh <project-name>

project_name=$1
project_dir="/d/Node/projects/$project_name"
client_dir="$project_dir/client"
server_dir="$project_dir/server"

cd "$project_dir"

# Install Lerna
npm install --save-dev lerna

# Initialize Lerna
npx lerna init

# Create packages directory structure
mkdir -p packages/client packages/server packages/common

# Move existing frontend and backend code
mv "$client_dir" packages/client/src
mv "$server_dir" packages/server/src

# Create package.json for each package
echo '{"name": "@'$project_name'/client", "version": "1.0.0"}' > packages/client/package.json
echo '{"name": "@'$project_name'/server", "version": "1.0.0"}' > packages/server/package.json
echo '{"name": "@'$project_name'/common", "version": "1.0.0"}' > packages/common/package.json

# Update root package.json
npm pkg set private=true
npm pkg set workspaces='["packages/*"]'

echo "Monorepo structure set up for $project_name using Lerna"
