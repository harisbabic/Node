// tests/unit/dataModelingService.test.js
const dataModelingService = require('../../services/dataModelingService');
const pool = require('../../config/database');

describe('DataModelingService', () => {
  beforeAll(async () => {
    await pool.query('CREATE TABLE IF NOT EXISTS data_models (id SERIAL PRIMARY KEY, name VARCHAR(255), fields JSON)');
  });

  afterAll(async () => {
    await pool.query('DROP TABLE IF EXISTS data_models');
    await pool.end();
  });

  test('should create a new data model', async () => {
    const modelDefinition = { name: 'test_model', fields: [{ name: 'id', type: 'SERIAL PRIMARY KEY' }, { name: 'name', type: 'VARCHAR(255)' }] };
    const result = await dataModelingService.createModel(modelDefinition);
    expect(result).toEqual({ message: 'Table created successfully' });
  });

  test('should save a new data model', async () => {
    const modelDefinition = { name: 'test_model', fields: [{ name: 'id', type: 'SERIAL PRIMARY KEY' }, { name: 'name', type: 'VARCHAR(255)' }] };
    const result = await dataModelingService.saveModel(modelDefinition);
    expect(result).toHaveProperty('id');
  });

  test('should retrieve all data models', async () => {
    const models = await dataModelingService.getModels();
    expect(models.length).toBeGreaterThan(0);
  });
});
