// utils/verifyProjectStructure.js
/**
 * Verifies that the project structure matches the expected layout.
 * 
 * @param {string} directory - The root directory to verify.
 * @returns {string} - Result of the verification.
 */
const fs = require('fs');
const path = require('path');

const expectedStructure = {
  'package.json': 'file',
  'utils': 'directory',
  'tests': 'directory',
  'scripts': 'directory',
  // Add more expected files and directories here
};

function verifyStructure(directory = '.') {
  for (const [name, type] of Object.entries(expectedStructure)) {
    const fullPath = path.join(directory, name);
    if (!fs.existsSync(fullPath)) {
      return `Missing ${type}: ${name}`;
    }
    const stat = fs.statSync(fullPath);
    if ((type === 'file' && !stat.isFile()) || (type === 'directory' && !stat.isDirectory())) {
      return `Expected ${name} to be a ${type}, but it's not`;
    }
  }
  return 'Project structure is correct';
}

module.exports = { verifyStructure };
