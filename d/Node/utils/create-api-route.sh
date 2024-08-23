#!/bin/bash
# create-api-route.sh
# Relative path: d/Node/utils/create-api-route.sh
# Description: Creates a new API route with controller and model for PostgreSQL

set -euo pipefail

# Source the common functions and logger
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/common-functions.sh"
source "$SCRIPT_DIR/logger.sh"

# Check if project name and route name are provided
if [ $# -ne 2 ]; then
    log_error "Please provide a project name and route name as arguments."
    echo "Usage: $0 <project-name> <route-name>"
    exit 1
fi

PROJECT_NAME="$1"
ROUTE_NAME="$2"

PROJECT_DIR="$NODE_DIR/projects/$PROJECT_NAME"
SERVER_DIR="$PROJECT_DIR/server"
SRC_DIR="$SERVER_DIR/src"
ROUTES_DIR="$SRC_DIR/routes"
CONTROLLERS_DIR="$SRC_DIR/controllers"
MODELS_DIR="$SRC_DIR/models"

log_info "Creating API route for $ROUTE_NAME in $PROJECT_NAME"

# Ensure directories exist
ensure_directory "$ROUTES_DIR"
ensure_directory "$CONTROLLERS_DIR"
ensure_directory "$MODELS_DIR"

# Create route file
log_info "Creating route file..."
cat << EOF > "$ROUTES_DIR/${ROUTE_NAME}.routes.ts"
import express from 'express';
import * as ${ROUTE_NAME}Controller from '../controllers/${ROUTE_NAME}.controller';

const router = express.Router();

router.get('/', ${ROUTE_NAME}Controller.getAll);
router.post('/', ${ROUTE_NAME}Controller.create);
router.get('/:id', ${ROUTE_NAME}Controller.getById);
router.put('/:id', ${ROUTE_NAME}Controller.update);
router.delete('/:id', ${ROUTE_NAME}Controller.delete);

export default router;
EOF

# Create controller file
log_info "Creating controller file..."
cat << EOF > "$CONTROLLERS_DIR/${ROUTE_NAME}.controller.ts"
import { Request, Response } from 'express';
import { ${ROUTE_NAME} } from '../models/${ROUTE_NAME}.model';

export const getAll = async (req: Request, res: Response): Promise<void> => {
  try {
    const items = await ${ROUTE_NAME}.findAll();
    res.json(items);
  } catch (error) {
    res.status(500).json({ message: 'Error fetching items', error });
  }
};

export const create = async (req: Request, res: Response): Promise<void> => {
  try {
    const newItem = await ${ROUTE_NAME}.create(req.body);
    res.status(201).json(newItem);
  } catch (error) {
    res.status(400).json({ message: 'Error creating item', error });
  }
};

export const getById = async (req: Request, res: Response): Promise<void> => {
  try {
    const item = await ${ROUTE_NAME}.findByPk(req.params.id);
    if (!item) {
      res.status(404).json({ message: 'Item not found' });
      return;
    }
    res.json(item);
  } catch (error) {
    res.status(500).json({ message: 'Error fetching item', error });
  }
};

export const update = async (req: Request, res: Response): Promise<void> => {
  try {
    const [updated] = await ${ROUTE_NAME}.update(req.body, {
      where: { id: req.params.id }
    });
    if (updated) {
      const updatedItem = await ${ROUTE_NAME}.findByPk(req.params.id);
      res.json(updatedItem);
    } else {
      res.status(404).json({ message: 'Item not found' });
    }
  } catch (error) {
    res.status(400).json({ message: 'Error updating item', error });
  }
};

export const delete = async (req: Request, res: Response): Promise<void> => {
  try {
    const deleted = await ${ROUTE_NAME}.destroy({
      where: { id: req.params.id }
    });
    if (deleted) {
      res.json({ message: 'Item deleted' });
    } else {
      res.status(404).json({ message: 'Item not found' });
    }
  } catch (error) {
    res.status(500).json({ message: 'Error deleting item', error });
  }
};
EOF

# Create model file
log_info "Creating model file..."
cat << EOF > "$MODELS_DIR/${ROUTE_NAME}.model.ts"
import { Model, DataTypes } from 'sequelize';
import { sequelize } from '../config/database';

export class ${ROUTE_NAME} extends Model {
  public id!: number;
  public name!: string;
  // Add more fields as needed
}

${ROUTE_NAME}.init(
  {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
    },
    name: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    // Define additional fields here
  },
  {
    sequelize,
    modelName: '${ROUTE_NAME}',
  }
);
EOF

# Update app.ts to include the new route
APP_FILE="$SRC_DIR/app.ts"
if [ -f "$APP_FILE" ]; then
    log_info "Updating app.ts with new route..."
    sed -i "/import express from 'express';/a import ${ROUTE_NAME}Routes from './routes/${ROUTE_NAME}.routes';" "$APP_FILE"
    sed -i "/app.use(express.json());/a app.use('/api/${ROUTE_NAME}', ${ROUTE_NAME}Routes);" "$APP_FILE"
else
    log_warn "app.ts not found. Please manually add the new route to your main application file."
fi

log_info "API route, controller, and model for $ROUTE_NAME created successfully in $PROJECT_NAME"
