#!/bin/bash
# noloco-config.sh
# Description: Configuration options for Noloco setup

# Noloco components setup flags
SETUP_API_GENERATION=true
SETUP_RBAC=true
SETUP_WORKFLOWS=true
SETUP_DYNAMIC_UI=true
SETUP_FILE_MANAGEMENT=true
SETUP_EMAIL_TEMPLATES=true
SETUP_DASHBOARD=true
SETUP_NOLOCO_THEME=true
SETUP_DATA_MODELING=true

# API Generation settings
API_SPEC_FILE="$PROJECT_DIR/api-spec.yaml"
API_OUTPUT_DIR="$PROJECT_DIR/server/src/generated-api"

# RBAC settings
RBAC_ROLES=("admin" "user" "guest")
RBAC_PERMISSIONS_FILE="$PROJECT_DIR/rbac-permissions.json"

# Workflow settings
WORKFLOW_DEFINITIONS_DIR="$PROJECT_DIR/workflows"

# Dynamic UI settings
UI_COMPONENTS_DIR="$PROJECT_DIR/client/src/components"

# File management settings
FILE_STORAGE_PATH="$PROJECT_DIR/storage"
MAX_FILE_SIZE_MB=10

# Email template settings
EMAIL_TEMPLATES_DIR="$PROJECT_DIR/email-templates"

# Dashboard settings
DASHBOARD_COMPONENTS=("user-stats" "project-overview" "activity-feed")

# Noloco theme settings
THEME_COLOR_PRIMARY="#007bff"
THEME_COLOR_SECONDARY="#6c757d"

# Data modeling settings
DATA_MODELS_DIR="$PROJECT_DIR/server/src/models"
