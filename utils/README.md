# Utility Scripts

This directory contains various scripts used for project setup, management, and automation within the /d/Node environment.

## Available Scripts

### master-setup.sh
- **Purpose**: Main script for setting up a new project
- **Usage**: `./master-setup.sh project_name`
- **Description**: Orchestrates the entire project setup process, calling other utility scripts as needed

### setup-project.sh
- **Purpose**: Sets up the basic project structure
- **Usage**: `./setup-project.sh project_type project_name`
- **Description**: Creates necessary directories and files for a new project

### set-configs.sh
- **Purpose**: Sets up configuration files for the project
- **Usage**: `./set-configs.sh project_dir project_name`
- **Description**: Generates and populates configuration files like package.json, jest.config.js, etc.

### generate-tests.sh
- **Purpose**: Generates basic test files for the project
- **Usage**: `./generate-tests.sh project_name`
- **Description**: Creates sample test files in the appropriate directories

### setup-database.sh
- **Purpose**: Sets up the database for the project
- **Usage**: `./setup-database.sh project_name db_name db_user db_password`
- **Description**: Creates a new database and user, sets up tables

### setup-auth.sh
- **Purpose**: Sets up authentication for the project
- **Usage**: `./setup-auth.sh project_name`
- **Description**: Installs necessary packages and sets up basic authentication logic

... (add descriptions for all other utility scripts)

## Usage

These scripts are typically called by the master-setup.sh script during project creation. However, they can also be run individually for specific tasks or updates to existing projects.

Always ensure you're in the `/d/Node/utils` directory when running these scripts, unless using absolute paths.

## Contributing

If you're adding new utility scripts or modifying existing ones, please update this README accordingly. Ensure all scripts are well-documented and follow the established naming conventions.