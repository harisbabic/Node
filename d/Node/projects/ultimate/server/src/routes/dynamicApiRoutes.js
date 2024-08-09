// src/routes/dynamicApiRoutes.js
const express = require('express');
const apiGenerationService = require('../services/apiGenerationService');
const dataModelingService = require('../services/dataModelingService');

const router = express.Router();

// Function to set up dynamic routes
const setupDynamicRoutes = async () => {
  try {
    const models = await dataModelingService.getModels();
    models.forEach(model => {
      router.use(`/${model.name.toLowerCase()}`, apiGenerationService.generateAPI(model.name, model.fields));
    });
    console.log('Dynamic API routes set up successfully');
  } catch (error) {
    console.error('Error setting up dynamic API routes:', error);
  }
};

// Set up routes immediately and export the router
setupDynamicRoutes();

module.exports = router;
