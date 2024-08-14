#!/bin/bash
# setup-project.sh
# Relative path: d/Node/utils/setup-project.sh

set -e

# Source the common functions and logger
source "$(dirname "$0")/common-functions.sh"
source "$(dirname "$0")/logger.sh"

# Check if project name is provided
if [ -z "$1" ]; then
    log_error "Please provide a project name as an argument."
    exit 1
fi

PROJECT_NAME="$1"
PROJECT_DIR="../projects/$PROJECT_NAME"

# Create necessary directories
mkdir -p "$PROJECT_DIR/server/src" "$PROJECT_DIR/server/tests" "$PROJECT_DIR/client/src"

# Set up server
cd "$PROJECT_DIR/server"

# Initialize package.json for server
npm init -y

# Install server dependencies
npm install express pg sequelize dotenv cors express-session connect-pg-simple passport
npm install --save-dev typescript ts-node @types/express @types/node nodemon @types/express-session @types/passport jest supertest

# Create tsconfig.json for server
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

# Create app.ts
cat > "src/app.ts" << EOL
import express from 'express';
import cors from 'cors';
import dotenv from 'dotenv';

dotenv.config();

const app = express();

app.use(cors());
app.use(express.json());

export default app;
EOL

log "Creating server/src/app.js..."
cat << EOF > "$PROJECT_DIR/server/src/app.js"
const express = require('express');
const { Pool } = require('pg');
const session = require('express-session');
const pgSession = require('connect-pg-simple')(session);
const passport = require('passport');
const cors = require('cors');
const dotenv = require('dotenv');
const path = require('path');
const errorHandler = require('./middleware/error-handling-middleware');

dotenv.config();

const app = express();

// Middleware
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// PostgreSQL Pool
const pool = new Pool({
    connectionString: process.env.DATABASE_URL
});

// Session Management
app.use(session({
    store: new pgSession({
        pool: pool,
        tableName: 'session'
    }),
    secret: process.env.SESSION_SECRET || 'your_secret_key',
    resave: false,
    saveUninitialized: false,
    cookie: { secure: process.env.NODE_ENV === 'production' }
}));

// Passport middleware
app.use(passport.initialize());
app.use(passport.session());

// Passport Config
require('./config/passport')(passport);

// Routes
app.use('/api/models', require('./routes/models'));
// Add other routes as needed

// Serve static files from the React app in production
if (process.env.NODE_ENV === 'production') {
    app.use(express.static(path.join(__dirname, '../../client/build')));

    app.get('*', (req, res) => {
        res.sendFile(path.join(__dirname, '../../client/build', 'index.html'));
    });
}

// Error Handling Middleware
app.use(errorHandler);

module.exports = app;
EOF

log "Creating error handling middleware..."
mkdir -p "$PROJECT_DIR/server/src/middleware"

cat << EOF > "$PROJECT_DIR/server/src/middleware/error-handling-middleware.js"
const errorHandler = (err, req, res, next) => {
    console.error(err.stack);
    res.status(500).send('Something broke!');
};

module.exports = errorHandler;
EOF

log "Creating basic passport configuration..."
mkdir -p "$PROJECT_DIR/server/src/config"
cat << EOF > "$PROJECT_DIR/server/src/config/passport.js"
module.exports = (passport) => {
    // Add passport strategies and serialization here
    // This is a placeholder and should be expanded based on your auth requirements
};
EOF

log "Creating server/src/routes/models.js..."
mkdir -p "$PROJECT_DIR/server/src/routes"
cat << EOF > src/routes/models.js
const express = require('express');
const router = express.Router();
const DataModelingService = require('../services/dataModelingService');

router.post('/models', async (req, res, next) => {
  try {
    const { name, fields } = req.body;
    await DataModelingService.saveModel({ name, fields });
    res.status(201).json({ message: 'Model saved successfully' });
  } catch (error) {
    next(error);
  }
});

router.get('/models', async (req, res, next) => {
  try {
    const models = await DataModelingService.getModels();
    res.json(models);
  } catch (error) {
    next(error);
  }
});

module.exports = router;
EOF

log "Creating server/src/index.js..."
cat << EOF > "$PROJECT_DIR/server/src/index.js"
const express = require('express');
const cors = require('cors');
require('dotenv').config();
const { sequelize } = require('./utils/db');
const modelRoutes = require('./routes/models');
const dynamicApiRoutes = require('./routes/dynamicApiRoutes');

const app = express();
const PORT = process.env.PORT || 3000;

// Middleware
app.use(cors());
app.use(express.json());

// Routes
app.use('/api/models', modelRoutes);
app.use('/api', dynamicApiRoutes);

app.get('/', (req, res) => {
  res.json({ message: 'Welcome to the API' });
});

// Error handling middleware
app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).send('Something broke!');
});

// Database connection and server start
const startServer = async () => {
  try {
    await sequelize.authenticate();
    console.log('Database connection has been established successfully.');

    app.listen(PORT, () => console.log(`Server running on port ${PORT}`));
  } catch (error) {
    console.error('Unable to connect to the database:', error);
  }
};

startServer();
EOF

log "Creating project .gitignore..."
cat << EOF > "$PROJECT_DIR/.gitignore"
node_modules/
.env
*.log
build/
EOF

log "Updating server/src/index.js to use app.js..."
sed -i '1i\const app = require(\'./app');' "$PROJECT_DIR/server/src/index.js"
sed -i '/const app = express();/d' "$PROJECT_DIR/server/src/index.js"
sed -i '/app\.use(cors());/d' "$PROJECT_DIR/server/src/index.js"
sed -i '/app\.use(express\.json());/d' "$PROJECT_DIR/server/src/index.js"

log "Setting up client..."
npx create-react-app "$PROJECT_DIR/client"
cd "$PROJECT_DIR/client" || error_exit "Failed to navigate to client directory"
npm install axios react-router-dom styled-components

log "Project $PROJECT_NAME set up successfully"
