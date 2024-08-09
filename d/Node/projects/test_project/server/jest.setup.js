// jest.setup.js

require('dotenv').config();

jest.setTimeout(30000);

expect.extend({
  toBeWithinRange(received, floor, ceiling) {
    const pass = received >= floor && received <= ceiling;
    if (pass) {
      return {
        message: () => `expected ${received} not to be within range ${floor} - ${ceiling}`,
        pass: true,
      };
    } else {
      return {
        message: () => `expected ${received} to be within range ${floor} - ${ceiling}`,
        pass: false,
      };
    }
  },
});

beforeAll(() => {
  console.log('Starting all tests...');
});

afterAll(() => {
  console.log('All tests completed.');
});

if (typeof fetch === 'undefined') {
  global.fetch = require('node-fetch');
}

global.createMockResponse = (data, status = 200) => {
  return new Response(JSON.stringify(data), {
    status,
    headers: { 'Content-Type': 'application/json' },
  });
};

global.wait = (ms) => new Promise(resolve => setTimeout(resolve, ms));

const mockDate = new Date('2024-08-05T12:00:00Z');
global.Date = class extends Date {
  constructor() {
    return mockDate;
  }
};
