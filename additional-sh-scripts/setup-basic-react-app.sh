#!/bin/bash
# setup-core-features.sh
# Usage: ./setup-core-features.sh <project-name>

project_name=$1
project_dir="/d/Node/projects/$project_name"

# Install core dependencies
cd "$project_dir"
npm install react react-dom react-router-dom redux react-redux axios styled-components

# Set up routing
cat << EOF > "$project_dir/src/App.js"
import React from 'react';
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom';
import Home from './pages/Home';
import About from './pages/About';
import NotFound from './pages/NotFound';

const App = () => (
  <Router>
    <Switch>
      <Route exact path="/" component={Home} />
      <Route path="/about" component={About} />
      <Route component={NotFound} />
    </Switch>
  </Router>
);

export default App;
EOF

# Set up Redux store
mkdir -p "$project_dir/src/store"
cat << EOF > "$project_dir/src/store/index.js"
import { createStore, applyMiddleware, combineReducers } from 'redux';
import thunk from 'redux-thunk';

const rootReducer = combineReducers({
  // Add your reducers here
});

const store = createStore(rootReducer, applyMiddleware(thunk));

export default store;
EOF

# Set up API service
cat << EOF > "$project_dir/src/services/api.js"
import axios from 'axios';

const api = axios.create({
  baseURL: process.env.REACT_APP_API_URL,
});

export const getData = () => api.get('/data');
export const postData = (data) => api.post('/data', data);

export default api;
EOF

echo "Core features set up for $project_name"
