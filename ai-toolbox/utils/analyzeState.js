// File: utils/stateAnalyzer.js
// Purpose: Analyze project state and generate a report
// Description: This script scans the project directories and files, then generates a state report.

// utils/analyzeState.js
const fs = require('fs');
const path = require('path');

function analyzeState(directory) {
  const state = {
    files: [],
    directories: []
  };

  function traverse(dir) {
    const items = fs.readdirSync(dir);
    items.forEach(item => {
      const fullPath = path.join(dir, item);
      const stats = fs.statSync(fullPath);
      if (stats.isDirectory()) {
        state.directories.push(fullPath);
        traverse(fullPath);
      } else {
        state.files.push(fullPath);
      }
    });
  }

  traverse(directory);
  return state;
}

module.exports = { analyzeState };
