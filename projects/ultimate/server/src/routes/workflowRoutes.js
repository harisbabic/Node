// src/routes/workflowRoutes.js
const express = require('express');
const WorkflowModel = require('../models/Workflow');
const WorkflowService = require('../services/workflowService');

const router = express.Router();

router.post('/', async (req, res) => {
  try {
    const workflow = await WorkflowModel.createWorkflow(req.body);
    res.status(201).json(workflow);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

router.get('/', async (req, res) => {
  try {
    const workflows = await WorkflowModel.getWorkflows();
    res.json(workflows);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

router.post('/:id/execute', async (req, res) => {
  try {
    const workflow = await WorkflowModel.getWorkflowById(req.params.id);
    if (!workflow) {
      return res.status(404).json({ message: 'Workflow not found' });
    }
    const result = await WorkflowService.executeWorkflow(workflow, req.body);
    res.json(result);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

module.exports = router;
