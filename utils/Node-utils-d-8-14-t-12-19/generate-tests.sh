#!/bin/bash
# generate-tests.sh

set -euo pipefail

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

project_name="$1"

if [ -z "$project_name" ]; then
  error_exit "Usage: $0 <project-name>"
fi

project_dir="/d/Node/projects/$project_name"
server_tests_dir="$project_dir/server/tests"
client_tests_dir="$project_dir/client/tests"
client_dir="$project_dir/client"

log "Setting up testing framework for $project_name"

echo "Creating test/unit and test/integration directories..."
mkdir -p "$server_tests_dir/unit" "$server_tests_dir/integration" "$client_tests_dir"

# Install testing dependencies
cd "$client_dir"
npm install --save-dev jest @testing-library/react @testing-library/jest-dom @testing-library/user-event supertest msw

# Create Jest config
cat << EOF > "$client_dir/jest.config.js"
module.exports = {
  testEnvironment: 'jsdom',
  setupFilesAfterEnv: ['@testing-library/jest-dom/extend-expect'],
  moduleNameMapper: {
    '\\.(css|less|scss|sass)$': 'identity-obj-proxy',
  },
  testPathIgnorePatterns: ['/node_modules/', '/build/'],
  coverageDirectory: './coverage',
  collectCoverageFrom: ['src/**/*.{js,jsx}'],
};
EOF
log "jest.config.js generated in $client_dir"

# Create jest.setup.js for client-side testing
cat << EOF > "$client_dir/jest.setup.js"
// jest.setup.js for client-side testing

require('@testing-library/jest-dom/extend-expect');

jest.setTimeout(30000);

expect.extend({
  toHaveClass(received, className) {
    const pass = received.classList.contains(className);
    if (pass) {
      return {
        message: () => \`expected \${received} not to have class \${className}\`,
        pass: true,
      };
    } else {
      return {
        message: () => \`expected \${received} to have class \${className}\`,
        pass: false,
      };
    }
  },
});

beforeEach(() => {
  // Clean up the DOM after each test
  document.body.innerHTML = '';
});

afterEach(() => {
  // Any global cleanup if necessary
  console.log('Test completed.');
});

global.wait = (ms) => new Promise(resolve => setTimeout(resolve, ms));
EOF
log "jest.setup.js generated in $client_dir"

# Generate a sample unit test
cat << EOF > "$server_tests_dir/unit/sample.test.js"
describe('Sample Test', () => {
  it('should pass', () => {
    expect(true).toBe(true);
  });
});
EOF
log "sample.test.js generated in $server_tests_dir/unit"

# Generate a sample integration test
cat << EOF > "$server_tests_dir/integration/api.test.js"
const request = require('supertest');
const app = require('../../src/app');

describe('API Tests', () => {
  it('should return 200 OK for GET /', async () => {
    const res = await request(app).get('/');
    expect(res.statusCode).toBe(200);
  });
});
EOF
log "api.test.js generated in $server_tests_dir/integration"


# Create a test setup file for React Testing Library
cat << EOF > "$project_dir/client/src/setupTests.js"
import '@testing-library/jest-dom';
EOF
log "setupTests.js generated in $client_dir/src"

# Create a sample test for a React component
cat << EOF > "$client_tests_dir/App.test.js"
import React from 'react';
import { render, screen } from '@testing-library/react';
import App from '../src/App';

test('renders learn react link', () => {
  render(<App />);
  const linkElement = screen.getByText(/learn react/i);
  expect(linkElement).toBeInTheDocument();
});
EOF
log "App.test.js generated in $client_tests_dir"

# Create a sample API integration test for the client
cat << EOF > "$client_tests_dir/api.test.js"
import axios from 'axios';
import MockAdapter from 'axios-mock-adapter';

describe('API Integration Tests', () => {
  let mock;

  beforeEach(() => {
    mock = new MockAdapter(axios);
  });

  afterEach(() => {
    mock.restore();
  });

  it('fetches projects successfully', async () => {
    const mockProjects = [
      { _id: '1', name: 'Project 1' },
      { _id: '2', name: 'Project 2' },
    ];

    mock.onGet('/api/projects').reply(200, mockProjects);

    const response = await axios.get('/api/projects');
    expect(response.status).toBe(200);
    expect(response.data).toEqual(mockProjects);
  });
});
EOF
log "api.test.js generated in $client_tests_dir"

# Update package.json with test scripts
npm pkg set scripts.test="jest"
npm pkg set scripts.test:watch="jest --watch"
npm pkg set scripts.test:coverage="jest --coverage"

log "Testing setup completed for $project_name"
