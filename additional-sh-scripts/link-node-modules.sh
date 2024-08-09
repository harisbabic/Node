#!/bin/bash

# link-node-modules.sh
# Location: /d/Node/utils/link-node-modules.sh
# Usage: link-node-modules.sh <project-type> <project-name>
# Description: Links global node_modules to project-specific directories

# Validate input parameters
if [ $# -ne 2 ]; then
    echo "Usage: $0 <project-type> <project-name>"
    echo "project-type: 'root' or 'client'"
    echo "project-name: name of the project in /d/Node/projects/"
    exit 1
fi

project_type=$1
project_name=$2

# Define directory paths
root_dir="/d/Node"
project_dir="$root_dir/projects/$project_name"
global_modules_dir="$root_dir/node/$project_type/node_modules"
target_dir="$project_dir"

# Set target directory for client projects
if [ "$project_type" == "client" ]; then
    target_dir="$project_dir/client"
fi

# Ensure directories exist
mkdir -p "$project_dir"
mkdir -p "$global_modules_dir"

# Remove existing node_modules in the target directory
rm -rf "$target_dir/node_modules"

# Create symlink
ln -s "$global_modules_dir" "$target_dir/node_modules"

echo "Node modules linked successfully for $project_name ($project_type)"
