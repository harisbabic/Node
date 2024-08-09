#!/bin/bash
# setup-state-management.sh

set -euo pipefail

project_dir="$1"
state_management="${2:-redux}"

if [ -z "$project_dir" ]; then
  echo "Usage: $0 <project-dir> [state-management]"
  echo "State management options: redux (default), mobx"
  exit 1
fi

client_dir="$project_dir/client"
cd "$client_dir" || exit 1

echo "Setting up $state_management for $client_dir"

case "$state_management" in
  redux)
    # Redux setup (as before)
    ;;
  mobx)
    # MobX setup (as before)
    ;;
  *)
    echo "Invalid state management type. Choose 'redux' or 'mobx'."
    exit 1
    ;;
esac

echo "$state_management setup completed for $client_dir"
