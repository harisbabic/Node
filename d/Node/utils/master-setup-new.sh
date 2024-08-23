#!/bin/bash
# master-setup.sh
# Description: Master script for setting up a new project

set -euo pipefail

# Source the common functions and logger
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/common-functions.sh"
source "$SCRIPT_DIR/logger.sh"

# Function to create a standardized .gitignore file
create_gitignore() {
    local dir="$1"
    local type="$2"

    cat > "$dir/.gitignore" << EOF
# Common
node_modules/
*.log
.DS_Store

# Environment variables
.env
.env.local
.env.*.local

# Editor directories and files
.idea
.vscode
*.suo
*.ntvs*
*.njsproj
*.sln
*.sw?

# Testing
/coverage

EOF

    if [ "$type" = "client" ]; then
        cat >> "$dir/.gitignore" << EOF
# Client-specific
/build
/dist

# Dependency directories
/.pnp
.pnp.js

# Optional eslint cache
.eslintcache

# Optional REPL history
.node_repl_history

# Output of 'npm pack'
*.tgz

# Yarn Integrity file
.yarn-integrity
EOF
    elif [ "$type" = "server" ]; then
        cat >> "$dir/.gitignore" << EOF
# Server-specific
/dist
/build

# Logs
logs
*.log
npm-debug.log*
yarn-debug.log*
yarn-error.log*

# TypeScript cache
*.tsbuildinfo

# Optional npm cache directory
.npm
EOF
    fi

    log_info "Created .gitignore file in $dir"
}

# Function to create basic package.json
create_package_json() {
    local dir="$1"
    local type="$2"
    local name="$3"

    if [ "$type" = "client" ]; then
        cat > "$dir/package.json" << EOF
{
  "name": "${name}-client",
  "version": "0.1.0",
  "private": true,
  "dependencies": {
    "react": "^17.0.2",
    "react-dom": "^17.0.2",
    "react-scripts": "4.0.3"
  },
  "scripts": {
    "start": "react-scripts start",
    "build": "react-scripts build",
    "test": "react-scripts test",
    "eject": "react-scripts eject"
  },
  "eslintConfig": {
    "extends": [
      "react-app",
      "react-app/jest"
    ]
  },
  "browserslist": {
    "production": [
      ">0.2%",
      "not dead",
      "not op_mini all"
    ],
    "development": [
      "last 1 chrome version",
      "last 1 firefox version",
      "last 1 safari version"
    ]
  }
}
EOF
    elif [ "$type" = "server" ]; then
        cat > "$dir/package.json" << EOF
{
  "name": "${name}-server",
  "version": "1.0.0",
  "description": "",
  "main": "index.js",
  "scripts": {
    "start": "node dist/index.js",
    "dev": "nodemon src/index.ts",
    "build": "tsc",
    "test": "jest"
  },
  "keywords": [],
  "author": "",
  "license": "ISC",
  "dependencies": {
    "express": "^4.17.1",
    "dotenv": "^10.0.0"
  },
  "devDependencies": {
    "@types/express": "^4.17.13",
    "@types/node": "^16.0.0",
    "typescript": "^4.3.5",
    "nodemon": "^2.0.12",
    "ts-node": "^10.0.0",
    "jest": "^27.0.6",
    "@types/jest": "^26.0.24"
  }
}
EOF
    fi

    log_info "Created package.json in $dir"
}

# Function to create placeholder files
create_placeholder_files() {
    local server_dir="$1"
    local use_typescript="$2"

    local ext="js"
    [ "$use_typescript" = true ] && ext="ts"

    # Create app file
    cat > "$server_dir/src/app.$ext" << EOF
import express from 'express';
import dotenv from 'dotenv';

dotenv.config();

const app = express();

app.use(express.json());

app.get('/', (req, res) => {
  res.send('Hello World!');
});

export default app;
EOF

    # Create index file
    cat > "$server_dir/src/index.$ext" << EOF
import app from './app';

const port = process.env.PORT || 3000;

app.listen(port, () => {
  console.log(\`Server running on port \${port}\`);
});
EOF

    # Create error handling middleware
    mkdir -p "$server_dir/src/middleware"
    cat > "$server_dir/src/middleware/errorHandling.$ext" << EOF
import { Request, Response, NextFunction } from 'express';

export const errorHandler = (err: Error, req: Request, res: Response, next: NextFunction) => {
  console.error(err.stack);
  res.status(500).send('Something broke!');
};
EOF

    log_info "Created placeholder files in $server_dir/src"
}

# Check if project name is provided
if [ $# -eq 0 ]; then
    log_error "Please provide a project name as an argument."
    echo "Usage: $0 <project-name>"
    exit 1
fi

PROJECT_NAME="$1"

# Allow user to specify a custom base directory
read -p "Enter base directory for the project (default: /d/Node/projects): " BASE_DIR
BASE_DIR=${BASE_DIR:-"/d/Node/projects"}

PROJECT_DIR="$BASE_DIR/$PROJECT_NAME"

log_info "Setting up project: $PROJECT_NAME in $PROJECT_DIR"

# Check if project directory already exists
if [ -d "$PROJECT_DIR" ]; then
    log_warn "Project directory already exists. Existing files may be overwritten."
    read -p "Do you want to continue? (y/n): " confirm
    if [[ $confirm != [yY] ]]; then
        log_info "Setup aborted."
        exit 0
    fi
fi

# Create project directory structure
mkdir -p "$PROJECT_DIR"/{client/{public,src},server/{src/{middleware},tests/{integration,unit}}}

# Set appropriate permissions
chmod 755 "$PROJECT_DIR"
find "$PROJECT_DIR" -type d -exec chmod 755 {} \;

# Create .gitignore files
create_gitignore "$PROJECT_DIR/client" "client"
create_gitignore "$PROJECT_DIR/server" "server"

# Create package.json files
create_package_json "$PROJECT_DIR/client" "client" "$PROJECT_NAME"
create_package_json "$PROJECT_DIR/server" "server" "$PROJECT_NAME"

# Ask user to choose between JavaScript and TypeScript for server
read -p "Do you want to use TypeScript for the server? (y/n): " use_typescript
use_typescript=$([ "$use_typescript" = "y" ] && echo true || echo false)

# Create placeholder files
create_placeholder_files "$PROJECT_DIR/server" "$use_typescript"

# Create tsconfig.json if using TypeScript
if [ "$use_typescript" = true ]; then
    cat > "$PROJECT_DIR/server/tsconfig.json" << EOF
{
  "compilerOptions": {
    "target": "es6",
    "module": "commonjs",
    "outDir": "./dist",
    "rootDir": "./src",
    "strict": true,
    "esModuleInterop": true
  },
  "include": ["src/**/*"],
  "exclude": ["node_modules", "**/*.test.ts"]
}
EOF
    log_info "Created tsconfig.json in $PROJECT_DIR/server"
fi

# Create sample test files
cat > "$PROJECT_DIR/server/tests/unit/sample.test.js" << EOF
describe('Sample Test', () => {
  it('should pass', () => {
    expect(true).toBe(true);
  });
});
EOF

cat > "$PROJECT_DIR/server/tests/integration/api.test.js" << EOF
const request = require('supertest');
const app = require('../../src/app');

describe('API Tests', () => {
  it('should return 200 OK for GET /', async () => {
    const res = await request(app).get('/');
    expect(res.statusCode).toBe(200);
  });
});
EOF

log_info "Created sample test files in $PROJECT_DIR/server/tests"

# Create basic client files
cat > "$PROJECT_DIR/client/public/index.html" << EOF
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>$PROJECT_NAME</title>
</head>
<body>
    <noscript>You need to enable JavaScript to run this app.</noscript>
    <div id="root"></div>
</body>
</html>
EOF

cat > "$PROJECT_DIR/client/public/manifest.json" << EOF
{
  "short_name": "$PROJECT_NAME",
  "name": "$PROJECT_NAME",
  "start_url": ".",
  "display": "standalone",
  "theme_color": "#000000",
  "background_color": "#ffffff"
}
EOF

cat > "$PROJECT_DIR/client/public/robots.txt" << EOF
# https://www.robotstxt.org/robotstxt.html
User-agent: *
Disallow:
EOF

log_info "Created basic client files in $PROJECT_DIR/client/public"

log_info "Project directory structure set up successfully for $PROJECT_NAME"
