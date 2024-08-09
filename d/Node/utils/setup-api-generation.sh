#!/bin/bash
# setup-api-generation.sh

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

server_dir="$project_dir/server"
mkdir -p "$server_dir/src/services" "$server_dir/src/routes"

log "Setting up API generation for $project_dir"

# Create API generation service
cat << EOF > "$server_dir/src/services/apiGenerationService.js"
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
        const sqlQuery = \`INSERT INTO \${modelName} (\${keys.join(', ')}) VALUES (\${values.map((_, i) => '$' + (i + 1)).join(', ')}) RETURNING *\`;
        const result = await query(sqlQuery, values);
        res.status(201).json(result.rows[0]);
      } catch (error) {
        res.status(400).json({ error: error.message });
      }
    });

    // Read all
    router.get('/', async (req, res) => {
      try {
        const result = await query(\`SELECT * FROM \${modelName}\`);
        res.json(result.rows);
      } catch (error) {
        res.status(500).json({ error: error.message });
      }
    });

    // Read one
    router.get('/:id', async (req, res) => {
      try {
        const result = await query(\`SELECT * FROM \${modelName} WHERE id = \$1\`, [req.params.id]);
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
        const sqlQuery = \`UPDATE \${modelName} SET \${keys.map((key, i) => \`\${key} = \$\${i + 1}\`).join(', ')} WHERE id = \$\${keys.length + 1} RETURNING *\`;
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
        const result = await query(\`DELETE FROM \${modelName} WHERE id = \$1 RETURNING *\`, [req.params.id]);
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
EOF

# Create dynamic API routes file
cat << EOF > "$server_dir/src/routes/dynamicApiRoutes.js"
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
      router.use(\`/\${model.name.toLowerCase()}\`, apiGenerationService.generateAPI(model.name, model.fields));
    });
    console.log('Dynamic API routes set up successfully');
  } catch (error) {
    console.error('Error setting up dynamic API routes:', error);
  }
};

// Set up routes immediately and export the router
setupDynamicRoutes();

module.exports = router;
EOF

log "API generation setup completed for $project_dir"
