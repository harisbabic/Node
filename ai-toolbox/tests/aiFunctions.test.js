// tests/aiFunctions.test.js
const { analyzeCodeSnippet } = require('../utils/aiFunctions');

test('Analyze Code Snippet', async () => {
  const codeSnippet = `
    function multiply(a, b) {
      return a * b;
    }
    module.exports = multiply;
  `;
  const analysis = await analyzeCodeSnippet(codeSnippet);
  expect(analysis).toContain('This is a simple Node.js module which exports a function named `multiply`');
}, 15000); // Increase timeout to 15000 ms
