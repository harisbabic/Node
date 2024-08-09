const { formatDate, capitalize } = require('../utils');
import { someTestUtil } from 'shared-utils/test-utils';

describe('Utility Function Tests', () => {
  it('should format date correctly', () => {
    const date = new Date('2024-07-20');
    expect(formatDate(date)).toBe('2024-07-20');
  });

  it('should capitalize string correctly', () => {
    expect(capitalize('hello')).toBe('Hello');
  });
});
