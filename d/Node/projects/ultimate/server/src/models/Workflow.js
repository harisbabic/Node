// src/models/Workflow.js
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

class WorkflowModel {
  async createWorkflow(workflowData) {
    const query = 'INSERT INTO workflows(name, description, trigger, steps) VALUES($1, $2, $3, $4) RETURNING *';
    const values = [workflowData.name, workflowData.description, workflowData.trigger, JSON.stringify(workflowData.steps)];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getWorkflows() {
    const result = await pool.query('SELECT * FROM workflows');
    return result.rows;
  }

  async getWorkflowById(id) {
    const result = await pool.query('SELECT * FROM workflows WHERE id = $1', [id]);
    return result.rows[0];
  }
}

module.exports = new WorkflowModel();
