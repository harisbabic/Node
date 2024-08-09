#!/bin/bash
# setup-database.sh
# Usage: ./setup-database.sh <project-name> <db-user> <db-pass>

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
if ! command -v psql &> /dev/null; then
    error_exit "PostgreSQL is not installed. Please install it and try again."
fi

project_dir="/d/Node/projects/$project_name"

# Create project directory if it doesn't exist
mkdir -p "$project_dir"
cd "$project_dir" || error_exit "Failed to change to project directory"

# Create database and user
psql -U postgres << EOF || error_exit "Failed to create database and user"
CREATE DATABASE ${project_name};
CREATE USER ${db_user} WITH ENCRYPTED PASSWORD '${db_pass}';
GRANT ALL PRIVILEGES ON DATABASE ${project_name} TO ${db_user};
\c ${project_name}
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
EOF

# Update .env file
if [ -f .env ]; then
    sed -i '/^DATABASE_URL/d' .env
fi
echo "DATABASE_URL=postgres://${db_user}:${db_pass}@localhost:5432/${project_name}" >> .env

# Install necessary packages
npm install express pg sequelize dotenv || error_exit "Failed to install npm packages"

# Create database connection utility
mkdir -p src/utils
cat << EOF > src/utils/db.js
// src/utils/db.js
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

# Create a basic model
mkdir -p src/models
cat << EOF > src/models/User.js
// src/models/User.js
const { DataTypes } = require('sequelize');
const { sequelize } = require('../utils/db');

const User = sequelize.define('User', {
  id: {
    type: DataTypes.UUID,
    defaultValue: DataTypes.UUIDV4,
    primaryKey: true
  },
  name: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  email: {
    type: DataTypes.STRING,
    allowNull: false,
    unique: true,
  },
  password: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  createdAt: {
    type: DataTypes.DATE,
    defaultValue: DataTypes.NOW,
  },
}, {
  timestamps: false,
  tableName: 'users'
});

module.exports = User;
EOF

log "PostgreSQL setup completed for $project_name"
