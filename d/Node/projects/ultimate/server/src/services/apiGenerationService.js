// src/services/apiGenerationService.js
const express = require('express');
const { query } = require('../utils/db');

class APIGenerationService {
  generateAPI(modelName, fields) {
    const router = express.Router();

    // Create
    router.post('/', async (req, res) => {
      try {
        const keys = Object.keys(req.body);
        const values = Object.values(req.body);
        const sqlQuery = `INSERT INTO ${modelName} (${keys.join(', ')}) VALUES (${values.map((_, i) => '$' + (i + 1)).join(', ')}) RETURNING *`;
        const result = await query(sqlQuery, values);
        res.status(201).json(result.rows[0]);
      } catch (error) {
        res.status(400).json({ error: error.message });
      }
    });

    // Read all
    router.get('/', async (req, res) => {
      try {
        const result = await query(`SELECT * FROM ${modelName}`);
        res.json(result.rows);
      } catch (error) {
        res.status(500).json({ error: error.message });
      }
    });

    // Read one
    router.get('/:id', async (req, res) => {
      try {
        const result = await query(`SELECT * FROM ${modelName} WHERE id = $1`, [req.params.id]);
        if (result.rows.length === 0) return res.status(404).json({ message: 'Document not found' });
        res.json(result.rows[0]);
      } catch (error) {
        res.status(500).json({ error: error.message });
      }
    });

    // Update
    router.put('/:id', async (req, res) => {
      try {
        const keys = Object.keys(req.body);
        const values = Object.values(req.body);
        const sqlQuery = `UPDATE ${modelName} SET ${keys.map((key, i) => `${key} = $${i + 1}`).join(', ')} WHERE id = $${keys.length + 1} RETURNING *`;
        const result = await query(sqlQuery, [...values, req.params.id]);
        if (result.rows.length === 0) return res.status(404).json({ message: 'Document not found' });
        res.json(result.rows[0]);
      } catch (error) {
        res.status(400).json({ error: error.message });
      }
    });

    // Delete
    router.delete('/:id', async (req, res) => {
      try {
        const result = await query(`DELETE FROM ${modelName} WHERE id = $1 RETURNING *`, [req.params.id]);
        if (result.rows.length === 0) return res.status(404).json({ message: 'Document not found' });
        res.json({ message: 'Document deleted successfully' });
      } catch (error) {
        res.status(500).json({ error: error.message });
      }
    });

    return router;
  }
}

module.exports = new APIGenerationService();
