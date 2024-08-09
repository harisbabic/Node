import axios from 'axios';
import { someTestUtil } from 'shared-utils/test-utils';

jest.mock('axios');

describe('API Requests Tests', () => {
  it('fetches data successfully from an API', async () => {
    const data = { data: [{ id: 1, name: 'Test Data' }] };
    axios.get.mockResolvedValue(data);

    const result = await axios.get('/api/test');
    expect(result.data).toEqual(data.data);
  });
});
