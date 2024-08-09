// tests/analyzeCodeQuality.test.js
const { analyzeCodeQuality } = require('../utils/analyzeCodeQuality');
const fs = require('fs');

test('Analyze Code Quality', async () => {
  const path = require('path');
  const projectRoot = path.resolve(__dirname, '..');
  const readmeFilePath = path.join(projectRoot, 'testDir/sampleCode.js');

  const result = await analyzeCodeQuality(readmeFilePath);
  expect(result).toContain('Sample Code');
}, 10000); // Increased timeout to 10000 ms