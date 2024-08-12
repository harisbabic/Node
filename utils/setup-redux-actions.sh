#!/bin/bash
# setup-redux.sh

set -euo pipefail

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

project_dir="$1"

if [ -z "$project_dir" ]; then
  echo "Usage: $0 <project-dir>"
  exit 1
fi

if ! command -v npm &> /dev/null; then
  error_exit "npm could not be found, please install Node.js and npm first."
fi

client_dir="$project_dir/client"
src_dir="$client_dir/src"

cd "$client_dir"

log "Installing Redux and related packages..."
npm install redux react-redux @reduxjs/toolkit

log "Creating Redux directory structure..."
mkdir -p "$src_dir/redux/slices"

log "Creating store.js..."
cat << EOF > "$src_dir/redux/store.js"
import { configureStore } from '@reduxjs/toolkit';
import rootReducer from './slices';

const store = configureStore({
  reducer: rootReducer,
  devTools: process.env.NODE_ENV !== 'production',
});

export default store;
EOF

log "Creating root reducer (index.js in slices directory)..."
cat << EOF > "$src_dir/redux/slices/index.js"
import { combineReducers } from 'redux';
import exampleSlice from './exampleSlice';

const rootReducer = combineReducers({
  example: exampleSlice,
});

export default rootReducer;
EOF

log "Creating an example slice..."
cat << EOF > "$src_dir/redux/slices/exampleSlice.js"
import { createSlice } from '@reduxjs/toolkit';

const initialState = {
  value: 0,
};

const exampleSlice = createSlice({
  name: 'example',
  initialState,
  reducers: {
    increment: (state) => {
      state.value += 1;
    },
    decrement: (state) => {
      state.value -= 1;
    },
  },
});

export const { increment, decrement } = exampleSlice.actions;
export default exampleSlice.reducer;
EOF

log "Updating index.js to use Redux..."
sed -i "1i import { Provider } from 'react-redux';" "$src_dir/index.js"
sed -i "2i import store from './redux/store';" "$src_dir/index.js"
sed -i "s/<React.StrictMode>/<Provider store={store}><React.StrictMode>/" "$src_dir/index.js"
sed -i "s/<\/React.StrictMode>/<\/React.StrictMode><\/Provider>/" "$src_dir/index.js"

log "Updating App.js to remove redundant Redux provider..."
cat << EOF > "$src_dir/App.js"
import React from 'react';

const App = () => {
  return (
    <div>
      {/* Your app content here */}
    </div>
  );
};

export default App;
EOF

log "Updating index.js to use Redux..."
index_file="$src_dir/index.js"
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

log "Redux setup completed for $client_dir directory."
