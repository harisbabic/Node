#!/bin/bash
# setup-database.sh
# Relative path: d/Node/utils/setup-database.sh
# Description: Sets up the database for the project

set -euo pipefail

# Source the common functions and logger
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/common-functions.sh"
source "$SCRIPT_DIR/logger.sh"

# Load configuration
if [[ -f .env ]]; then
    source_env_file .env
fi

# Configuration with defaults
DB_HOST=${DB_HOST:-"localhost"}
DB_PORT=${DB_PORT:-5432}
POSTGRES_ADMIN_USER=${POSTGRES_ADMIN_USER:-"postgres"}

# Check if project name is provided
if [ $# -eq 0 ]; then
    log_error "Please provide a project name as an argument."
    echo "Usage: $0 <project-name>"
    exit 1
fi

PROJECT_NAME="$1"
DB_NAME="${PROJECT_NAME//-/_}_db"
DB_USER="${PROJECT_NAME//-/_}_user"

# Function to check if PostgreSQL is installed
check_postgres_installation() {
    if ! command_exists psql; then
        log_error "PostgreSQL is not installed or not in PATH. Please install PostgreSQL and add it to your PATH."
        exit 1
    else
        log_info "PostgreSQL is installed."
    fi
}

# Function to check if database exists
database_exists() {
    PGPASSWORD=$POSTGRES_ADMIN_PASSWORD psql -U "$POSTGRES_ADMIN_USER" -h "$DB_HOST" -p "$DB_PORT" -lqt | cut -d \| -f 1 | grep -qw "$1"
}

# Function to create database and user
create_database_and_user() {
    # Generate a random password for the new database user
    DB_PASSWORD=$(generate_random_string 32)

    # Create database and user
    if ! PGPASSWORD=$POSTGRES_ADMIN_PASSWORD psql -U "$POSTGRES_ADMIN_USER" -h "$DB_HOST" -p "$DB_PORT" << EOF
CREATE DATABASE $DB_NAME;
CREATE USER $DB_USER WITH ENCRYPTED PASSWORD '$DB_PASSWORD';
GRANT ALL PRIVILEGES ON DATABASE $DB_NAME TO $DB_USER;
EOF
    then
        log_error "Failed to create database and user. Please check your PostgreSQL installation and permissions."
        exit 1
    fi

    log_info "Database $DB_NAME and user $DB_USER created successfully."
}

# Function to update .env file
update_env_file() {
    local env_file="../projects/${PROJECT_NAME}/.env"
    ensure_directory "$(dirname "$env_file")"

    if [[ -f "$env_file" ]]; then
        backup_file "$env_file"
        log_info "Existing .env file backed up."
    fi

    cat > "$env_file" << EOL
# Database Configuration
DB_NAME=$DB_NAME
DB_USER=$DB_USER
DB_PASSWORD=$DB_PASSWORD
DB_HOST=$DB_HOST
DB_PORT=$DB_PORT

# JWT Configuration
JWT_SECRET=$(generate_random_string 64)
EOL

    log_info "Database credentials have been saved to .env file."
}

# Main execution
log_info "Starting database setup for project: $PROJECT_NAME"

check_postgres_installation

# Prompt for PostgreSQL admin password
read -sp "Enter PostgreSQL admin password: " POSTGRES_ADMIN_PASSWORD
echo

# Test the connection
if ! PGPASSWORD=$POSTGRES_ADMIN_PASSWORD psql -U "$POSTGRES_ADMIN_USER" -h "$DB_HOST" -p "$DB_PORT" -c '\q' 2>/dev/null; then
    log_error "Failed to connect to PostgreSQL. Please check your password and PostgreSQL setup."
    exit 1
fi

log_info "Successfully connected to PostgreSQL."

if database_exists "$DB_NAME"; then
    log_warn "Database $DB_NAME already exists."
    read -p "Do you want to drop the existing database and create a new one? (y/n): " confirm
    if [[ $confirm == [yY] ]]; then
        if ! PGPASSWORD=$POSTGRES_ADMIN_PASSWORD psql -U "$POSTGRES_ADMIN_USER" -h "$DB_HOST" -p "$DB_PORT" -c "DROP DATABASE $DB_NAME;"; then
            log_error "Failed to drop existing database. Please check your permissions."
            exit 1
        fi
        log_info "Existing database dropped. Creating new database and user..."
        create_database_and_user
    else
        log_info "Using existing database. Skipping database creation."
    fi
else
    log_info "Creating new database and user..."
    create_database_and_user
fi

update_env_file

log_info "Database setup completed successfully!"
