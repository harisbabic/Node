import axios from 'axios';
import {
  GET_TASKS,
  ADD_TASK,
  DELETE_TASK,
  SET_CURRENT,
  CLEAR_CURRENT,
  TASK_ERROR
} from './types';

// Get Tasks
export const getTasks = () => async dispatch => {
  try {
    const res = await axios.get('/api/tasks');
    dispatch({
      type: GET_TASKS,
      payload: res.data
    });
  } catch (err) {
    dispatch({
      type: TASK_ERROR,
      payload: err.response.msg
    });
  }
};

// Add Task
export const addTask = (task) => async dispatch => {
  const config = {
    headers: {
      'Content-Type': 'application/json'
    }
  };

  try {
    const res = await axios.post('/api/tasks', task, config);
    dispatch({
      type: ADD_TASK,
      payload: res.data
    });
  } catch (err) {
    dispatch({
      type: TASK_ERROR,
      payload: err.response.msg
    });
  }
};

// Delete Task
export const deleteTask = (id) => async dispatch => {
  try {
    await axios.delete(`/api/tasks/${id}`);
    dispatch({
      type: DELETE_TASK,
      payload: id
    });
  } catch (err) {
    dispatch({
      type: TASK_ERROR,
      payload: err.response.msg
    });
  }
};

// Set Current Task
export const setCurrentTask = (task) => {
  return {
    type: SET_CURRENT,
    payload: task
  };
};

// Clear Current Task
export const clearCurrentTask = () => {
  return { type: CLEAR_CURRENT };
};
