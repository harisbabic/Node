// tests/generateProjectStructure.test.js
const { generateProjectStructure } = require('../utils/generateProjectStructure');

describe('generateProjectStructure', () => {
  test('should generate project structure excluding node_modules and package-lock.json', () => {
    const structure = generateProjectStructure(process.cwd());
    expect(structure).not.toContain('node_modules');
    expect(structure).not.toContain('package-lock.json');
    expect(structure).toContain('package.json');
  });
});
