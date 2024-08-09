#!/bin/bash
# generate-project-report.sh
# Usage: ./generate-project-report.sh <project-name>

project_name=$1
project_dir="/d/Node/projects/$project_name"

echo "Project Report for $project_name" > project_report.md
echo "================================" >> project_report.md
echo "" >> project_report.md

# Directory Structure
echo "## Directory Structure" >> project_report.md
echo '```' >> project_report.md
tree "$project_dir" -L 3 -I 'node_modules' >> project_report.md
echo '```' >> project_report.md
echo "" >> project_report.md

# Package.json
echo "## package.json" >> project_report.md
echo '```json' >> project_report.md
cat "$project_dir/package.json" >> project_report.md
echo '```' >> project_report.md
echo "" >> project_report.md

# List of Scripts
echo "## Available Scripts" >> project_report.md
echo "The following scripts are available:" >> project_report.md
jq -r '.scripts | to_entries[] | "- `\(.key)`: \(.value)"' "$project_dir/package.json" >> project_report.md
echo "" >> project_report.md

# Dependencies
echo "## Dependencies" >> project_report.md
echo '```' >> project_report.md
npm list --depth=0 >> project_report.md
echo '```' >> project_report.md
echo "" >> project_report.md

# Git Status
echo "## Git Status" >> project_report.md
echo '```' >> project_report.md
git -C "$project_dir" status >> project_report.md
echo '```' >> project_report.md
echo "" >> project_report.md

# Last 5 Git Commits
echo "## Recent Git Commits" >> project_report.md
echo '```' >> project_report.md
git -C "$project_dir" log -n 5 --oneline >> project_report.md
echo '```' >> project_report.md

echo "Project report generated: project_report.md"
