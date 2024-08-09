#!/bin/bash
# setup-postgresql.sh

set -euo pipefail

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

project_name="$1"
db_user="${project_name}_user"
db_pass="$2"

if [ -z "$project_name" ] || [ -z "$db_pass" ]; then
  error_exit "Usage: $0 <project-name> <db-pass>"
fi

log "Setting up PostgreSQL for $project_name"

# Check if PostgreSQL is installed
if ! command -v psql &> /dev/null; then
    error_exit "PostgreSQL is not installed. Please install it and try again."
fi

server_dir="$project_dir/server"
cd "$server_dir" || error_exit "Failed to change to server directory"

log "Creating database and user as admin..."
psql -U postgres <<EOF
CREATE DATABASE ${project_name};
CREATE USER ${db_user} WITH ENCRYPTED PASSWORD '${db_pass}';
GRANT ALL PRIVILEGES ON DATABASE ${project_name} TO ${db_user};
EOF

log "Creating server/.env..."
cat << EOF > "$server_dir/.env"
DATABASE_URL=postgres://${db_user}:${db_pass}@localhost:5432/${project_name}
PORT=3000
BASE_URL=http://localhost:3000  # Optional, for local development
EOF

log "PostgreSQL setup completed for $project_name"

# Install necessary packages
log "Installing necessary npm packages..."
npm install express pg sequelize dotenv || error_exit "Failed to install npm packages"

log "NPM packages installed."

# Create database connection utility
log "Creating database connection utility..."
mkdir -p "$server_dir/src/config"
cat << EOF > "$server_dir/src/config/database.js"
// src/config/database.js
const { Pool } = require('pg');
const { Sequelize } = require('sequelize');
require('dotenv').config();

const sequelize = new Sequelize(process.env.DATABASE_URL, {
  dialect: 'postgres',
  logging: false,
  pool: {
    max: 5,
    min: 0,
    acquire: 30000,
    idle: 10000
  }
});

const pool = new Pool({
  connectionString: process.env.DATABASE_URL,
});

const testConnection = async () => {
  try {
    await sequelize.authenticate();
    console.log('Sequelize connection has been established successfully.');

    const client = await pool.connect();
    console.log('PostgreSQL pool connection has been established successfully.');
    client.release();
  } catch (error) {
    console.error('Unable to connect to the database:', error);
  }
};

testConnection();

module.exports = {
  sequelize,
  Sequelize,
  query: (text, params) => pool.query(text, params),
};
EOF

log "Database connection utility created."

# Create a basic model
log "Creating basic User model..."
mkdir -p "$server_dir/src/models"
cat << EOF > "$server_dir/src/models/User.js"
// src/models/User.js

const { Sequelize, DataTypes } = require('sequelize');
const sequelize = require('../config/database');

const User = sequelize.define('User', {
  name: {
    type: DataTypes.STRING,
    allowNull: false
  },
  email: {
    type: DataTypes.STRING,
    allowNull: false,
    unique: true
  },
  password: {
    type: DataTypes.STRING,
    allowNull: false
  }
});

module.exports = User;
EOF

log "Basic User model created."

log "PostgreSQL setup completed for $project_name"
