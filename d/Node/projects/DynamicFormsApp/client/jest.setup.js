// jest.setup.js for client-side testing

require('@testing-library/jest-dom/extend-expect');

jest.setTimeout(30000);

expect.extend({
  toHaveClass(received, className) {
    const pass = received.classList.contains(className);
    if (pass) {
      return {
        message: () => `expected ${received} not to have class ${className}`,
        pass: true,
      };
    } else {
      return {
        message: () => `expected ${received} to have class ${className}`,
        pass: false,
      };
    }
  },
});

beforeEach(() => {
  // Clean up the DOM after each test
  document.body.innerHTML = '';
});

afterEach(() => {
  // Any global cleanup if necessary
  console.log('Test completed.');
});

global.wait = (ms) => new Promise(resolve => setTimeout(resolve, ms));
