const request = require('supertest');
const app = require('../../app');
const User = require('../../models/User');

describe('Auth Controller', () => {
  beforeAll(async () => {
    await User.create({ username: 'testuser', email: 'testuser@example.com', password: 'password123' });
  });

  afterAll(async () => {
    // Clean up the database after tests
  });

  test('should register a new user', async () => {
    const response = await request(app)
      .post('/api/auth/register')
      .send({ username: 'newuser', email: 'newuser@example.com', password: 'password123' });
    expect(response.statusCode).toBe(201);
    expect(response.body).toHaveProperty('user');
  });

  test('should login an existing user', async () => {
    const response = await request(app)
      .post('/api/auth/login')
      .send({ email: 'testuser@example.com', password: 'password123' });
    expect(response.statusCode).toBe(200);
    expect(response.body).toHaveProperty('token');
  });

  // Add more comprehensive tests
});
