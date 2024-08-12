const express = require('express');
const router = express.Router();
const DataModelingService = require('../services/dataModelingService');

router.post('/models', async (req, res, next) => {
  try {
    const { name, fields } = req.body;
    await DataModelingService.saveModel({ name, fields });
    res.status(201).json({ message: 'Model saved successfully' });
  } catch (error) {
    next(error);
  }
});

router.get('/models', async (req, res, next) => {
  try {
    const models = await DataModelingService.getModels();
    res.json(models);
  } catch (error) {
    next(error);
  }
});

module.exports = router;
