#!/bin/bash

project_dir="$1"

if [ -z "$project_dir" ]; then
  echo "Usage: git-push-origin-master.sh <project_dir>"
  exit 1
fi

cd "$project_dir"

# Create a backup
backup_dir="/d/Node/backups"
mkdir -p "$backup_dir"
tar -czf "$backup_dir/$(basename $project_dir)-$(date +%Y%m%d%H%M%S).tar.gz" .

# Commit changes
git add .
git commit -m "Backup and push on $(date)"

# Push to origin master
git push origin master

echo "Changes pushed to origin master for $(basename $project_dir)"
