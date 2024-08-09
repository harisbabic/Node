#!/bin/bash
# setup-tests.sh
# Usage: ./setup-tests.sh <project-name>

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
tests_dir="$project_dir/server/tests"
client_tests_dir="$project_dir/client/src/__tests__"

log "Setting up testing framework for $project_name"

# Install testing dependencies
cd "$project_dir"
npm install --save-dev jest @testing-library/react @testing-library/jest-dom @testing-library/user-event supertest msw

# Create Jest config
cat << EOF > jest.config.js
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

# Create test directories
mkdir -p "$tests_dir/unit" "$tests_dir/integration" "$client_tests_dir"

# Generate sample unit test
cat << EOF > "$tests_dir/unit/sample.test.js"
describe('Sample Test', () => {
  it('should pass', () => {
    expect(true).toBe(true);
  });
});
EOF

# Generate sample integration test
cat << EOF > "$tests_dir/integration/api.test.js"
const request = require('supertest');
const app = require('../../src/app');

describe('API Tests', () => {
  it('should return 200 OK for GET /', async () => {
    const res = await request(app).get('/');
    expect(res.statusCode).toBe(200);
  });
});
EOF

# Create a test setup file for React Testing Library
cat << EOF > "$project_dir/client/src/setupTests.js"
import '@testing-library/jest-dom';
EOF

# Create a sample test for a React component
cat << EOF > "$client_tests_dir/App.test.js"
import React from 'react';
import { render, screen } from '@testing-library/react';
import App from '../App';

test('renders learn react link', () => {
  render(<App />);
  const linkElement = screen.getByText(/learn react/i);
  expect(linkElement).toBeInTheDocument();
});
EOF

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

# Update package.json with test scripts
npm pkg set scripts.test="jest"
npm pkg set scripts.test:watch="jest --watch"
npm pkg set scripts.test:coverage="jest --coverage"

log "Testing setup completed for $project_name"
