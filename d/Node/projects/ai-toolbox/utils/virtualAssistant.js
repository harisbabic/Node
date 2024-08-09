// utils/virtualAssistant.js
// const { traverseDirectory } = require('./directoryTraversal');
// const { verifyDependencies } = require('./dependencyVerifier');
// const { analyzeCode } = require('./codeAnalyzer');
// const { analyzeCodeQuality } = require('./analyzeCodeQuality');
// const fs = require('fs');
// const path = require('path');
// utils/virtualAssistant.js
const { analyzeCode } = require('./codeAnalyzer');
const fs = require('fs');
const path = require('path');
const gptConnect = require('./gptConnect');

async function virtualAssistant() {
  try {
    const dirPath = path.resolve(__dirname, '../testDir');
    const files = fs.readdirSync(dirPath).filter(file => file.endsWith('.js'));
    const results = await Promise.all(files.map(file => analyzeCode(path.join(dirPath, file))));
    return results.map((analysis, index) => ({ file: files[index], analysis }));
  } catch (error) {
    console.error('Error in Virtual Assistant:', error);
    return null;
  }
}

module.exports = { virtualAssistant };





// async function virtualAssistant() {
//   try {
//     const projectRoot = path.resolve(__dirname, '..');
//     const utilsPath = path.join(projectRoot, 'utils');
//     const testsPath = path.join(projectRoot, 'tests');
//     const scriptsPath = path.join(projectRoot, 'scripts');
    
//     const files = [
//       ...fs.readdirSync(utilsPath).map(file => path.join(utilsPath, file)),
//       ...fs.readdirSync(testsPath).map(file => path.join(testsPath, file)),
//       ...fs.readdirSync(scriptsPath).map(file => path.join(scriptsPath, file)),
//     ];

//     const results = await Promise.all(files.map(async (file) => {
//       const content = fs.readFileSync(file, 'utf-8');
//       const analysis = await analyzeCodeQuality(file);
//       return { file, analysis };
//     }));

//     return results;
//   } catch (error) {
//     console.error('Error in Virtual Assistant:', error);
//     return null;
//   }
// }

// module.exports = { virtualAssistant };


// async function virtualAssistant() {
//   try {
//     const files = await traverseDirectory(process.cwd());
//     console.log('Files:', files);

//     const depsStatus = await verifyDependencies();
//     console.log('Dependencies Status:', depsStatus);

//     const assessCode = await analyzeCode(files);
//     console.log('Code Assessment:', assessCode);

//     const codeQuality = await analyzeCodeQuality(files);
//     console.log('Code Quality:', codeQuality);

//     return { files, depsStatus, assessCode, codeQuality };
//   } catch (error) {
//     console.error('Error in Virtual Assistant:', error);
//   }
// }

// module.exports = { virtualAssistant };
