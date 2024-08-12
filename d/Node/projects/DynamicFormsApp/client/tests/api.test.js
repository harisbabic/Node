import axios from 'axios';
import MockAdapter from 'axios-mock-adapter';

describe('API Integration Tests', () => {
  let mock;

  beforeEach(() => {
    mock = new MockAdapter(axios);
  });

  afterEach(() => {
    mock.restore();
  });

  it('fetches projects successfully', async () => {
    const mockProjects = [
      { _id: '1', name: 'Project 1' },
      { _id: '2', name: 'Project 2' },
    ];

    mock.onGet('/api/projects').reply(200, mockProjects);

    const response = await axios.get('/api/projects');
    expect(response.status).toBe(200);
    expect(response.data).toEqual(mockProjects);
  });
});
