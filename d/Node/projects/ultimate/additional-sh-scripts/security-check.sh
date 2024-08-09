#!/bin/bash
# security-check.sh
# Usage: ./security-check.sh <project-name>

project_name=$1
project_dir="/d/Node/projects/$project_name"

cd "$project_dir"

# Run npm audit
npm audit

# Update dependencies
npm update

# Run npm audit fix
npm audit fix

echo "Security check and updates completed for $project_name"
