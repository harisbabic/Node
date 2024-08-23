#!/bin/bash
# set-configs.sh
# Relative path: d/Node/utils/set-configs.sh
# Description: Sets up configuration files for the project

set -euo pipefail

# Source the common functions and logger
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/common-functions.sh"
source "$SCRIPT_DIR/logger.sh"

# Check if project name is provided
if [ $# -eq 0 ]; then
    log_error "Please provide a project name as an argument."
    echo "Usage: $0 <project-name>"
    exit 1
fi

PROJECT_NAME="$1"
PROJECT_DIR="$NODE_DIR/projects/$PROJECT_NAME"
SERVER_DIR="$PROJECT_DIR/server"

log_info "Setting up configuration files for project: $PROJECT_NAME"

# Ensure server directory exists
ensure_directory "$SERVER_DIR"

# Change to server directory
cd "$SERVER_DIR" || exit 1

# Create or update package.json
if [ -f package.json ]; then
    log_info "Updating existing package.json"
    npm pkg set name="$PROJECT_NAME-server"
    npm pkg set version="1.0.0"
    npm pkg set description="Server for $PROJECT_NAME created with DemTech Master Script Project Setup."
    npm pkg set main="src/index.js"
    npm pkg set scripts.start="node src/index.js"
    npm pkg set scripts.dev="nodemon src/index.js"
    npm pkg set scripts.test="jest"
    npm pkg set scripts.test:watch="jest --watch"
    npm pkg set scripts.test:coverage="jest --coverage"
    npm pkg set scripts.lint="eslint ."
    npm pkg set scripts.build="tsc"
else
    log_info "Creating new package.json"
    npm init -y
    npm pkg set name="$PROJECT_NAME-server"
    npm pkg set description="Server for $PROJECT_NAME created with DemTech Master Script Project Setup."
    npm pkg set main="src/index.js"
    npm pkg set scripts.start="node src/index.js"
    npm pkg set scripts.dev="nodemon src/index.js"
    npm pkg set scripts.test="jest"
    npm pkg set scripts.test:watch="jest --watch"
    npm pkg set scripts.test:coverage="jest --coverage"
    npm pkg set scripts.lint="eslint ."
    npm pkg set scripts.build="tsc"
fi

# Install dependencies
log_info "Installing dependencies"
npm install express pg sequelize dotenv cors
npm install --save-dev jest supertest nodemon typescript @types/express @types/node @types/jest eslint

# Create jest.config.js if it doesn't exist
if [ ! -f jest.config.js ]; then
    log_info "Creating jest.config.js"
    cat > jest.config.js << EOF
module.exports = {
  preset: 'ts-jest',
  testEnvironment: 'node',
  testMatch: ['**/tests/**/*.ts', '**/?(*.)+(spec|test).ts'],
  collectCoverageFrom: ['src/**/*.ts'],
  coveragePathIgnorePatterns: ['/node_modules/', '/tests/'],
  coverageReporters: ['text', 'lcov'],
  setupFilesAfterEnv: ['./jest.setup.ts']
};
EOF
else
    log_warn "jest.config.js already exists. Skipping creation."
fi

# Create jest.setup.ts if it doesn't exist
if [ ! -f jest.setup.ts ]; then
    log_info "Creating jest.setup.ts"
    cat > jest.setup.ts << EOF
import dotenv from 'dotenv';

dotenv.config();

jest.setTimeout(30000);

expect.extend({
  toBeWithinRange(received: number, floor: number, ceiling: number) {
    const pass = received >= floor && received <= ceiling;
    if (pass) {
      return {
        message: () => \`expected \${received} not to be within range \${floor} - \${ceiling}\`,
        pass: true,
      };
    } else {
      return {
        message: () => \`expected \${received} to be within range \${floor} - \${ceiling}\`,
        pass: false,
      };
    }
  },
});

beforeAll(() => {
  console.log('Starting all tests...');
});

afterAll(() => {
  console.log('All tests completed.');
});

global.fetch = jest.fn();

global.createMockResponse = (data: any, status = 200) => {
  return {
    json: jest.fn().mockResolvedValue(data),
    status: jest.fn().mockReturnValue(status),
  };
};

global.wait = (ms: number) => new Promise(resolve => setTimeout(resolve, ms));

jest.useFakeTimers().setSystemTime(new Date('2024-08-05T12:00:00Z'));
EOF
else
    log_warn "jest.setup.ts already exists. Skipping creation."
fi

log_info "Configuration files created successfully for $PROJECT_NAME"
log_info "Jest configuration files created in $SERVER_DIR"
