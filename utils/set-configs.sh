#!/bin/bash
# set-configs.sh

set -e

project_dir="$1"
project_name="$2"

if [ -z "$project_dir" ] || [ -z "$project_name" ]; then
    echo "Usage: $0 <project-dir> <project-name>"
    exit 1
fi

server_dir="$project_dir/server"
cd "$server_dir" || exit 1

# Create package.json
cat << EOF > ./package.json
{
  "name": "$project_name",
  "version": "1.0.0",
  "description": "Project created with DemTech Master Script Project Setup.",
  "main": "src/index.js",
  "scripts": {
    "start": "node src/index.js",
    "dev": "nodemon src/index.js",
    "test": "jest",
    "test:watch": "jest --watch",
    "test:coverage": "jest --coverage"
  },
  "author": "",
  "license": "ISC",
  "dependencies": {
    "express": "^4.17.1",
    "pg": "^8.7.1",
    "sequelize": "^6.6.5",
    "dotenv": "^10.0.0",
    "cors": "^2.8.5"
  },
  "devDependencies": {
    "jest": "^27.0.0",
    "supertest": "^6.1.3",
    "nodemon": "^2.0.12"
  }
}
EOF

# Create jest.config.js
cat << EOF > ./jest.config.js
module.exports = {
  testEnvironment: 'node',
  testMatch: ['**/tests/**/*.js', '**/?(*.)+(spec|test).js'],
  collectCoverageFrom: ['src/**/*.js'],
  coveragePathIgnorePatterns: ['/node_modules/', '/tests/'],
  coverageReporters: ['text', 'lcov'],
  setupFilesAfterEnv: ['./jest.setup.js']
};
EOF

# Create jest.setup.js
cat << EOF > ./jest.setup.js
// jest.setup.js

require('dotenv').config();

jest.setTimeout(30000);

expect.extend({
  toBeWithinRange(received, floor, ceiling) {
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

if (typeof fetch === 'undefined') {
  global.fetch = require('node-fetch');
}

global.createMockResponse = (data, status = 200) => {
  return new Response(JSON.stringify(data), {
    status,
    headers: { 'Content-Type': 'application/json' },
  });
};

global.wait = (ms) => new Promise(resolve => setTimeout(resolve, ms));

const mockDate = new Date('2024-08-05T12:00:00Z');
global.Date = class extends Date {
  constructor() {
    return mockDate;
  }
};
EOF

echo "Configuration files created successfully for $project_name"
echo "Jest configuration files created in $server_dir"
