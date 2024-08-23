#!/bin/bash
# common-functions.sh
# Relative path: d/Node/utils/common-functions.sh
# Description: Common utility functions for project setup scripts

set -euo pipefail

# Source the logger
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/logger.sh"


  log_info "$NODE_DIR"
