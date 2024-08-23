#!/bin/bash
# setup-client.sh
# Relative path: d/Node/utils/setup-client.sh
# Description: Sets up the client-side of the project

set -euo pipefail

# Source common functions and logger
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/common-functions.sh"
source "$SCRIPT_DIR/logger.sh"

# Check if project name is provided
if [ $# -eq 0 ]; then
    log_error "Please provide a project name as an argument."
    echo "Usage: $0 <project-name>"
    exit 1
fi

PROJECT_NAME="$1"
PROJECT_DIR="$NODE_DIR/projects/$PROJECT_NAME"
CLIENT_DIR="$PROJECT_DIR/client"

log_info "Setting up client for project: $PROJECT_NAME"

# Function to run npm install with error handling
npm_install() {
    if npm install "$@"; then
        log_info "Packages installed successfully: $*"
    else
        log_error "Failed to install packages: $*"
        exit 1
    fi
}

# Create client directory
ensure_directory "$CLIENT_DIR"
cd "$CLIENT_DIR" || exit 1

# Initialize a new React app with TypeScript
log_info "Initializing new React app with TypeScript..."
npx create-react-app . --template typescript

# Install additional dependencies
log_info "Installing additional dependencies..."
npm_install axios react-router-dom styled-components sass @reduxjs/toolkit react-redux

# Setup Redux
log_info "Setting up Redux..."
mkdir -p src/redux/slices
cat > src/redux/store.ts << EOL
import { configureStore } from '@reduxjs/toolkit';

export const store = configureStore({
  reducer: {
    // Add reducers here
  },
});

export type RootState = ReturnType<typeof store.getState>;
export type AppDispatch = typeof store.dispatch;
EOL

# Setup styled-components
log_info "Setting up styled-components..."
cat > src/styles/GlobalStyle.ts << EOL
import { createGlobalStyle } from 'styled-components';

const GlobalStyle = createGlobalStyle\`
  body {
    margin: 0;
    padding: 0;
    font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Roboto', 'Oxygen',
      'Ubuntu', 'Cantarell', 'Fira Sans', 'Droid Sans', 'Helvetica Neue',
      sans-serif;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
  }
\`;

export default GlobalStyle;
EOL

# Setup SASS
log_info "Setting up SASS..."
mv src/App.css src/App.scss
sed -i 's/App.css/App.scss/' src/App.tsx

# Setup API service
log_info "Setting up API service..."
mkdir -p src/services
cat > src/services/api.ts << EOL
import axios, { AxiosInstance } from 'axios';

const API_URL = process.env.REACT_APP_API_URL || 'http://localhost:3001/api';

const api: AxiosInstance = axios.create({
  baseURL: API_URL,
  headers: {
    'Content-Type': 'application/json',
  },
});

api.interceptors.request.use((config) => {
  const token = localStorage.getItem('token');
  if (token) {
    config.headers.Authorization = \`Bearer \${token}\`;
  }
  return config;
});

export default api;
EOL

# Setup responsive design utilities
log_info "Setting up responsive design utilities..."
mkdir -p src/styles
cat > src/styles/mediaQueries.ts << EOL
const size = {
  mobileS: '320px',
  mobileM: '375px',
  mobileL: '425px',
  tablet: '768px',
  laptop: '1024px',
  laptopL: '1440px',
  desktop: '2560px'
}

export const device = {
  mobileS: \`(min-width: \${size.mobileS})\`,
  mobileM: \`(min-width: \${size.mobileM})\`,
  mobileL: \`(min-width: \${size.mobileL})\`,
  tablet: \`(min-width: \${size.tablet})\`,
  laptop: \`(min-width: \${size.laptop})\`,
  laptopL: \`(min-width: \${size.laptopL})\`,
  desktop: \`(min-width: \${size.desktop})\`,
  desktopL: \`(min-width: \${size.desktop})\`
};
EOL

# Setup accessibility
log_info "Setting up accessibility utilities..."
cat > src/utils/accessibility.ts << EOL
export const setFocus = (elementId: string): void => {
  const element = document.getElementById(elementId);
  if (element) {
    element.focus();
  }
};

export const trapFocus = (element: HTMLElement): void => {
  const focusableEls = element.querySelectorAll('a[href]:not([disabled]), button:not([disabled]), textarea:not([disabled]), input[type="text"]:not([disabled]), input[type="radio"]:not([disabled]), input[type="checkbox"]:not([disabled]), select:not([disabled])');
  const firstFocusableEl = focusableEls[0] as HTMLElement;
  const lastFocusableEl = focusableEls[focusableEls.length - 1] as HTMLElement;

  element.addEventListener('keydown', function(e: KeyboardEvent) {
    if (e.key === 'Tab') {
      if ( e.shiftKey ) /* shift + tab */ {
        if (document.activeElement === firstFocusableEl) {
          lastFocusableEl.focus();
          e.preventDefault();
        }
      } else /* tab */ {
        if (document.activeElement === lastFocusableEl) {
          firstFocusableEl.focus();
          e.preventDefault();
        }
      }
    }
  });
};
EOL

# Setup performance optimization
log_info "Setting up performance optimization..."
npm_install react-lazy-load-image-component
cat > src/utils/performance.tsx << EOL
import React from 'react';
import { LazyLoadImage } from 'react-lazy-load-image-component';
import 'react-lazy-load-image-component/src/effects/blur.css';

interface OptimizedImageProps {
  src: string;
  alt: string;
  width?: number | string;
  height?: number | string;
}

export const OptimizedImage: React.FC<OptimizedImageProps> = ({ src, alt, width, height }) => (
  <LazyLoadImage
    src={src}
    alt={alt}
    width={width}
    height={height}
    effect="blur"
  />
);
EOL

# Setup testing
log_info "Setting up testing utilities..."
npm_install --save-dev @testing-library/react @testing-library/jest-dom @testing-library/user-event msw

# Update .gitignore
log_info "Updating .gitignore..."
cat >> .gitignore << EOL

# Environment variables
.env.local
.env.development.local
.env.test.local
.env.production.local

# Build files
/build

# Dependency directories
/node_modules

# Debug logs
npm-debug.log*
yarn-debug.log*
yarn-error.log*

# Editor directories and files
.idea
.vscode
*.swp
*.swo
EOL

# Create a sample environment file
log_info "Creating sample environment file..."
cat > .env.sample << EOL
REACT_APP_API_URL=http://localhost:3001/api
EOL

# Update package.json scripts
log_info "Updating package.json scripts..."
npm pkg set scripts.start="react-scripts start"
npm pkg set scripts.build="react-scripts build"
npm pkg set scripts.test="react-scripts test"
npm pkg set scripts.eject="react-scripts eject"
npm pkg set scripts.lint="eslint src/**/*.{ts,tsx}"
npm pkg set scripts.format="prettier --write src/**/*.{ts,tsx,json,css,scss,md}"

# Install additional development dependencies
log_info "Installing additional development dependencies..."
npm_install --save-dev eslint @typescript-eslint/parser @typescript-eslint/eslint-plugin prettier eslint-config-prettier eslint-plugin-prettier

# Create ESLint configuration
log_info "Creating ESLint configuration..."
cat > .eslintrc.json << EOL
{
  "extends": [
    "react-app",
    "react-app/jest",
    "plugin:@typescript-eslint/recommended",
    "plugin:prettier/recommended"
  ],
  "parser": "@typescript-eslint/parser",
  "plugins": ["@typescript-eslint"],
  "rules": {
    "prettier/prettier": "error",
    "@typescript-eslint/explicit-function-return-type": "off",
    "@typescript-eslint/explicit-module-boundary-types": "off"
  }
}
EOL

# Create Prettier configuration
log_info "Creating Prettier configuration..."
cat > .prettierrc << EOL
{
  "singleQuote": true,
  "trailingComma": "es5",
  "tabWidth": 2,
  "semi": true
}
EOL

log_info "Client setup completed successfully for $PROJECT_NAME"
