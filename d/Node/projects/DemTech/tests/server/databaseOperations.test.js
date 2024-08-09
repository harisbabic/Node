const mongoose = require('mongoose');
const User = require('../server/models/User');
const Service = require('../server/models/Service');
import { someTestUtil } from 'shared-utils/test-utils';

describe('Database Operations Tests', () => {
  beforeAll(async () => {
    await mongoose.connect(process.env.MONGO_URI, {
      useNewUrlParser: true,
      useUnifiedTopology: true,
    });
  });

  afterAll(async () => {
    await mongoose.connection.close();
  });

  it('creates a new user', async () => {
    const user = new User({ username: 'testuser', email: 'testuser@example.com', password: 'password123' });
    const savedUser = await user.save();
    expect(savedUser.username).toBe('testuser');
  });

  it('creates a new service', async () => {
    const service = new Service({ name: 'Test Service', description: 'Test Description', price: 100, duration: 60 });
    const savedService = await service.save();
    expect(savedService.name).toBe('Test Service');
  });
});
