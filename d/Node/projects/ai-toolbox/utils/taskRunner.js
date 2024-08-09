// File: utils/taskRunner.js
// Purpose: Run automated tasks such as tests
// Description: This script uses child processes to run tasks and logs the results.

const { exec } = require('child_process');

function runTests() {
  exec('npm test', (err, stdout, stderr) => {
    if (err) {
      console.error(`Error: ${stderr}`);
      return;
    }
    console.log(`Results: ${stdout}`);
  });
}

module.exports = { runTests };
