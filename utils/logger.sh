#!/bin/bash
# logger.sh
# Relative path: d/Node/utils/logger.sh

# Set strict mode
set -euo pipefail

# Default log level
LOG_LEVEL=${LOG_LEVEL:-"INFO"}

# Log levels
declare -A LOG_LEVELS=( ["DEBUG"]=0 ["INFO"]=1 ["WARN"]=2 ["ERROR"]=3 ["FATAL"]=4 )

# Colors for console output
declare -A LOG_COLORS=(
    ["DEBUG"]="\033[0;34m"  # Blue
    ["INFO"]="\033[0;32m"   # Green
    ["WARN"]="\033[1;33m"   # Yellow
    ["ERROR"]="\033[0;31m"  # Red
    ["FATAL"]="\033[1;31m"  # Bold Red
)
NC="\033[0m"  # No Color

# Function to get current timestamp
get_timestamp() {
    date "+%Y-%m-%d %H:%M:%S"
}

# Function to set up log file
setup_log_file() {
    local project_name=$1
    LOG_DIR="/d/Node/logs"
    mkdir -p "$LOG_DIR"
    LOG_FILE="$LOG_DIR/${project_name}-setup.log"
    touch "$LOG_FILE"
}

# Function to log messages
log() {
    local level=$1
    local message=$2
    local timestamp=$(get_timestamp)

    # Check if the log level is sufficient
    if [[ ${LOG_LEVELS[$level]} -ge ${LOG_LEVELS[$LOG_LEVEL]} ]]; then
        # Log to console with color
        echo -e "${LOG_COLORS[$level]}[$timestamp] [$level] $message${NC}" >&2

        # Log to file without color if LOG_FILE is set
        if [[ -n "${LOG_FILE:-}" ]]; then
            echo "[$timestamp] [$level] $message" >> "$LOG_FILE"
        fi
    fi
}

# Specific logging functions
log_debug() { log "DEBUG" "$1"; }
log_info()  { log "INFO"  "$1"; }
log_warn()  { log "WARN"  "$1"; }
log_error() { log "ERROR" "$1"; }
log_fatal() { log "FATAL" "$1"; exit 1; }

# Function to set log level
set_log_level() {
    if [[ -n ${LOG_LEVELS[$1]+x} ]]; then
        LOG_LEVEL=$1
    else
        log_error "Invalid log level: $1. Using default: INFO"
        LOG_LEVEL="INFO"
    fi
}

# Main execution check
if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    echo "This script is meant to be sourced, not executed directly." >&2
    exit 1
fi

# Log script initialization
log_info "Logging initialized. Log level: $LOG_LEVEL"
