// File: utils/validateProject.test.js
const fs = require('fs');
const path = require('path');
const { execSync } = require('child_process');
const { logCommand } = require('../utils/commandLogger');
const { validateProject } = require('../utils/validateProject');

describe('Project Validation', () => {
  const logPath = path.join(__dirname, '../command_log.txt');
  const tempDir = path.join(__dirname, '../temp_dir');

  beforeAll(() => {
    if (fs.existsSync(logPath)) {
      fs.unlinkSync(logPath);
    }
    if (!fs.existsSync(tempDir)) {
      fs.mkdirSync(tempDir);
    }
    process.chdir(tempDir);
  });

  afterAll(() => {
    process.chdir(__dirname);
    fs.rmdirSync(tempDir, { recursive: true });
  });

  it('should validate the project by executing logged commands', () => {
    logCommand('npm init -y');
    logCommand('npm install jest');

    validateProject();

    const packageJsonPath = path.join(tempDir, 'package.json');
    const nodeModulesPath = path.join(tempDir, 'node_modules');

    expect(fs.existsSync(packageJsonPath)).toBe(true);
    expect(fs.existsSync(nodeModulesPath)).toBe(true);
  });
});
