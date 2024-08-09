// File: tests/sum.test.js
// Purpose: Unit test for sum function
// Description: This test checks if the sum function correctly adds two numbers.

const sum = require('../src/sum');

test('adds 1 + 2 to equal 3', () => {
  expect(sum(1, 2)).toBe(3);
});
