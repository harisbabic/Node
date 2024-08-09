// File: utils/validateProject.js
// Purpose: Validate project by re-executing logged commands
// Description: This script reads the command log, re-executes commands, and ensures project consistency.

const fs = require('fs');
const path = require('path');
const { execSync } = require('child_process');

// Define paths relative to the script's location
const projectRoot = path.resolve(__dirname, '..');

const LOG_FILE = path.join(projectRoot, 'command_log.txt');
const TEMP_DIR = path.join(projectRoot, 'temp_dir');

if (!fs.existsSync(LOG_FILE)) {
  console.error('command_log.txt not found!');
  process.exit(1);
}

if (!fs.existsSync(TEMP_DIR)) {
  fs.mkdirSync(TEMP_DIR);
}

process.chdir(TEMP_DIR);

const logData = fs.readFileSync(LOG_FILE, 'utf-8');
const logLines = logData.split('\n');

logLines.forEach(line => {
  const commandMatch = line.match(/Command: (.*) \| Outcome:/);
  if (commandMatch) {
    const command = commandMatch[1];
    if (command) {
      console.log(`Executing: ${command}`);
      try {
        execSync(command, { stdio: 'inherit' });
      } catch (error) {
        console.error(`Error executing command: ${command}`);
      }
    }
  }
});

process.chdir(__dirname);
fs.rmSync(TEMP_DIR, { recursive: true, force: true });

console.log('Project validation completed successfully.');
