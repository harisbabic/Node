#!/bin/bash
# setup-redux.sh

set -e

project_dir="$1"

if [ -z "$project_dir" ]; then
  echo "Usage: $0 <project-dir>"
  exit 1
fi

client_dir="$project_dir/client"
cd "$client_dir"

# Install Redux and related packages
npm install redux react-redux @reduxjs/toolkit

# Create Redux directory structure
mkdir -p src/redux/slices

# Create store.js, root reducer, and example slice (as in your original script)

# Update index.js to use Redux
index_file="src/index.js"
temp_file=$(mktemp)

cat << EOF > "$temp_file"
import React from 'react';
import ReactDOM from 'react-dom/client';
import { Provider } from 'react-redux';
import store from './redux/store';
import App from './App';
import './index.css';

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <React.StrictMode>
    <Provider store={store}>
      <App />
    </Provider>
  </React.StrictMode>
);
EOF

mv "$temp_file" "$index_file"

echo "Redux setup completed for $client_dir directory."
