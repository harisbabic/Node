const mongoose = require('mongoose');
const User = require('../../models/User');
const Service = require('../../models/Service');
const request = require('supertest');
const app = require('../../app');

let token;

beforeAll(async () => {
  await mongoose.connect(process.env.MONGO_URI, {
    useNewUrlParser: true,
    useUnifiedTopology: true,
  });
  const user = new User({ username: 'testuser', email: 'testuser@example.com', password: 'password123' });
  await user.save();

  const response = await request(app)
    .post('/login')
    .send({ username: 'testuser', password: 'password123' });

  token = response.body.token;
});

beforeEach(async () => {
  await Service.deleteMany({});
});

afterAll(async () => {
  await mongoose.connection.close();
});

describe('Service Routes Test', () => {
  it('POST /api/services/add - success', async () => {
    const res = await request(app)
      .post('/api/services/add')
      .set('Authorization', `Bearer ${token}`)
      .send({
        name: 'Test Service',
        description: 'Test Description',
        price: 100,
        duration: 60,
      });

    expect(res.statusCode).toEqual(201);
    expect(res.body).toHaveProperty('name', 'Test Service');
  });

  it('GET /api/services - success', async () => {
    const res = await request(app).get('/api/services');
    expect(res.statusCode).toEqual(200);
    expect(Array.isArray(res.body)).toBe(true);
  });

  // Additional tests for update and delete routes
});


// tests/integration/services.test.js
// const mongoose = require('mongoose');
// const User = require('../../models/User');
// const Service = require('../../models/Service');
// const request = require('supertest');
// const app = require('../../app');

// let token;

// beforeAll(async () => {
//   await mongoose.connect(process.env.MONGO_URI, {
//     useNewUrlParser: true,
//     useUnifiedTopology: true,
//   });
//   const user = new User({ username: 'testuser', email: 'testuser@example.com', password: 'password123' });
//   await user.save();

//   const response = await request(app)
//     .post('/login')
//     .send({ username: 'testuser', password: 'password123' });

//   token = response.body.token;
// });

// beforeEach(async () => {
//   await mongoose.connection.db.dropDatabase();
//   await Service.deleteMany({});
//   await User.deleteMany({});
//   await new User({ username: 'testuser', email: 'testuser@example.com', password: 'password123' }).save();
// });

// afterAll(async () => {
//   await mongoose.connection.close();
// });

// describe('Service Routes Test', () => {
//   it('POST /api/services/add - success', async () => {
//     const res = await request(app)
//       .post('/api/services/add')
//       .set('Authorization', `Bearer ${token}`)
//       .send({
//         name: 'Test Service',
//         description: 'Test Description',
//         price: 100,
//         duration: 60,
//       });

//     expect(res.statusCode).toEqual(201);
//     expect(res.body).toHaveProperty('name', 'Test Service');
//   });

//   it('GET /api/services - success', async () => {
//     const res = await request(app).get('/api/services');
//     expect(res.statusCode).toEqual(200);
//     expect(Array.isArray(res.body)).toBe(true);
//   });

//   // Additional tests for update and delete routes
// });
