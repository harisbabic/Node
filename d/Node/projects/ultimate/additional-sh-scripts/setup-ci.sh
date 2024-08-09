#!/bin/bash
# setup-ci.sh
# Usage: ./setup-ci.sh <project-name>

project_name=$1
project_dir="/d/Node/projects/$project_name"

mkdir -p "$project_dir/.github/workflows"

cat << EOF > "$project_dir/.github/workflows/ci.yml"
name: CI

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
        node-version: [14.x, 16.x, 18.x]

    steps:
    - uses: actions/checkout@v3
    - name: Use Node.js \${{ matrix.node-version }}
      uses: actions/setup-node@v3
      with:
        node-version: \${{ matrix.node-version }}
    - run: npm ci
    - run: npm run build --if-present
    - run: npm test
    - run: npm run lint

  deploy:
    needs: build
    runs-on: ubuntu-latest
    if: github.ref == 'refs/heads/main'

    steps:
    - uses: actions/checkout@v3
    - name: Deploy to production
      run: |
        # Add your deployment steps here
        echo "Deploying to production"
EOF

log "GitHub Actions CI workflow created for $project_name"
