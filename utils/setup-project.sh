#!/bin/bash
# setup-project.sh
# Relative path: d/Node/utils/setup-project.sh

set -e

# Source the common functions and logger
source "$(dirname "$0")/common-functions.sh"
source "$(dirname "$0")/logger.sh"

# Source the project configuration
source "$(dirname "$0")/project-config.sh"

# Check if project name is provided
if [ -z "$1" ]; then
    log_error "Please provide a project name as an argument."
    exit 1
fi

PROJECT_NAME="$1"
PROJECT_DIR="/d/Node/projects/$PROJECT_NAME"

log_info "Setting up project: $PROJECT_NAME"

# Create necessary directories
mkdir -p "$PROJECT_DIR/server/src" "$PROJECT_DIR/server/tests"

# Set up server
cd "$PROJECT_DIR/server"

# Initialize package.json for server
npm init -y

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
fi

# Create main application file (app.js or app.ts)
MAIN_FILE="src/app.$([ "$USE_TYPESCRIPT" = true ] && echo "ts" || echo "js")"
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

# Create index file
INDEX_FILE="src/index.$([ "$USE_TYPESCRIPT" = true ] && echo "ts" || echo "js")"
cat > "$INDEX_FILE" << EOL
$([ "$USE_TYPESCRIPT" = true ] && echo "import app from './app';" || echo "const app = require('./app');")

const PORT = process.env.PORT || 3000;

app.listen(PORT, () => {
    console.log(\`Server running on port \${PORT}\`);
});
EOL

# Create basic error handling middleware
mkdir -p "src/middleware"
ERROR_HANDLING_FILE="src/middleware/errorHandling.$([ "$USE_TYPESCRIPT" = true ] && echo "ts" || echo "js")"
cat > "$ERROR_HANDLING_FILE" << EOL
$([ "$USE_TYPESCRIPT" = true ] && echo "import { Request, Response, NextFunction } from 'express';" || echo "")

$([ "$USE_TYPESCRIPT" = true ] && echo "export const errorHandler = (err: Error, req: Request, res: Response, next: NextFunction) => {" || echo "const errorHandler = (err, req, res, next) => {")
    console.error(err.stack);
    res.status(500).send('Something broke!');
};

$([ "$USE_TYPESCRIPT" = true ] && echo "" || echo "module.exports = { errorHandler };")
EOL

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
    cd "$PROJECT_DIR"
    if [ -d "client" ] && [ "$(ls -A client)" ]; then
        log_warn "Client directory already exists and is not empty. Skipping client setup."
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
        cd client
        npm install axios react-router-dom styled-components
    fi
fi

# Create .gitignore
cat > "$PROJECT_DIR/.gitignore" << EOL
node_modules/
.env
*.log
dist/
build/
EOL

log_info "Project $PROJECT_NAME set up successfully"
