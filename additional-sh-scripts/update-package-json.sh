#!/bin/bash
# update-package-json.sh
# Usage: ./update-package-json.sh <project-name>

project_name=$1
project_dir="/d/Node/projects/$project_name"

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
