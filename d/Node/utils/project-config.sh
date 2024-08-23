#!/bin/bash
# project-config.sh
# Relative path: d/Node/utils/project-config.sh
# Description: Configuration options for project setup

# Core Setup
SETUP_DATABASE=true
SETUP_PROJECT=true
SET_CONFIGS=true
UPDATE_PACKAGE_JSON=true
SETUP_CI_CD=true
GENERATE_TESTS=true
INIT_GIT=true

# Client Setup
SETUP_CLIENT=true
SETUP_SASS=true
SETUP_STYLED_COMPONENTS=true
SETUP_REDUX=true
GENERATE_CONFIG=true
GENERATE_LAYOUT=true
SETUP_STATE_MANAGEMENT=true
GENERATE_API_SERVICE=true
SETUP_RESPONSIVE_DESIGN=true
SETUP_ACCESSIBILITY=true
SETUP_PERFORMANCE_OPTIMIZATION=true

# Optional Client Setups
SETUP_ANIMATION=true
SETUP_I18N=true
SETUP_SEO=true
SETUP_PWA=true

# Server Setup
SETUP_AUTH=true

# API Setup
SETUP_API=true

# Noloco-like Functionality
SETUP_NOLOCO=true
NOLOCO_OPTION=1  # 0: None, 1: Full, 2: API Only, 3: UI Only, 4: RBAC and Workflows

# Component Documentation
SETUP_COMPONENT_DOCS=false

# Advanced Options
USE_TYPESCRIPT=true
DATABASE_TYPE="postgresql"  # Options: postgresql, mysql, mongodb
FRONTEND_FRAMEWORK="react"  # Options: react, vue, angular

# Note: These are default values. They can be overridden by user input in the master-setup.sh script.
