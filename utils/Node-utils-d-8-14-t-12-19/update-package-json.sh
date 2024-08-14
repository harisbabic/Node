#!/bin/bash
# update-package-json.sh
# Usage: ./update-package-json.sh <project-name>

set -euo pipefail

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

project_name=$1
project_dir="/d/Node/projects/$project_name"

if [ -z "$project_name" ]; then
  echo "Usage: $0 [-v] <project-name>"
  exit 1
fi

cd "$project_dir"

# Update package.json
jq '.scripts += {
  "test": "jest --verbose",
  "test:watch": "jest --watch --verbose",
  "test:coverage": "jest --coverage --verbose",
  "start:debug": "node --inspect index.js",
  "lint": "eslint . --max-warnings=0",
  "build": "webpack --mode production --progress",
  "analyze": "webpack-bundle-analyzer stats.json"
}' "$project_dir/package.json" > temp.json && mv temp.json "$project_dir/package.json"

echo "package.json updated with detailed test and debug scripts"
