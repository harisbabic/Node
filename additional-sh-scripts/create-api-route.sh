#!/bin/bash

# create-api-route.sh
# Location: /d/Node/utils/create-api-route.sh
# Usage: create-api-route.sh <project-name> <route-name>
# Description: Creates a new API route with controller and model

# Validate input parameters
if [ $# -ne 2 ]; then
    echo "Usage: $0 <project-name> <route-name>"
    exit 1
fi

project_name=$1
route_name=$2

# Define directory paths
root_dir="/d/Node"
project_dir="$root_dir/projects/$project_name"
routes_dir="$project_dir/routes"
controllers_dir="$project_dir/controllers"
models_dir="$project_dir/models"

# Ensure directories exist
mkdir -p "$routes_dir"
mkdir -p "$controllers_dir"
mkdir -p "$models_dir"

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
    const items = await ${route_name}Model.find();
    res.json(items);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

exports.create = async (req, res) => {
  const item = new ${route_name}Model(req.body);
  try {
    const newItem = await item.save();
    res.status(201).json(newItem);
  } catch (error) {
    res.status(400).json({ message: error.message });
  }
};

exports.getById = async (req, res) => {
  try {
    const item = await ${route_name}Model.findById(req.params.id);
    if (item == null) {
      return res.status(404).json({ message: 'Item not found' });
    }
    res.json(item);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

exports.update = async (req, res) => {
  try {
    const updatedItem = await ${route_name}Model.findByIdAndUpdate(req.params.id, req.body, { new: true });
    res.json(updatedItem);
  } catch (error) {
    res.status(400).json({ message: error.message });
  }
};

exports.delete = async (req, res) => {
  try {
    await ${route_name}Model.findByIdAndDelete(req.params.id);
    res.json({ message: 'Item deleted' });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};
EOF

# Create model file
cat << EOF > "$models_dir/${route_name}.js"
const mongoose = require('mongoose');

const ${route_name}Schema = new mongoose.Schema({
  // Define your schema fields here
  name: {
    type: String,
    required: true
  },
  // Add more fields as needed
}, { timestamps: true });

module.exports = mongoose.model('${route_name}', ${route_name}Schema);
EOF

echo "API route, controller, and model for $route_name created successfully in $project_name"
