// utils/checkDependencies.js
const { execSync } = require('child_process');

function checkDependencies() {
  try {
    execSync('npm outdated', { stdio: 'ignore' });
    return 'All dependencies are up-to-date';
  } catch (error) {
    return 'Some dependencies are outdated';
  }
}

module.exports = { checkDependencies };
