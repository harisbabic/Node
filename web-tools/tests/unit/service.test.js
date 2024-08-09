// tests/unit/service.test.js
require('dotenv').config();
const mongoose = require('mongoose');
const Service = require('../../server/models/Service');

describe('Service Model Test', () => {
  beforeAll(async () => {
    await mongoose.connect(process.env.MONGO_URI, {
      useNewUrlParser: true,
      useUnifiedTopology: true,
    });
  });

  afterAll(async () => {
    await mongoose.disconnect();
  });

  it('create & save service successfully', async () => {
    const serviceData = {
      name: 'Test Service',
      description: 'Test Description',
      provider: 'Test Provider',
      duration: 60,
      price: 100
    };
    const validService = new Service(serviceData);
    const savedService = await validService.save();
    expect(savedService._id).toBeDefined();
    expect(savedService.name).toBe(serviceData.name);
    expect(savedService.description).toBe(serviceData.description);
    expect(savedService.provider).toBe(serviceData.provider);
    expect(savedService.duration).toBe(serviceData.duration);
    expect(savedService.price).toBe(serviceData.price);
  });

  it('insert service successfully, but the field not defined in schema should be undefined', async () => {
    const serviceWithInvalidField = new Service({
      name: 'Test Service',
      description: 'Test Description',
      provider: 'Test Provider',
      duration: 60,
      price: 100,
      extraField: 'extra'
    });
    const savedService = await serviceWithInvalidField.save();
    expect(savedService._id).toBeDefined();
    expect(savedService.extraField).toBeUndefined();
  });

  it('create service without required field should fail', async () => {
    const serviceWithoutRequiredField = new Service({ name: 'Test Service' });
    let err;
    try {
      await serviceWithoutRequiredField.save();
    } catch (error) {
      err = error;
    }
    expect(err).toBeInstanceOf(mongoose.Error.ValidationError);
    expect(err.errors.description).toBeDefined();
    expect(err.errors.provider).toBeDefined();
    expect(err.errors.duration).toBeDefined();
    expect(err.errors.price).toBeDefined();
  });
});
