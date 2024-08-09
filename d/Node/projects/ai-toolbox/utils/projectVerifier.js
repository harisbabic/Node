// utils/projectVerifier.js
const fs = require('fs');
const path = require('path');
const exec = require('child_process').exec;
const { gptAnalyzeCode } = require('./gptHelper');

function verifyProjectStructure() {
  const expectedStructure = [
    'package.json',
    'jest.config.js',
    'src/',
    'tests/',
    'utils/',
  ];

  expectedStructure.forEach((item) => {
    if (!fs.existsSync(path.join(__dirname, '..', item))) {
      console.error(`Missing ${item}`);
    } else {
      console.log(`${item} exists`);
    }
  });
}

function verifyDependencies() {
  exec('npm ls', (err, stdout, stderr) => {
    if (err) {
      console.error('Error in verifying dependencies:', stderr);
    } else {
      console.log('Dependencies verified:', stdout);
    }
  });
}

function runTests() {
  exec('npm test', (err, stdout, stderr) => {
    if (err) {
      console.error('Tests failed:', stderr);
    } else {
      console.log('Test results:', stdout);
    }
  });
}

function analyzeCode() {
  const filesToAnalyze = [
    path.join(__dirname, '..', 'src', 'index.js'),
    path.join(__dirname, '..', 'utils', 'commandLogger.js'),
    // Add more files as needed
  ];

  filesToAnalyze.forEach((file) => {
    const code = fs.readFileSync(file, 'utf-8');
    gptAnalyzeCode(code).then((analysis) => {
      console.log(`Analysis for ${file}: ${analysis}`);
    });
  });
}

module.exports = { verifyProjectStructure, verifyDependencies, runTests, analyzeCode };
