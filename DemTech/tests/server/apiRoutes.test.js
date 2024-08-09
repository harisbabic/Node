const request = require('supertest');
const app = require('../server/app');
import { someTestUtil } from 'shared-utils/test-utils';

describe('API Routes Tests', () => {
  it('GET /api/services - success', async () => {
    const res = await request(app).get('/api/services');
    expect(res.statusCode).toEqual(200);
    expect(Array.isArray(res.body)).toBe(true);
  });

  it('POST /api/services/add - success', async () => {
    const res = await request(app)
      .post('/api/services/add')
      .send({
        name: 'Test Service',
        description: 'Test Description',
        price: 100,
        duration: 60,
      });
    expect(res.statusCode).toEqual(201);
    expect(res.body).toHaveProperty('name', 'Test Service');
  });
});
