// tests/analyzeState.test.js
const { analyzeState } = require('../utils/analyzeState');
const path = require('path');

test('should analyze project state and return report', () => {
  const projectRoot = path.resolve(__dirname, '..');
  const stateReport = analyzeState(projectRoot);
  expect(stateReport).toHaveProperty('files');
  expect(stateReport).toHaveProperty('directories');
});
