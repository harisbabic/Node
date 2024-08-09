#!/bin/bash
# generate-tests.sh

set -e

project_name=$1

if [ -z "$project_name" ]; then
    echo "Usage: $0 <project-name>"
    exit 1
fi

project_dir="/d/Node/projects/$project_name"
tests_dir="$project_dir/server/tests"

echo "Creating test/unit and test/integration directories..."
mkdir -p "$tests_dir/unit" "$tests_dir/integration"

# Generate a sample unit test
cat << EOF > "$tests_dir/unit/sample.test.js"
describe('Sample Test', () => {
  it('should pass', () => {
    expect(true).toBe(true);
  });
});
EOF

# Generate a sample integration test
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

echo "Sample tests generated in $tests_dir"
