const config = require('../config');
import { someTestUtil } from 'shared-utils/test-utils';

describe('Configuration Tests', () => {
  it('should have a valid database configuration', () => {
    expect(config.db.host).toBeDefined();
    expect(config.db.port).toBeDefined();
  });
});
