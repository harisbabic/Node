const { validateInput } = require('../utils');
import { someTestUtil } from 'shared-utils/test-utils';

describe('Validation Tests', () => {
  it('should reject invalid data', () => {
    const invalidData = { username: '' };
    expect(validateInput(invalidData)).toBe(false);
  });

  it('should accept valid data', () => {
    const validData = { username: 'validUser' };
    expect(validateInput(validData)).toBe(true);
  });
});
