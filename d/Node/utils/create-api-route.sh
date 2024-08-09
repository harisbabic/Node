#!/bin/bash

# create-api-route.sh
# Usage: create-api-route.sh <project-name> <route-name>
# Description: Creates a new API route with controller and model for PostgreSQL

set -euo pipefail

if [ $# -ne 2 ]; then
    echo "Usage: $0 <project-name> <route-name>"
    exit 1
fi

project_name=$1
route_name=$2

project_dir="/d/Node/projects/$project_name"
src_dir="$project_dir/server/src"
routes_dir="$src_dir/routes"
controllers_dir="$src_dir/controllers"
models_dir="$src_dir/models"

# Ensure directories exist
mkdir -p "$routes_dir" "$controllers_dir" "$models_dir"

# Create route file
cat << EOF > "$routes_dir/${route_name}.js"
const express = require('express');
const router = express.Router();
const ${route_name}Controller = require('../controllers/${route_name}');

router.get('/', ${route_name}Controller.getAll);
router.post('/', ${route_name}Controller.create);
router.get('/:id', ${route_name}Controller.getById);
router.put('/:id', ${route_name}Controller.update);
router.delete('/:id', ${route_name}Controller.delete);

module.exports = router;
EOF

# Create controller file
cat << EOF > "$controllers_dir/${route_name}.js"
const ${route_name}Model = require('../models/${route_name}');

exports.getAll = async (req, res) => {
  try {
    const items = await ${route_name}Model.findAll();
    res.json(items);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

exports.create = async (req, res) => {
  try {
    const newItem = await ${route_name}Model.create(req.body);
    res.status(201).json(newItem);
  } catch (error) {
    res.status(400).json({ message: error.message });
  }
};

exports.getById = async (req, res) => {
  try {
    const item = await ${route_name}Model.findByPk(req.params.id);
    if (!item) {
      return res.status(404).json({ message: 'Item not found' });
    }
    res.json(item);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

exports.update = async (req, res) => {
  try {
    const [updated] = await ${route_name}Model.update(req.body, {
      where: { id: req.params.id }
    });
    if (updated) {
      const updatedItem = await ${route_name}Model.findByPk(req.params.id);
      res.json(updatedItem);
    } else {
      res.status(404).json({ message: 'Item not found' });
    }
  } catch (error) {
    res.status(400).json({ message: error.message });
  }
};

exports.delete = async (req, res) => {
  try {
    const deleted = await ${route_name}Model.destroy({
      where: { id: req.params.id }
    });
    if (deleted) {
      res.json({ message: 'Item deleted' });
    } else {
      res.status(404).json({ message: 'Item not found' });
    }
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};
EOF

# Create model file
cat << EOF > "$models_dir/${route_name}.js"
const { DataTypes } = require('sequelize');
const sequelize = require('../config/database');

const ${route_name} = sequelize.define('${route_name}', {
  // Define your model fields here
  name: {
    type: DataTypes.STRING,
    allowNull: false
  },
  // Add more fields as needed
});

module.exports = ${route_name};
EOF

echo "API route, controller, and model for $route_name created successfully in $project_name"
