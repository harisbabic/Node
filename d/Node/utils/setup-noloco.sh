#!/bin/bash
# setup-noloco.sh
# Relative path: d/Node/utils/setup-noloco.sh
# Description: Sets up Noloco functionality for the project

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/common-functions.sh"
source "$SCRIPT_DIR/logger.sh"

# Check if project name is provided
if [ $# -eq 0 ]; then
    log_error "Please provide a project name as an argument."
    echo "Usage: $0 <project-name>"
    exit 1
fi

PROJECT_NAME="$1"
PROJECT_DIR="$NODE_DIR/projects/$PROJECT_NAME"

# Source Noloco configuration
source "$SCRIPT_DIR/noloco-config.sh"

setup_api_generation() {
    log_info "Setting up API generation..."
    if ! command_exists openapi-generator-cli; then
        log_info "Installing OpenAPI Generator CLI..."
        npm install -g @openapitools/openapi-generator-cli
    fi

    if [ ! -f "$API_SPEC_FILE" ]; then
        log_error "API specification file not found: $API_SPEC_FILE"
        return 1
    fi

    log_info "Generating API from specification..."
    if ! openapi-generator-cli generate -i "$API_SPEC_FILE" -g typescript-node -o "$API_OUTPUT_DIR"; then
        log_error "Failed to generate API"
        return 1
    fi

    log_info "Installing generated API dependencies..."
    (
        cd "$API_OUTPUT_DIR" || return 1
        npm install
    )

    log_info "API generation completed successfully"
}

setup_rbac() {
    log_info "Setting up RBAC..."

    if [ ! -f "$RBAC_PERMISSIONS_FILE" ]; then
        log_error "RBAC permissions file not found: $RBAC_PERMISSIONS_FILE"
        return 1
    fi

    RBAC_DIR="$PROJECT_DIR/server/src/rbac"
    ensure_directory "$RBAC_DIR"

    # Generate roles and permissions
    log_info "Generating roles and permissions..."
    cat > "$RBAC_DIR/roles.ts" << EOL
export const roles = ${RBAC_ROLES[@]/#/'}${RBAC_ROLES[@]/%/'}
EOL

    # Generate RBAC middleware
    log_info "Generating RBAC middleware..."
    cat > "$RBAC_DIR/rbacMiddleware.ts" << EOL
import { Request, Response, NextFunction } from 'express';
import { roles } from './roles';

const permissions = require('$RBAC_PERMISSIONS_FILE');

export const checkPermission = (requiredPermission: string) => {
  return (req: Request, res: Response, next: NextFunction) => {
    const userRole = req.user?.role;
    if (!userRole || !roles.includes(userRole)) {
      return res.status(403).json({ error: 'Forbidden' });
    }

    if (permissions[userRole].includes(requiredPermission)) {
      next();
    } else {
      res.status(403).json({ error: 'Forbidden' });
    }
  };
};
EOL

    log_info "RBAC setup completed successfully"
}

setup_workflows() {
    log_info "Setting up workflows..."
    WORKFLOWS_DIR="$PROJECT_DIR/server/src/workflows"
    ensure_directory "$WORKFLOWS_DIR"

    # Create a basic workflow engine
    cat > "$WORKFLOWS_DIR/workflowEngine.ts" << EOL
import { Workflow, Task } from './types';

export class WorkflowEngine {
  executeWorkflow(workflow: Workflow) {
    workflow.tasks.forEach(task => this.executeTask(task));
  }

  private executeTask(task: Task) {
    console.log(\`Executing task: \${task.name}\`);
    // Implement task execution logic here
  }
}
EOL

    log_info "Workflow setup completed"
}

setup_dynamic_ui() {
    log_info "Setting up dynamic UI..."
    COMPONENTS_DIR="$PROJECT_DIR/client/src/components/dynamic"
    ensure_directory "$COMPONENTS_DIR"

    # Create a basic dynamic form component
    cat > "$COMPONENTS_DIR/DynamicForm.tsx" << EOL
import React from 'react';

interface DynamicFormProps {
  fields: Array<{ name: string; type: string; label: string }>;
}

export const DynamicForm: React.FC<DynamicFormProps> = ({ fields }) => {
  return (
    <form>
      {fields.map(field => (
        <div key={field.name}>
          <label htmlFor={field.name}>{field.label}</label>
          <input type={field.type} id={field.name} name={field.name} />
        </div>
      ))}
      <button type="submit">Submit</button>
    </form>
  );
};
EOL

    log_info "Dynamic UI setup completed"
}

setup_file_management() {
    log_info "Setting up file management..."
    FILE_MANAGEMENT_DIR="$PROJECT_DIR/server/src/fileManagement"
    ensure_directory "$FILE_MANAGEMENT_DIR"

    # Create a basic file management service
    cat > "$FILE_MANAGEMENT_DIR/fileService.ts" << EOL
import fs from 'fs';
import path from 'path';

const UPLOAD_DIR = path.join(__dirname, '../../uploads');

export const fileService = {
  saveFile: async (file: Express.Multer.File) => {
    const fileName = \`\${Date.now()}-\${file.originalname}\`;
    const filePath = path.join(UPLOAD_DIR, fileName);
    await fs.promises.writeFile(filePath, file.buffer);
    return fileName;
  },

  getFile: async (fileName: string) => {
    const filePath = path.join(UPLOAD_DIR, fileName);
    return fs.promises.readFile(filePath);
  }
};
EOL

    log_info "File management setup completed"
}

setup_email_templates() {
    log_info "Setting up email templates..."
    EMAIL_TEMPLATES_DIR="$PROJECT_DIR/server/src/emailTemplates"
    ensure_directory "$EMAIL_TEMPLATES_DIR"

    # Create a basic email template
    cat > "$EMAIL_TEMPLATES_DIR/welcomeTemplate.ts" << EOL
export const welcomeTemplate = (userName: string) => \`
<!DOCTYPE html>
<html>
<body>
    <h1>Welcome, \${userName}!</h1>
    <p>Thank you for joining our platform.</p>
</body>
</html>
\`;
EOL

    log_info "Email templates setup completed"
}

setup_dashboard() {
    log_info "Setting up dashboard..."
    DASHBOARD_DIR="$PROJECT_DIR/client/src/components/dashboard"
    ensure_directory "$DASHBOARD_DIR"

    # Create a basic dashboard component
    cat > "$DASHBOARD_DIR/Dashboard.tsx" << EOL
import React from 'react';

export const Dashboard: React.FC = () => {
  return (
    <div>
      <h1>Dashboard</h1>
      {/* Add dashboard widgets here */}
    </div>
  );
};
EOL

    log_info "Dashboard setup completed"
}

setup_noloco_theme() {
    log_info "Setting up Noloco theme..."
    THEME_DIR="$PROJECT_DIR/client/src/styles"
    ensure_directory "$THEME_DIR"

    # Create a basic theme file
    cat > "$THEME_DIR/theme.ts" << EOL
export const theme = {
  colors: {
    primary: '#007bff',
    secondary: '#6c757d',
    // Add more colors as needed
  },
  fonts: {
    main: 'Arial, sans-serif',
    // Add more font definitions as needed
  },
  // Add more theme properties as needed
};
EOL

    log_info "Noloco theme setup completed"
}

setup_data_modeling() {
    log_info "Setting up data modeling..."
    MODELS_DIR="$PROJECT_DIR/server/src/models"
    ensure_directory "$MODELS_DIR"

    # Create a basic model file
    cat > "$MODELS_DIR/User.ts" << EOL
import { Model, DataTypes } from 'sequelize';
import { sequelize } from '../database';

export class User extends Model {
  public id!: number;
  public name!: string;
  public email!: string;
  // Add more fields as needed
}

User.init({
  id: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true,
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
  // Add more fields as needed
}, {
  sequelize,
  modelName: 'user',
});
EOL

    log_info "Data modeling setup completed"
}

setup_noloco() {
    log_info "Starting Noloco setup for $PROJECT_NAME"

    local setup_functions=(
        "API_GENERATION:setup_api_generation"
        "RBAC:setup_rbac"
        "WORKFLOWS:setup_workflows"
        "DYNAMIC_UI:setup_dynamic_ui"
        "FILE_MANAGEMENT:setup_file_management"
        "EMAIL_TEMPLATES:setup_email_templates"
        "DASHBOARD:setup_dashboard"
        "NOLOCO_THEME:setup_noloco_theme"
        "DATA_MODELING:setup_data_modeling"
    )

    for func in "${setup_functions[@]}"; do
        IFS=':' read -r config_var func_name <<< "$func"
        if [ "${!config_var}" = true ]; then
            if ! $func_name; then
                log_error "Failed to set up ${func_name/setup_/}. Aborting Noloco setup."
                return 1
            fi
        fi
    done

    log_info "Noloco setup completed successfully for $PROJECT_NAME"
}

# Run the main setup function
if ! setup_noloco; then
    log_error "Noloco setup failed. Please check the logs for more information."
    exit 1
fi
