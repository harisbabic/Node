#!/bin/bash
# setup-project.sh

set -e

project_name=$1

if [ -z "$project_name" ]; then
  echo "Usage: $0 <project-name>"
  exit 1
fi

# Check for Node.js and npm
if ! command -v node > /dev/null 2>&1 || ! command -v npm > /dev/null 2>&1; then
    error_exit "Node.js and npm are required but not installed. Please install them and try again."
fi

project_dir="/d/Node/projects/$project_name"
client_dir="$project_dir/client"
server_dir="$project_dir/server"

log() {
  echo "$(date +"%Y-%m-%d %T") : $1"
}

error_exit() {
  echo "$(date +"%Y-%m-%d %T") : $1" 1>&2
  exit 1
}

log "Creating project directory..."
mkdir -p "$project_dir" || error_exit "Failed to create project directory"
cd "$project_dir" || error_exit "Failed to navigate to project directory"
touch .gitignore README.md || error_exit "Failed to create initial config files"
mkdir -p .github docs || error_exit "Failed to create project structure directories"

# Initialize project structure
log "Initializing project structure..."
mkdir -p "$server_dir/src/config" "$server_dir/src/controllers" "$server_dir/src/middleware" "$server_dir/src/models" "$server_dir/src/routes" "$server_dir/src/utils" "$server_dir/src/services" || error_exit "Failed to create server structure directories"
mkdir -p "$server_dir/tests" || error_exit "Failed to create tests directory"
cd "$server_dir" || error_exit "Failed to navigate to server directory"
touch "$server_dir/package.json" "$server_dir/src/app.js" "$server_dir/.env" "$server_dir/babel.config.js" "$server_dir/jest.config.js" "$server_dir/jest.setup.js" || error_exit "Failed to create initial server files"

cat << EOF > "$server_dir/package.json"
{
  "name": "${project_name}",
  "version": "1.0.0",
  "main": "index.js",
  "directories": {
    "doc": "docs"
  },
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "keywords": [],
  "author": "",
  "license": "ISC",
  "description": ""
}
EOF

log "Installing express pg sequelize cors dotenv dependencies..."
npm install express pg sequelize cors dotenv

log "Creating server/src/app.js..."
cat << EOF > "$server_dir/src/app.js"
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

# Creating a basic app.ts if it doesn't exist
if [ ! -f "$server_dir/src/app.ts" ]; then
  mkdir -p "$server_dir/src"
  cat << EOF > "$server_dir/src/app.ts"
import express from 'express';
const app = express();

app.use(express.json());

// Your routes will be added here later

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(\`Server is running on port \${PORT}\`);
});

export default app;
EOF
  echo "Created basic app.ts at $server_dir/src/"
fi

log "Updating package.json with new dependencies..."
cd "$server_dir"
npm install express-session connect-pg-simple passport
npm install --save-dev @types/express-session @types/passport
cd -

log "Creating error handling middleware..."
mkdir -p "$server_dir/src/middleware"

cat << EOF > "$server_dir/src/middleware/error-handling-middleware.js"
const errorHandler = (err, req, res, next) => {
    console.error(err.stack);
    res.status(500).send('Something broke!');
};

module.exports = errorHandler;
EOF

log "Creating basic passport configuration..."
mkdir -p "$server_dir/src/config"
cat << EOF > "$server_dir/src/config/passport.js"
module.exports = (passport) => {
    // Add passport strategies and serialization here
    // This is a placeholder and should be expanded based on your auth requirements
};
EOF

log "Creating server/src/routes/models.js..."
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
cat << EOF > "$server_dir/src/index.js"
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

log "Creating server/.env..."
cat << EOF > "$server_dir/.env"
DATABASE_URL=postgres://${project_name}_user:postgres@localhost:5432/${project_name}
PORT=3000
BASE_URL=http://localhost:3000  # Optional, for local development
EOF

log "Creating project .gitignore..."
cat << EOF > "$project_dir/.gitignore"
node_modules/
.env
*.log
build/
EOF

log "Updating server/src/index.js to use app.js..."
sed -i '1i\const app = require(\'./app');' "$server_dir/src/index.js"
sed -i '/const app = express();/d' "$server_dir/src/index.js"
sed -i '/app\.use(cors());/d' "$server_dir/src/index.js"
sed -i '/app\.use(express\.json());/d' "$server_dir/src/index.js"

log "Setting up client..."
npx create-react-app "$client_dir"
cd "$client_dir" || error_exit "Failed to navigate to client directory"
npm install axios react-router-dom styled-components

log "Project $project_name set up successfully"
