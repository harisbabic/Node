// File: scripts/generate-config.test.js
const fs = require('fs');
const path = require('path');
const { generateConfig } = require('../utils/generate-config');

describe('generateConfig', () => {
  const configPath = path.join(__dirname, '..', 'config/config.json');

  beforeAll(() => {
    if (fs.existsSync(configPath)) fs.unlinkSync(configPath); // Ensure file starts empty
  });

  it('should create a config file', () => {
    generateConfig();
    const configContent = fs.readFileSync(configPath, 'utf-8');
    expect(configContent).toContain('"projectName": "ai-toolbox"');
    expect(configContent).toContain('"version": "1.0.0"');
  });
});
