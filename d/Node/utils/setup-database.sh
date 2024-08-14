#!/bin/bash

# setup-database.sh
# This script sets up the PostgreSQL database for the Node project on Windows.

set -e

# Source the common functions and logger
source "$(dirname "$0")/common-functions.sh"
source "$(dirname "$0")/logger.sh"

# Load configuration
if [[ -f .env ]]; then
    source .env
fi

# Configuration with defaults
DB_HOST=${DB_HOST:-"localhost"}
DB_PORT=${DB_PORT:-5432}
POSTGRES_ADMIN_USER=${POSTGRES_ADMIN_USER:-"postgres"}

# Check if project name is provided
if [ -z "$1" ]; then
    log_error "Please provide a project name as an argument."
    exit 1
fi

PROJECT_NAME="$1"
DB_NAME="${PROJECT_NAME//-/_}_db"
DB_USER="${PROJECT_NAME//-/_}_user"

# Function to check if PostgreSQL is installed
check_postgres_installation() {
    if ! command -v psql &> /dev/null; then
        log_error "PostgreSQL is not installed or not in PATH. Please install PostgreSQL and add it to your PATH."
        exit 1
    else
        log_info "PostgreSQL is installed."
    fi
}

# Function to check if database exists
database_exists() {
    PGPASSWORD=$POSTGRES_ADMIN_PASSWORD psql -U $POSTGRES_ADMIN_USER -h $DB_HOST -p $DB_PORT -lqt | cut -d \| -f 1 | grep -qw "$1"
}

# Function to create database and user
create_database_and_user() {
    # Generate a random password for the new database user
    DB_PASSWORD=$(openssl rand -base64 32)

    # Create database and user
    PGPASSWORD=$POSTGRES_ADMIN_PASSWORD psql -U $POSTGRES_ADMIN_USER -h $DB_HOST -p $DB_PORT << EOF
CREATE DATABASE $DB_NAME;
CREATE USER $DB_USER WITH ENCRYPTED PASSWORD '$DB_PASSWORD';
GRANT ALL PRIVILEGES ON DATABASE $DB_NAME TO $DB_USER;
EOF

    if [ $? -eq 0 ]; then
        log_info "Database $DB_NAME and user $DB_USER created successfully."
    else
        log_error "Failed to create database and user. Please check your PostgreSQL installation and permissions."
        exit 1
    fi
}

# Function to update .env file
update_env_file() {
    if [[ -f .env ]]; then
        sed -i "s/DB_NAME=.*/DB_NAME=$DB_NAME/" .env
        sed -i "s/DB_USER=.*/DB_USER=$DB_USER/" .env
        sed -i "s/DB_PASSWORD=.*/DB_PASSWORD=$DB_PASSWORD/" .env
        sed -i "s/DB_HOST=.*/DB_HOST=$DB_HOST/" .env
        sed -i "s/DB_PORT=.*/DB_PORT=$DB_PORT/" .env
    else
        cat > ../projects/${PROJECT_NAME}/.env << EOL
# Database Configuration
DB_NAME=$DB_NAME
DB_USER=$DB_USER
DB_PASSWORD=$DB_PASSWORD
DB_HOST=$DB_HOST
DB_PORT=$DB_PORT

# JWT Configuration
JWT_SECRET=$(openssl rand -base64 32)
EOL
    fi

    log_info "Database credentials have been saved to .env file."
}

# Main execution
log_info "Starting database setup for project: $PROJECT_NAME"

check_postgres_installation

# Prompt for PostgreSQL admin password
read -sp "Enter PostgreSQL admin password: " POSTGRES_ADMIN_PASSWORD
echo

# Test the connection
if PGPASSWORD=$POSTGRES_ADMIN_PASSWORD psql -U $POSTGRES_ADMIN_USER -h $DB_HOST -p $DB_PORT -c '\q' 2>/dev/null; then
    log_info "Successfully connected to PostgreSQL."
else
    log_error "Failed to connect to PostgreSQL. Please check your password and PostgreSQL setup."
    exit 1
fi

if database_exists "$DB_NAME"; then
    log_info "Database $DB_NAME already exists."
else
    log_info "Creating new database and user..."
    create_database_and_user
fi

update_env_file

log_info "Database setup completed successfully!"
