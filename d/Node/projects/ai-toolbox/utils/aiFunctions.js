// utils/aiFunctions.js
const { gptAnalyzeCode } = require('./gptHelper');

async function analyzeCodeSnippet(codeSnippet) {
  try {
    const analysis = await gptAnalyzeCode(codeSnippet);
    console.log('Code Analysis:', analysis);
    return analysis;
  } catch (error) {
    console.error('Error analyzing code snippet:', error);
    throw error;
  }
}

module.exports = { analyzeCodeSnippet };
