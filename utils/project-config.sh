#!/bin/bash
# project-config.sh
# Relative path: d/Node/utils/project-config.sh

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
SETUP_ANIMATION=false
SETUP_I18N=false
SETUP_SEO=false
SETUP_PWA=false

# Server Setup
SETUP_AUTH=true

# API Setup
SETUP_API=false

# Noloco-like Functionality
SETUP_NOLOCO=false
NOLOCO_OPTION=0  # 0: None, 1: Full, 2: API Only, 3: UI Only, 4: RBAC and Workflows

# Component Documentation
SETUP_COMPONENT_DOCS=false

# Advanced Options
USE_TYPESCRIPT=true
DATABASE_TYPE="postgresql"  # Options: postgresql, mysql, mongodb
FRONTEND_FRAMEWORK="react"  # Options: react, vue, angular
