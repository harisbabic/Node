// tests/codeAnalyzer.test.js
const { analyzeCode } = require('../utils/codeAnalyzer');

const fs = require('fs');

test('analyzeCode should return analysis', async () => {
  const path = require('path');
  // Define paths relative to the script's location
  const projectRoot = path.resolve(__dirname, '..');
  const readmeFilePath = path.join(projectRoot, 'testDir/sampleCode.js');
  const analysis = await analyzeCode(readmeFilePath);
  expect(analysis).toContain('Sample Code');
});

