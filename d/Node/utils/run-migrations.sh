#!/bin/bash
# run-migrations.sh


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

log "Setting up migrations for $project_name"

project_dir="/d/Node/projects/$project_name"
server_dir="$project_dir/server"

if [ -z "$project_name" ]; then
  echo "Usage: $0 <project-name>"
  exit 1
fi

# Ensure the server directory exists
if [ ! -d "$server_dir" ]; then
  error_exit "Server directory not found: $server_dir"
fi

# Change to the server directory
cd "$server_dir" || error_exit "Failed to change to server directory"

# Ensure PostgreSQL is running
pg_isready || error_exit "PostgreSQL is not running"

# Check if DATABASE_URL is set
if [ -z "${DATABASE_URL:-}" ]; then
  error_exit "DATABASE_URL is not set"
fi

PGPASSWORD="${db_pass}" psql -U postgres -d "${project_name}" -c "GRANT ALL ON SCHEMA public TO ${db_user};"

# Run migrations
log "Running database migrations..."

if ! psql "$DATABASE_URL" -v ON_ERROR_STOP=1 <<-EOSQL
  CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
  );
EOSQL
then
  error_exit "Failed to run migrations"
fi

# Add any additional migrations here

log "Database migrations completed successfully."
