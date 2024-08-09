// utils/codeAnalyzer.js
const fs = require('fs');
const { gptConnect } = require('./gptConnect');

async function analyzeCode(filePath) {
  const code = fs.readFileSync(filePath, 'utf-8');
  const response = await gptConnect.chat.completions.create({
    model: 'gpt-3.5-turbo',
    messages: [{ role: 'user', content: code }],
  });
  return response.choices[0].message.content;
}

module.exports = { analyzeCode };