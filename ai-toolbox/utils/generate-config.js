// File: scripts/generate-config.js
// Purpose: Generate configuration files for the project
// Description: This script will create initial configuration files needed for the project setup.

const fs = require('fs');
const path = require('path');

// Define paths relative to the script's location
const projectRoot = path.resolve(__dirname, '..');
const configPath = path.join(projectRoot, 'config/config.json');

const configContent = {
  projectName: "ai-toolbox",
  version: "1.0.0"
};

function generateConfig() {
  fs.writeFileSync(configPath, JSON.stringify(configContent, null, 2));
  console.log('Configuration file generated at config/config.json');
}

module.exports = { generateConfig };
