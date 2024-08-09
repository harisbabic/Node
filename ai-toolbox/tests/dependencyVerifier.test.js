// tests/dependencyVerifier.test.js
const { verifyDependencies } = require('../utils/dependencyVerifier');
jest.mock('child_process', () => ({
  exec: jest.fn((cmd, callback) => callback(null, 'mocked output'))
}));

describe('Dependency Verifier', () => {
  it('should verify dependencies', async () => {
    const result = await verifyDependencies();
    expect(result).toEqual({
      "archiver": "^7.0.1",
      "dotenv": "^16.4.5",
      "openai": "^4.52.5",
      "postcss": "^8.4.39",
      "progress-stream": "^2.0.0",
      "react": "^17.0.2",
      "react-dom": "^17.0.2",
      "react-scripts": "^5.0.1"
    });
  });
});
