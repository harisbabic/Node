#!/bin/bash

root_dir="$1"

if [ -z "$root_dir" ]; then
  echo "Usage: initialize-workflow.sh <root_directory>"
  exit 1
fi

mkdir -p "$root_dir"/{projects,shared-utils,git,node/{client,root,tests/{client,common,server}}}

# Create shared utilities directory
mkdir -p "$root_dir/shared-utils/test-utils"

# Initialize shared utilities as an npm package
cd "$root_dir/shared-utils"
npm init -y

echo "Workflow initialized in $root_dir"
