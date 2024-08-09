// utils/testApiConnection.js
// const { openai } = require('./gptConnect');
const fs = require('fs');
const { gptAnalyzeCode } = require('./gptHelper');

async function testConnection() {
  try {
    const codeSnippet = `
    function add(a, b) {
      return a + b;
    }
    module.exports = add;
    `;
    const analysis = await gptAnalyzeCode(codeSnippet);
    console.log('API Connection Successful:', analysis);
  } catch (error) {
    console.error('API Connection Failed:', error);
  }
}

testConnection();
