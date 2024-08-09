#!/bin/bash

project_name="$1"

if [ -z "$project_name" ]; then
  echo "Usage: set-project-aliases.sh <project_name>"
  exit 1
fi

echo "# Aliases for $project_name" >> ~/.bashrc
echo "alias cd$project_name='cd /d/Node/projects/$project_name'" >> ~/.bashrc
echo "alias run$project_name='npm run --prefix /d/Node/projects/$project_name'" >> ~/.bashrc

source ~/.bashrc

echo "Aliases set for $project_name"
