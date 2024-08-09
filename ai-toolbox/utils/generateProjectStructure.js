// utils/generateProjectStructure.js
// Purpose: Generate the project structure.
const fs = require('fs');
const path = require('path');

function generateProjectStructure(dir) {
  const files = fs.readdirSync(dir).filter(file => !['node_modules', 'package-lock.json'].includes(file));
  return files;
}

module.exports = { generateProjectStructure };
