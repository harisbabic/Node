#!/bin/bash
# setup-data-modeling.sh

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
client_dir="$project_dir/client"

log "Setting up data modeling for $project_dir"

cd "$client_dir" || error_exit "Failed to change to client directory"
npx shadcn-ui@latest add alert || error_exit "Failed to add shadcn-ui alert component"

mkdir -p "$server_dir/src/services" "$client_dir/src/components/DataModelBuilder"


# Create backend service for data modeling
cat << EOF > "$server_dir/src/services/dataModelingService.js"
// client/services/dataModelingService.js

const { query, sequelize, Sequelize } = require('../utils/db');

class DataModelingService {
  async createTable(modelDefinition) {
    const fields = modelDefinition.fields.map(field => \`\${field.name} \${field.type}\`).join(', ');
    const sql = \`CREATE TABLE \${modelDefinition.name} (\${fields}, created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP)\`;
    await query(sql);
  }

  async saveModel(modelDefinition) {
    const DataModel = sequelize.define('DataModel', {
      name: Sequelize.STRING,
      fields: Sequelize.JSON
    });
    await DataModel.sync();
    await DataModel.create({
      name: modelDefinition.name,
      fields: modelDefinition.fields
    });
    await this.createTable(modelDefinition);
  }

  async getModels() {
    const res = await query('SELECT * FROM data_models');
    return res.rows;
  }
}

module.exports = new DataModelingService();
EOF



echo "Creating frontend component for data model builder."
# Create frontend component for data model builder
cat << EOF > "$client_dir/src/components/DataModelBuilder/DataModelBuilder.js"
import React, { useState } from 'react';
import { Alert, AlertDescription } from '@/components/ui/alert';

const DataModelBuilder = () => {
  const [modelName, setModelName] = useState('');
  const [fields, setFields] = useState([]);
  const [error, setError] = useState('');
  const [success, setSuccess] = useState('');

  const addField = () => {
    setFields([...fields, { name: '', type: 'VARCHAR(255)' }]);
  };

  const updateField = (index, key, value) => {
    const updatedFields = [...fields];
    updatedFields[index][key] = value;
    setFields(updatedFields);
  };

  const saveModel = async () => {
    setError('');
    setSuccess('');

    if (!modelName.trim()) {
      setError('Model name is required.');
      return;
    }

    if (fields.length === 0) {
      setError('At least one field is required.');
      return;
    }

    if (fields.some(field => !field.name.trim())) {
      setError('All fields must have a name.');
      return;
    }

    try {
      const response = await fetch('/api/models', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({ name: modelName, fields }),
      });

      if (!response.ok) {
        throw new Error('Failed to save the model');
      }

      setSuccess('Model saved successfully!');
      setModelName('');
      setFields([]);
    } catch (err) {
      setError(err.message);
    }
  };

  return (
    <div className="p-4 max-w-md mx-auto">
      <h2 className="text-2xl font-bold mb-4">Data Model Builder</h2>
      {error && (
        <Alert variant="destructive" className="mb-4">
          <AlertDescription>{error}</AlertDescription>
        </Alert>
      )}
      {success && (
        <Alert variant="default" className="mb-4">
          <AlertDescription>{success}</AlertDescription>
        </Alert>
      )}
      <input
        type="text"
        value={modelName}
        onChange={(e) => setModelName(e.target.value)}
        placeholder="Model Name"
        className="w-full p-2 mb-4 border rounded"
      />
      {fields.map((field, index) => (
        <div key={index} className="flex mb-2">
          <input
            type="text"
            value={field.name}
            onChange={(e) => updateField(index, 'name', e.target.value)}
            placeholder="Field Name"
            className="flex-1 p-2 mr-2 border rounded"
          />
          <select
            value={field.type}
            onChange={(e) => updateField(index, 'type', e.target.value)}
            className="p-2 border rounded"
          >
            <option value="VARCHAR(255)">String</option>
            <option value="INT">Number</option>
            <option value="TIMESTAMP">Date</option>
            <option value="BOOLEAN">Boolean</option>
          </select>
        </div>
      ))}
      <div className="flex justify-between mt-4">
        <button onClick={addField} className="bg-blue-500 text-white p-2 rounded">
          Add Field
        </button>
        <button onClick={saveModel} className="bg-green-500 text-white p-2 rounded">
          Save Model
        </button>
      </div>
    </div>
  );
};

export default DataModelBuilder;
EOF

log "Data modeling setup completed for $project_dir"
