#!/bin/bash
# setup-project.sh
# Relative path: d/Node/utils/setup-project.sh
# Description: Sets up the basic structure for a Node.js project

set -euo pipefail

# Source the common functions and logger
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/common-functions.sh"
source "$SCRIPT_DIR/logger.sh"

# Source the project configuration
source "$SCRIPT_DIR/project-config.sh"

# Check if project name is provided
if [ $# -eq 0 ]; then
    log_error "Please provide a project name as an argument."
    echo "Usage: $0 <project-name>"
    exit 1
fi

PROJECT_NAME="$1"
PROJECT_DIR="$NODE_DIR/projects/$PROJECT_NAME"

log_info "Setting up project: $PROJECT_NAME"

# Create necessary directories
ensure_directory "$PROJECT_DIR/server/src"
ensure_directory "$PROJECT_DIR/server/tests"

# Set up server
cd "$PROJECT_DIR/server" || exit 1

# Initialize package.json for server
if [ ! -f package.json ]; then
    npm init -y
else
    log_warn "package.json already exists. Skipping initialization."
fi

# Install base server dependencies
npm install express dotenv cors

# Install database dependencies based on DATABASE_TYPE
case $DATABASE_TYPE in
    "postgresql")
        npm install pg sequelize
        ;;
    "mysql")
        npm install mysql2 sequelize
        ;;
    "mongodb")
        npm install mongodb mongoose
        ;;
    *)
        log_error "Unsupported database type: $DATABASE_TYPE"
        exit 1
        ;;
esac

# Install authentication dependencies if SETUP_AUTH is true
if [ "$SETUP_AUTH" = true ]; then
    npm install express-session connect-pg-simple passport jsonwebtoken bcryptjs
fi

# Install TypeScript dependencies if USE_TYPESCRIPT is true
if [ "$USE_TYPESCRIPT" = true ]; then
    npm install --save-dev typescript ts-node @types/express @types/node nodemon
    if [ "$SETUP_AUTH" = true ]; then
        npm install --save-dev @types/express-session @types/passport @types/jsonwebtoken
    fi

    # Create tsconfig.json
    if [ ! -f tsconfig.json ]; then
        cat > tsconfig.json << EOL
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
  "exclude": ["node_modules"]
}
EOL
    else
        log_warn "tsconfig.json already exists. Skipping creation."
    fi
fi

# Create main application file (app.js or app.ts)
MAIN_FILE="src/app.$([ "$USE_TYPESCRIPT" = true ] && echo "ts" || echo "js")"
if [ ! -f "$MAIN_FILE" ]; then
    cat > "$MAIN_FILE" << EOL
$([ "$USE_TYPESCRIPT" = true ] && echo "import express from 'express';" || echo "const express = require('express');")
$([ "$USE_TYPESCRIPT" = true ] && echo "import cors from 'cors';" || echo "const cors = require('cors');")
$([ "$USE_TYPESCRIPT" = true ] && echo "import dotenv from 'dotenv';" || echo "const dotenv = require('dotenv');")

dotenv.config();

const app = express();

app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

$([ "$SETUP_AUTH" = true ] && echo "// TODO: Add authentication setup here")

$([ "$USE_TYPESCRIPT" = true ] && echo "export default app;" || echo "module.exports = app;")
EOL
else
    log_warn "$MAIN_FILE already exists. Skipping creation."
fi

# Create index file
INDEX_FILE="src/index.$([ "$USE_TYPESCRIPT" = true ] && echo "ts" || echo "js")"
if [ ! -f "$INDEX_FILE" ]; then
    cat > "$INDEX_FILE" << EOL
$([ "$USE_TYPESCRIPT" = true ] && echo "import app from './app';" || echo "const app = require('./app');")

const PORT = process.env.PORT || 3000;

app.listen(PORT, () => {
    console.log(\`Server running on port \${PORT}\`);
});
EOL
else
    log_warn "$INDEX_FILE already exists. Skipping creation."
fi

# Create basic error handling middleware
ensure_directory "src/middleware"
ERROR_HANDLING_FILE="src/middleware/errorHandling.$([ "$USE_TYPESCRIPT" = true ] && echo "ts" || echo "js")"
if [ ! -f "$ERROR_HANDLING_FILE" ]; then
    cat > "$ERROR_HANDLING_FILE" << EOL
$([ "$USE_TYPESCRIPT" = true ] && echo "import { Request, Response, NextFunction } from 'express';" || echo "")

$([ "$USE_TYPESCRIPT" = true ] && echo "export const errorHandler = (err: Error, req: Request, res: Response, next: NextFunction) => {" || echo "const errorHandler = (err, req, res, next) => {")
    console.error(err.stack);
    res.status(500).send('Something broke!');
};

$([ "$USE_TYPESCRIPT" = true ] && echo "" || echo "module.exports = { errorHandler };")
EOL
else
    log_warn "$ERROR_HANDLING_FILE already exists. Skipping creation."
fi

# Update package.json scripts
if [ "$USE_TYPESCRIPT" = true ]; then
    npm pkg set scripts.start="ts-node src/index.ts"
    npm pkg set scripts.dev="nodemon --exec ts-node src/index.ts"
    npm pkg set scripts.build="tsc"
else
    npm pkg set scripts.start="node src/index.js"
    npm pkg set scripts.dev="nodemon src/index.js"
fi
npm pkg set scripts.test="jest"

# Set up client if SETUP_CLIENT is true
if [ "$SETUP_CLIENT" = true ]; then
    log_info "Setting up client..."
    cd "$PROJECT_DIR" || exit 1
    if [ -d "client" ] && [ "$(ls -A client)" ]; then
        log_warn "Client directory is not empty. Skipping framework initialization."
    else
        case $FRONTEND_FRAMEWORK in
            "react")
                npx create-react-app client
                ;;
            "vue")
                npm init vue@latest client
                ;;
            "angular")
                npx -p @angular/cli ng new client
                ;;
            *)
                log_error "Unsupported frontend framework: $FRONTEND_FRAMEWORK"
                exit 1
                ;;
        esac
    fi
    cd client || exit 1
    npm install axios react-router-dom styled-components
            cat >> "$PROJECT_DIR/client/.gitignore" << EOL
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
EOL
    # After appending to .gitignore
    remove_redundant_lines "$PROJECT_DIR/client/.gitignore"
fi


log_info "Project $PROJECT_NAME set up successfully"
