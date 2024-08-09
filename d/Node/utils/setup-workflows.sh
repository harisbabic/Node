#!/bin/bash
# setup-workflows.sh

set -euo pipefail

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}


project_dir="$1"

if [ -z "$project_dir" ]; then
  error_exit "Usage: $0 <project-dir>"
fi

mkdir -p "$project_dir/server/src/services" "$project_dir/server/src/models" "$project_dir/server/src/routes"

log "Setting up workflows for $project_dir"

# Create Workflow service
cat << EOF > "$project_dir/server/src/services/workflowService.js"
// src/services/workflowService.js
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});
const axios = require('axios');

class WorkflowService {
  async executeWorkflow(workflowDefinition, triggerData) {
    let currentData = triggerData;

    for (const step of workflowDefinition.steps) {
      currentData = await this.executeStep(step, currentData);
    }

    return currentData;
  }

  async executeStep(step, data) {
    switch (step.type) {
      case 'transform':
        return this.transformData(step.transformation, data);
      case 'apiCall':
        return this.makeAPICall(step.apiDetails, data);
      case 'condition':
        return this.evaluateCondition(step.condition, data) ? data : null;
      default:
        throw new Error(\`Unknown step type: \${step.type}\`);
    }
  }

  transformData(transformation, data) {
    const result = {};
    for (const [key, value] of Object.entries(transformation)) {
      result[key] = value.split('.').reduce((o, i) => o[i], data);
    }
    return result;
  }

  async makeAPICall(apiDetails, data) {
    const { url, method, body } = apiDetails;
    const response = await axios({ method, url, data: body });
    return response.data;
  }

  evaluateCondition(condition, data) {
    const { left, operator, right } = condition;
    const leftValue = left.split('.').reduce((o, i) => o[i], data);
    switch (operator) {
      case '==':
        return leftValue == right;
      case '!=':
        return leftValue != right;
      case '>':
        return leftValue > right;
      case '<':
        return leftValue < right;
      default:
        throw new Error(\`Unknown operator: \${operator}\`);
    }
  }
}

module.exports = new WorkflowService();
EOF

# Create Workflow model
cat << EOF > "$project_dir/server/src/models/Workflow.js"
// src/models/Workflow.js
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

class WorkflowModel {
  async createWorkflow(workflowData) {
    const query = 'INSERT INTO workflows(name, description, trigger, steps) VALUES(\$1, \$2, \$3, \$4) RETURNING *';
    const values = [workflowData.name, workflowData.description, workflowData.trigger, JSON.stringify(workflowData.steps)];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getWorkflows() {
    const result = await pool.query('SELECT * FROM workflows');
    return result.rows;
  }

  async getWorkflowById(id) {
    const result = await pool.query('SELECT * FROM workflows WHERE id = \$1', [id]);
    return result.rows[0];
  }
}

module.exports = new WorkflowModel();
EOF

# Create workflow routes
cat << EOF > "$project_dir/server/src/routes/workflowRoutes.js"
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
EOF

log "Workflows setup completed for $project_dir"
