#!/bin/bash
# enhance-error-handling.sh

set -euo pipefail

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

project_name=$1

if [ -z "$project_name" ]; then
  echo "Usage: $0 [-v] <project-name>"
  exit 1
fi

server_dir="/d/Node/projects/$project_name/server"
src_dir="$server_dir/src"

# Create a logger utility
mkdir -p "$src_dir/utils"

cat << EOF > "$src_dir/utils/logger.js"
import winston from 'winston';

const logger = winston.createLogger({
  level: 'info',
  format: winston.format.combine(
    winston.format.timestamp(),
    winston.format.errors({ stack: true }),
    winston.format.splat(),
    winston.format.json()
  ),
  defaultMeta: { service: 'user-service' },
  transports: [
    new winston.transports.File({ filename: 'error.log', level: 'error' }),
    new winston.transports.File({ filename: 'combined.log' })
  ]
});

if (process.env.NODE_ENV !== 'production') {
  logger.add(new winston.transports.Console({
    format: winston.format.simple()
  }));
}

export default logger;
EOF

# Update package.json to include winston
cd "$server_dir"
npm install winston

echo "Error handling and logging enhanced for $project_dir"
