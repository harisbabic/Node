#!/bin/bash
# setup-data-modeling.sh

set -euo pipefail

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

project_dir="$1"
client_dir="$project_dir/client"

log "Setting up data modeling for $project_dir"

cd "$client_dir" || error_exit "Failed to change to client directory"

log "Installing class-variance-authority..."
npm install class-variance-authority

# Install Tailwind CSS
log "Installing Tailwind CSS..."
npm install -D tailwindcss postcss autoprefixer
npx tailwindcss init -p

# Update tailwind.config.js
log "Updating Tailwind CSS configuration..."
cat << EOF > tailwind.config.js
/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./src/**/*.{js,jsx,ts,tsx}",
  ],
  theme: {
    extend: {},
  },
  plugins: [],
}
EOF

# Update src/index.css
log "Updating src/index.css with Tailwind directives..."
cat << EOF > src/index.css
@tailwind base;
@tailwind components;
@tailwind utilities;
EOF

# Initialize shadcn-ui
npx shadcn-ui@latest init
log "Initializing shadcn-ui..."
echo '{
  "style": "default",
  "rsc": false,
  "tailwind": {
    "config": "tailwind.config.js",
    "css": "src/index.css",
    "baseColor": "slate",
    "cssVariables": true
  },
  "aliases": {
    "components": "@/components",
    "utils": "@/lib/utils"
  }
}' > components.json

# Add alert component
log "Adding shadcn-ui alert component..."
echo "y" | npx shadcn-ui@latest add alert || error_exit "Failed to add shadcn-ui alert component"

log "Data modeling setup completed for $client_dir"
