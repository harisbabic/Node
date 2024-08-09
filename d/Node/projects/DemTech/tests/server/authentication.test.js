const request = require('supertest');
const app = require('../server/app');
const User = require('../server/models/User');
import { someTestUtil } from 'shared-utils/test-utils';

describe('Authentication Tests', () => {
  beforeAll(async () => {
    await mongoose.connect(process.env.MONGO_URI, {
      useNewUrlParser: true,
      useUnifiedTopology: true,
    });
    await new User({ username: 'testuser', email: 'testuser@example.com', password: 'password123' }).save();
  });

  afterAll(async () => {
    await mongoose.connection.close();
  });

  it('logs in a user', async () => {
    const res = await request(app)
      .post('/login')
      .send({ username: 'testuser', password: 'password123' });
    expect(res.statusCode).toEqual(200);
    expect(res.body).toHaveProperty('token');
  });
});
