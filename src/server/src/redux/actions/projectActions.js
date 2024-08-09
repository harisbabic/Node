import axios from 'axios';
import {
  GET_PROJECTS,
  ADD_PROJECT,
  DELETE_PROJECT,
  SET_CURRENT,
  CLEAR_CURRENT,
  PROJECT_ERROR
} from './types';

// Get Projects
export const getProjects = () => async dispatch => {
  try {
    const res = await axios.get('/api/projects');
    dispatch({
      type: GET_PROJECTS,
      payload: res.data
    });
  } catch (err) {
    dispatch({
      type: PROJECT_ERROR,
      payload: err.response.msg
    });
  }
};

// Add Project
export const addProject = (project) => async dispatch => {
  const config = {
    headers: {
      'Content-Type': 'application/json'
    }
  };

  try {
    const res = await axios.post('/api/projects', project, config);
    dispatch({
      type: ADD_PROJECT,
      payload: res.data
    });
  } catch (err) {
    dispatch({
      type: PROJECT_ERROR,
      payload: err.response.msg
    });
  }
};

// Delete Project
export const deleteProject = (id) => async dispatch => {
  try {
    await axios.delete(`/api/projects/${id}`);
    dispatch({
      type: DELETE_PROJECT,
      payload: id
    });
  } catch (err) {
    dispatch({
      type: PROJECT_ERROR,
      payload: err.response.msg
    });
  }
};

// Set Current Project
export const setCurrentProject = (project) => {
  return {
    type: SET_CURRENT,
    payload: project
  };
};

// Clear Current Project
export const clearCurrentProject = () => {
  return { type: CLEAR_CURRENT };
};
