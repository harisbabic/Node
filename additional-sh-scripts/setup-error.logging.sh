#!/bin/bash
# setup-error-logging.sh
# Usage: ./setup-error-logging.sh <project-name>

project_name=$1
project_dir="/d/Node/projects/$project_name"

# Install winston for logging
npm install --save winston

# Create a logger utility
mkdir -p "$project_dir/src/utils"
cat << EOF > "$project_dir/src/utils/logger.js"
import winston from 'winston';

const logger = winston.createLogger({
  level: 'info',
  format: winston.format.combine(
    winston.format.timestamp(),
    winston.format.errors({ stack: true }),
    winston.format.splat(),
    winston.format.json()
  ),
  defaultMeta: { service: '$project_name' },
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

echo "Error logging set up for $project_name"
