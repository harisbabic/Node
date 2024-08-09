// utils/gptConnect.js
// require('dotenv').config();
// const { OpenAI } = require('openai');

// const openai = new OpenAI({
//     apiKey: process.env.OPENAI_API_KEY
// });

// module.exports = { openai };

// utils/gptConnect.js
// const fs = require('fs');
import 'openai/shims/node'; // Add this line 
require('dotenv').config();
const { OpenAI } = require('openai');

const gptConnect = new OpenAI({
  apiKey: process.env.OPENAI_API_KEY,
  dangerouslyAllowBrowser: true
});

module.exports = { gptConnect };
