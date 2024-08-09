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
        throw new Error(`Unknown step type: ${step.type}`);
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
        throw new Error(`Unknown operator: ${operator}`);
    }
  }
}

module.exports = new WorkflowService();
