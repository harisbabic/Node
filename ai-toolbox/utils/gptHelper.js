// utils/gptHelper.js
/**
 * Analyzes the given code snippet using OpenAI's GPT-4 model.
 * 
 * @param {string} code - The code snippet to analyze.
 * @returns {Promise<string>} - The analysis result from GPT-4.
 */
const fs = require('fs');
const { gptConnect } = require('./gptConnect');

async function gptAnalyzeCode(code) {
  try {
    const response = await gptConnect.chat.completions.create({
      model: "gpt-4",
      messages: [
        {
          role: "system",
          content: "You are a helpful assistant that analyzes code."
        },
        {
          role: "user",
          content: `Analyze this code:\n\n${code}`
        }
      ],
      max_tokens: 150
    });
    return response.choices[0].message.content.trim();
  } catch (error) {
    console.error('Error analyzing code:', error);
    throw error;
  }
}

module.exports = { gptAnalyzeCode };
