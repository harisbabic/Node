// tests/gptHelper.test.js
const { gptAnalyzeCode } = require('../utils/gptHelper');

test('gptAnalyzeCode should return valid code snippet', async () => {
  const code = await gptAnalyzeCode('Create a React class component');
  expect(code).toContain('class ExampleComponent extends React.Component');
}, 10000); // Increase timeout to 10000 ms

