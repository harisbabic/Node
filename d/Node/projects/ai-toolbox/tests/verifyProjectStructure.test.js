// tests/verifyProjectStructure.test.js
const { verifyStructure } = require('../utils/verifyProjectStructure');

test('Verify Project Structure', () => {
  const result = verifyStructure();
  expect(result).toBe('Project structure is correct');
});
