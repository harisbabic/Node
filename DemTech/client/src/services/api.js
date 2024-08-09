import axios from 'axios';

const api = axios.create({
  baseURL: '/api',
  headers: {
    'Content-Type': 'application/json'
  }
});

export const setAuthToken = token => {
  if (token) {
    api.defaults.headers.common['x-auth-token'] = token;
  } else {
    delete api.defaults.headers.common['x-auth-token'];
  }
};

export const login = credentials => api.post('/auth/login', credentials);
export const register = userData => api.post('/auth/register', userData);
export const getBusinesses = () => api.get('/businesses');
export const createBusiness = businessData => api.post('/businesses', businessData);
// Implement similar functions for projects and invoices

export default api;
