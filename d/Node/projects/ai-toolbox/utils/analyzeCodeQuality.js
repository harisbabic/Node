// utils/analyzeCodeQuality.js
const { gptAnalyzeCode } = require('./gptHelper');
const fs = require('fs');

async function analyzeCodeQuality(filePath) {
  try {
    const code = fs.readFileSync(filePath, 'utf-8');
    const analysis = await gptAnalyzeCode(code);
    return analysis;
  } catch (error) {
    return `Error analyzing code quality: ${error.message}`;
  }
}

module.exports = { analyzeCodeQuality };
