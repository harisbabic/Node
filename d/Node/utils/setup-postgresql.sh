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
db_user="$2"
db_pass="$3"

if [ -z "$project_name" ] || [ -z "$db_user" ] || [ -z "$db_pass" ]; then
  error_exit "Usage: $0 <project-name> <db-user> <db-pass>"
fi

log "Setting up PostgreSQL for $project_name"

# Check if PostgreSQL is installed
log "Checking if PostgreSQL is installed..."
if ! command -v psql &> /dev/null; then
    error_exit "PostgreSQL is not installed. Please install it and try again."
fi

log "PostgreSQL is installed. Proceeding with setup..."

project_dir="/d/Node/projects/$project_name"
server_dir="$project_dir/server"
cd "$server_dir" || error_exit "Failed to change to server directory"

# Create database and user
log "Attempting to create database and user..."
PGPASSWORD="${db_pass}" psql -U postgres -h localhost << EOF
CREATE DATABASE ${project_name} WITH OWNER ${db_user};
DO
\$\$
BEGIN
  IF NOT EXISTS (SELECT FROM pg_catalog.pg_roles WHERE rolname = '${db_user}') THEN
    CREATE USER ${db_user} WITH ENCRYPTED PASSWORD '${db_pass}';
  END IF;
END
\$\$;
GRANT ALL PRIVILEGES ON DATABASE ${project_name} TO ${db_user};
\c ${project_name}
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
EOF

if [ $? -ne 0 ]; then
    error_exit "Failed to set up database and user"
fi
log "Database and user setup completed."

log "Database and user created successfully."

# Update .env file
log "Updating .env file..."
if [ -f .env ]; then
    sed -i '/^DATABASE_URL/d' .env
fi
echo "DATABASE_URL=postgres://${db_user}:${db_pass}@localhost:5432/${project_name}" >> .env

log ".env file updated."

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
