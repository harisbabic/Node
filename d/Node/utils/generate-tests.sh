#!/bin/bash
# generate-tests.sh
# Relative path: d/Node/utils/generate-tests.sh
# Description: Generates test files and configurations for the project

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
CLIENT_DIR="$PROJECT_DIR/client"
SERVER_TESTS_DIR="$SERVER_DIR/tests"
CLIENT_TESTS_DIR="$CLIENT_DIR/src/__tests__"

log_info "Setting up testing framework for $PROJECT_NAME"

# Ensure directories exist
ensure_directory "$SERVER_TESTS_DIR/unit"
ensure_directory "$SERVER_TESTS_DIR/integration"
ensure_directory "$CLIENT_TESTS_DIR"

# Install testing dependencies for server
cd "$SERVER_DIR" || exit 1
npm install --save-dev jest supertest @types/jest @types/supertest ts-jest

# Install testing dependencies for client
if [ -d "$CLIENT_DIR" ]; then
    cd "$CLIENT_DIR" || exit 1
    npm install --save-dev @testing-library/react @testing-library/jest-dom @testing-library/user-event msw
fi

# Create Jest config for server
cat > "$SERVER_DIR/jest.config.js" << EOF
module.exports = {
  preset: 'ts-jest',
  testEnvironment: 'node',
  roots: ['<rootDir>/src', '<rootDir>/tests'],
  testMatch: ['**/__tests__/**/*.ts?(x)', '**/?(*.)+(spec|test).ts?(x)'],
  moduleFileExtensions: ['ts', 'tsx', 'js', 'jsx', 'json', 'node'],
  coverageDirectory: './coverage',
  collectCoverageFrom: ['src/**/*.{ts,tsx}', '!src/**/*.d.ts'],
  coverageThreshold: {
    global: {
      branches: 80,
      functions: 80,
      lines: 80,
      statements: 80
    }
  }
};
EOF
log_info "jest.config.js generated in $SERVER_DIR"

# Create Jest config for client
if [ -d "$CLIENT_DIR" ]; then
    cat > "$CLIENT_DIR/jest.config.js" << EOF
module.exports = {
  preset: 'ts-jest',
  testEnvironment: 'jsdom',
  setupFilesAfterEnv: ['@testing-library/jest-dom/extend-expect'],
  moduleNameMapper: {
    '\\.(css|less|scss|sass)$': 'identity-obj-proxy',
    '^@/(.*)$': '<rootDir>/src/$1'
  },
  testPathIgnorePatterns: ['/node_modules/', '/build/'],
  coverageDirectory: './coverage',
  collectCoverageFrom: ['src/**/*.{ts,tsx}', '!src/**/*.d.ts'],
  coverageThreshold: {
    global: {
      branches: 80,
      functions: 80,
      lines: 80,
      statements: 80
    }
  }
};
EOF
    log_info "jest.config.js generated in $CLIENT_DIR"
fi

# Create a sample unit test for server
cat > "$SERVER_TESTS_DIR/unit/sample.test.ts" << EOF
describe('Sample Test', () => {
  it('should pass', () => {
    expect(true).toBe(true);
  });
});
EOF
log_info "sample.test.ts generated in $SERVER_TESTS_DIR/unit"

# Generate a sample integration test for server
cat > "$SERVER_TESTS_DIR/integration/api.test.ts" << EOF
import request from 'supertest';
import app from '../../src/app';

describe('API Tests', () => {
  it('should return 200 OK for GET /', async () => {
    const res = await request(app).get('/');
    expect(res.statusCode).toBe(200);
  });
});
EOF
log_info "api.test.ts generated in $SERVER_TESTS_DIR/integration"

# Create client-side tests if client directory exists
if [ -d "$CLIENT_DIR" ]; then
    # Create a test setup file for React Testing Library
    cat > "$CLIENT_DIR/src/setupTests.ts" << EOF
import '@testing-library/jest-dom';
EOF
    log_info "setupTests.ts generated in $CLIENT_DIR/src"

    # Create a sample test for a React component
    cat > "$CLIENT_TESTS_DIR/App.test.tsx" << EOF
import React from 'react';
import { render, screen } from '@testing-library/react';
import App from '../App';

test('renders learn react link', () => {
  render(<App />);
  const linkElement = screen.getByText(/learn react/i);
  expect(linkElement).toBeInTheDocument();
});
EOF
    log_info "App.test.tsx generated in $CLIENT_TESTS_DIR"

    # Create a sample API integration test for the client
    cat > "$CLIENT_TESTS_DIR/api.test.ts" << EOF
import { rest } from 'msw';
import { setupServer } from 'msw/node';
import { render, screen, waitFor } from '@testing-library/react';
import axios from 'axios';

const server = setupServer(
  rest.get('/api/projects', (req, res, ctx) => {
    return res(ctx.json([
      { id: '1', name: 'Project 1' },
      { id: '2', name: 'Project 2' },
    ]));
  })
);

beforeAll(() => server.listen());
afterEach(() => server.resetHandlers());
afterAll(() => server.close());

test('fetches projects successfully', async () => {
  const { data } = await axios.get('/api/projects');
  expect(data).toHaveLength(2);
  expect(data[0].name).toBe('Project 1');
});
EOF
    log_info "api.test.ts generated in $CLIENT_TESTS_DIR"
fi

# Update package.json with test scripts
cd "$SERVER_DIR" || exit 1
npm pkg set scripts.test="jest"
npm pkg set scripts.test:watch="jest --watch"
npm pkg set scripts.test:coverage="jest --coverage"

if [ -d "$CLIENT_DIR" ]; then
    cd "$CLIENT_DIR" || exit 1
    npm pkg set scripts.test="react-scripts test"
    npm pkg set scripts.test:coverage="react-scripts test --coverage --watchAll=false"
fi

log_info "Testing setup completed for $PROJECT_NAME"

# Offer to run tests
read -p "Do you want to run the server tests now? (y/n): " run_tests
if [[ $run_tests == [yY] ]]; then
    cd "$SERVER_DIR" || exit 1
    npm test
fi

if [ -d "$CLIENT_DIR" ]; then
    read -p "Do you want to run the client tests now? (y/n): " run_client_tests
    if [[ $run_client_tests == [yY] ]]; then
        cd "$CLIENT_DIR" || exit 1
        npm test
    fi
fi
