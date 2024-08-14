#!/bin/bash

# setup-database.sh
# This script sets up the PostgreSQL database for the Node project.
# It checks for PostgreSQL installation, creates a new database and user,
# and sets up the necessary environment variables.

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
DB_NAME="${PROJECT_NAME,,}_db"
DB_USER="${PROJECT_NAME,,}_user"

# Function to check if PostgreSQL is installed
check_postgres_installation() {
    if ! command -v psql &> /dev/null; then
        log_info "PostgreSQL is not installed. Installing..."
        
        # Install PostgreSQL (this assumes a Debian-based system)
        sudo apt-get update
        sudo apt-get install -y postgresql postgresql-contrib
        
        # Start PostgreSQL service
        sudo service postgresql start
        
        log_info "PostgreSQL installed successfully."
    else
        log_info "PostgreSQL is already installed."
    fi
}

# Function to check if database exists
database_exists() {
    sudo -u $POSTGRES_ADMIN_USER psql -lqt | cut -d \| -f 1 | grep -qw "$1"
}

# Function to create database and user
create_database_and_user() {
    # Generate a random password for the new database user
    DB_PASSWORD=$(openssl rand -base64 32)

    # Create database and user
    sudo -u $POSTGRES_ADMIN_USER psql << EOF
CREATE DATABASE $DB_NAME;
CREATE USER $DB_USER WITH ENCRYPTED PASSWORD '$DB_PASSWORD';
GRANT ALL PRIVILEGES ON DATABASE $DB_NAME TO $DB_USER;
EOF

    log_info "Database $DB_NAME and user $DB_USER created successfully."
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
        cat > .env << EOL
# Database Configuration
DB_NAME=$DB_NAME
DB_USER=$DB_USER
DB_PASSWORD=$DB_PASSWORD
DB_HOST=$DB_HOST
DB_PORT=$DB_PORT

# JWT Configuration
JWT_SECRET=$(openssl rand -base64 32)

# Note: To change the database password, use the following steps:
# 1. Update the DB_PASSWORD value in this file
# 2. Connect to your PostgreSQL database as an admin user
# 3. Run the following SQL command:
#    ALTER USER $DB_USER WITH PASSWORD 'your_new_password';
# 
# In future versions, password changes will be manageable through the backend dashboard.
EOL
    fi

    log_info "Database credentials have been saved to .env file."
}

# Main execution
log_info "Starting database setup for project: $PROJECT_NAME"

check_postgres_installation

if database_exists "$DB_NAME"; then
    log_info "Database $DB_NAME already exists."
else
    log_info "Creating new database and user..."
    create_database_and_user
fi

update_env_file

log_info "Database setup completed successfully!"
