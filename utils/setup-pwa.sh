#!/bin/bash
# setup-pwa.sh

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
  error_exit "Usage: $0 <project-dir>"
fi

client_dir="$project_dir/client"
cd "$client_dir" || error_exit "Failed to change to client directory"

log "Setting up PWA for $client_dir"

# Install workbox-webpack-plugin and other PWA-related packages
npm install --save-dev workbox-webpack-plugin
npm install workbox-window

# Update webpack.config.js to include workbox plugin
cat << EOF >> webpack.config.js

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

# Create a manifest.json file
cat << EOF > public/manifest.json
{
  "short_name": "Your App",
  "name": "Your Application Name",
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
sed -i '/<\/head>/i\    <link rel="manifest" href="%PUBLIC_URL%/manifest.json" />' public/index.html
sed -i '/<\/head>/i\    <meta name="theme-color" content="#000000" />' public/index.html

# Create a service worker file
cat << EOF > public/service-worker.js
const CACHE_NAME = "my-app-cache-v1";
const urlsToCache = [
  "/",
  "/index.html",
  "/styles.css",
  "/main.js",
  "/logo.png",
];

// Install a service worker
self.addEventListener("install", event => {
  event.waitUntil(
    caches.open(CACHE_NAME)
      .then(cache => {
        console.log("Opened cache");
        return cache.addAll(urlsToCache);
      })
  );
});

// Cache and return requests
self.addEventListener("fetch", event => {
  event.respondWith(
    caches.match(event.request)
      .then(response => {
        return response || fetch(event.request);
      })
  );
});

// Update a service worker
self.addEventListener("activate", event => {
  const cacheWhitelist = ["my-app-cache-v1"];
  event.waitUntil(
    caches.keys().then(cacheNames => {
      return Promise.all(
        cacheNames.map(cacheName => {
          if (cacheWhitelist.indexOf(cacheName) === -1) {
            return caches.delete(cacheName);
          }
        })
      );
    })
  );
});
EOF
echo "Service Worker file created in $client_dir/public directory."

# Create a service worker registration file
cat << EOF > src/serviceWorkerRegistration.js
import { Workbox } from 'workbox-window';

export function register() {
  if ('serviceWorker' in navigator) {
    const wb = new Workbox('../public/service-worker.js');

    wb.addEventListener('installed', event => {
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
echo "Service Worker Registration setup completed for $client_dir/src directory."

# Update index.js to include service worker registration at the top
sed -i "1iimport { register } from './serviceWorkerRegistration';" src/index.js

echo "PWA setup completed for $client_dir directory."
