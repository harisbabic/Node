// tests/checkDependencies.test.js
const { checkDependencies } = require('../utils/checkDependencies');

test('Check Dependencies', () => {
  const result = checkDependencies();
  expect(result).toContain('Some dependencies are outdated');
});
