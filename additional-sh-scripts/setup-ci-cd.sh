#!/bin/bash
# setup-ci-cd.sh
# Usage: ./setup-ci-cd.sh <project-name>

project_name=$1
project_dir="/d/Node/projects/$project_name"

# Create GitHub Actions workflow directory
mkdir -p "$project_dir/.github/workflows"

# Create CI/CD workflow file
cat << EOF > "$project_dir/.github/workflows/ci-cd.yml"
name: CI/CD

on:
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]

jobs:
  build:
    runs-on: ubuntu-latest

    strategy:
      matrix:
        node-version: [14.x, 16.x]

    steps:
    - uses: actions/checkout@v2
    - name: Use Node.js \${{ matrix.node-version }}
      uses: actions/setup-node@v2
      with:
        node-version: \${{ matrix.node-version }}
    - run: npm ci
    - run: npm run build --if-present
    - run: npm test

  deploy:
    needs: build
    runs-on: ubuntu-latest
    if: github.ref == 'refs/heads/main'

    steps:
    - uses: actions/checkout@v2
    - name: Deploy to Heroku
      uses: akhileshns/heroku-deploy@v3.12.12
      with:
        heroku_api_key: \${{ secrets.HEROKU_API_KEY }}
        heroku_app_name: "$project_name"
        heroku_email: "your-email@example.com"
EOF

echo "CI/CD
