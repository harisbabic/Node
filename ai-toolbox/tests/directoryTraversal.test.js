// tests/directoryTraversal.test.js
const path = require('path');
const directoryTraversal = require('../utils/directoryTraversal');

test('should list all files in the directory', done => {
  const files = [];
  const expectedFileCount = 1; // Adjust based on actual file count in testDir
  const projectRoot = path.resolve(__dirname, '..');
  const expectedFilePath = path.join(projectRoot, 'testDir/sampleCode.js').replace(/\\/g, '/');

  directoryTraversal(path.join(projectRoot, 'testDir'), (err, filePath) => {
    if (err) return done(err);
    files.push(filePath.replace(/\\/g, '/'));
    if (files.length === expectedFileCount) {
      expect(files).toContain(expectedFilePath);
      done();
    }
  });
}, 80000); // Increase timeout if necessary
