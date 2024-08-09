// File: utils/commandLogger.js
// Purpose: Log commands executed in the project
// Description: This utility captures and formats command logs with timestamps.

const fs = require('fs');
const path = require('path');

// Define paths relative to the script's location
const projectRoot = path.resolve(__dirname, '..');

function logCommand(command) {
  const logPath = path.join(projectRoot, 'command_log.txt');
  const timestamp = new Date().toISOString();
  fs.appendFileSync(logPath, `${timestamp}: ${command}\n`);
}

module.exports = { logCommand };
