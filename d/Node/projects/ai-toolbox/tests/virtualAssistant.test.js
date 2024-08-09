// tests/virtualAssistant.test.js
const { virtualAssistant } = require('../utils/virtualAssistant');

test('should analyze all code files and suggest fixes', async () => {
  const results = await virtualAssistant();
  expect(results).not.toBeNull();
  results.forEach(result => {
    expect(result).toHaveProperty('file');
    expect(result).toHaveProperty('analysis');
  });
}, 15000); // Increase timeout to 15 seconds
