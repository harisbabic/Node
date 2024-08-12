const request = require('supertest');
const app = require('../../src/app');

describe('API Tests', () => {
  it('should return 200 OK for GET /', async () => {
    const res = await request(app).get('/');
    expect(res.statusCode).toBe(200);
  });
});
