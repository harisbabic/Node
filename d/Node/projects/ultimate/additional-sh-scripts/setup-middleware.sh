#!/bin/bash
# setup-middleware.sh
# Usage: ./setup-middleware.sh <project-name>

set -euo pipefail

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

project_name="$1"

if [ -z "$project_name" ]; then
  error_exit "Usage: $0 <project-name>"
fi

project_dir="/d/Node/projects/$project_name"
cd "$project_dir" || error_exit "Failed to change to project directory"

log "Setting up middleware for $project_name"

# Install necessary packages
npm install morgan helmet cors || error_exit "Failed to install middleware packages"

# Create middleware directory and files
mkdir -p src/middleware
cat << EOF > src/middleware/auth.js
// src/middleware/auth.js
const jwt = require('jsonwebtoken');
const { User } = require('../models/User');

module.exports = async (req, res, next) => {
  const token = req.header('Authorization').replace('Bearer ', '');
  if (!token) {
    return res.status(401).send({ error: 'Access denied, no token provided.' });
  }

  try {
    const decoded = jwt.verify(token, process.env.JWT_SECRET);
    req.user = await User.findByPk(decoded.id);
    if (!req.user) {
      throw new Error();
    }
    next();
  } catch (error) {
    res.status(400).send({ error: 'Invalid token.' });
  }
};
EOF

cat << EOF > src/middleware/errorHandler.js
// src/middleware/errorHandler.js
module.exports = (err, req, res, next) => {
  console.error(err);
  res.status(500).send({ error: 'Something went wrong!' });
};
EOF

log "Middleware setup completed for $project_name"
