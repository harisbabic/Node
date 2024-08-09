// File: utils/nextStep.js
// Purpose: Generate next steps using GPT
// Description: This script generates the next steps for the project based on the current state and history.

const { generateProjectPlan } = require('./gptHelper');

async function nextStep() {
  const plan = await generateProjectPlan('Generate next steps for my project...');
  console.log(plan);
}

nextStep();
