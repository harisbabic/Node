#!/bin/bash
# setup-pwa.sh
# Relative path: d/Node/utils/setup-pwa.sh
# Description: Sets up Progressive Web App (PWA) for the project

set -euo pipefail

# Source the common functions and logger
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

log_info "Setting up PWA for $PROJECT_NAME"

# Ensure client directory exists
if [ ! -d "$CLIENT_DIR" ]; then
    log_error "Client directory does not exist: $CLIENT_DIR"
    exit 1
fi

cd "$CLIENT_DIR" || exit 1

# Install workbox-webpack-plugin and other PWA-related packages
log_info "Installing PWA-related packages..."
npm install --save-dev workbox-webpack-plugin
npm install workbox-window

# Update webpack.config.js to include workbox plugin
log_info "Updating webpack configuration..."
WEBPACK_CONFIG="$CLIENT_DIR/webpack.config.js"
if [ -f "$WEBPACK_CONFIG" ]; then
    cat << EOF >> "$WEBPACK_CONFIG"

const WorkboxWebpackPlugin = require('workbox-webpack-plugin');

module.exports.plugins.push(
  new WorkboxWebpackPlugin.GenerateSW({
    clientsClaim: true,
    skipWaiting: true,
    runtimeCaching: [{
      urlPattern: /^https?.*/,
      handler: 'NetworkFirst',
      options: {
        cacheName: 'https-calls',
        networkTimeoutSeconds: 15,
        expiration: {
          maxEntries: 150,
          maxAgeSeconds: 30 * 24 * 60 * 60, // 1 month
        },
        cacheableResponse: {
          statuses: [0, 200],
        },
      },
    }],
  })
);
EOF
    log_info "Webpack configuration updated"
else
    log_warn "webpack.config.js not found. Please manually add Workbox plugin to your webpack configuration."
fi

# Create a manifest.json file
log_info "Creating manifest.json..."
cat << EOF > "$CLIENT_DIR/public/manifest.json"
{
  "short_name": "$PROJECT_NAME",
  "name": "$PROJECT_NAME Progressive Web App",
  "icons": [
    {
      "src": "favicon.ico",
      "sizes": "64x64 32x32 24x24 16x16",
      "type": "image/x-icon"
    },
    {
      "src": "logo192.png",
      "type": "image/png",
      "sizes": "192x192"
    },
    {
      "src": "logo512.png",
      "type": "image/png",
      "sizes": "512x512"
    }
  ],
  "start_url": ".",
  "display": "standalone",
  "theme_color": "#000000",
  "background_color": "#ffffff"
}
EOF

# Update index.html to include manifest and theme-color
log_info "Updating index.html..."
INDEX_HTML="$CLIENT_DIR/public/index.html"
if [ -f "$INDEX_HTML" ]; then
    sed -i '/<\/head>/i\    <link rel="manifest" href="%PUBLIC_URL%/manifest.json" />' "$INDEX_HTML"
    sed -i '/<\/head>/i\    <meta name="theme-color" content="#000000" />' "$INDEX_HTML"
    log_info "index.html updated with manifest and theme-color"
else
    log_warn "index.html not found. Please manually add manifest and theme-color meta tags to your HTML file."
fi

# Create a service worker registration file
log_info "Creating service worker registration file..."
cat << EOF > "$CLIENT_DIR/src/serviceWorkerRegistration.ts"
import { Workbox } from 'workbox-window';

export function register(): void {
  if ('serviceWorker' in navigator) {
    const wb = new Workbox('/service-worker.js');

    wb.addEventListener('installed', (event) => {
      if (event.isUpdate) {
        if (window.confirm('New content is available! Click OK to refresh.')) {
          window.location.reload();
        }
      }
    });

    wb.register();
  }
}
EOF

# Update index.tsx to include service worker registration
log_info "Updating index.tsx with service worker registration..."
INDEX_TSX="$CLIENT_DIR/src/index.tsx"
if [ -f "$INDEX_TSX" ]; then
    sed -i "1iimport { register } from './serviceWorkerRegistration';" "$INDEX_TSX"
    sed -i '/ReactDOM.render(/a register();' "$INDEX_TSX"
    log_info "index.tsx updated with service worker registration"
else
    log_warn "index.tsx not found. Please manually add service worker registration to your main application file."
fi

log_info "PWA setup completed for $PROJECT_NAME"
