module.exports = {
  testEnvironment: 'node',
  testMatch: ['**/tests/**/*.js', '**/?(*.)+(spec|test).js'],
  collectCoverageFrom: ['src/**/*.js'],
  coveragePathIgnorePatterns: ['/node_modules/', '/tests/'],
  coverageReporters: ['text', 'lcov'],
  setupFilesAfterEnv: ['./jest.setup.js']
};
