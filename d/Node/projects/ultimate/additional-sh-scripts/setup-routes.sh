#!/bin/bash
# setup-routes.sh
# Usage: ./setup-routes.sh <project-name>

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

log "Setting up routes for $project_name"

# Create routes directory and files
mkdir -p src/routes
cat << EOF > src/routes/authRoutes.js
// src/routes/authRoutes.js
const express = require('express');
const router = express.Router();
const { User } = require('../models/User');
const jwt = require('jsonwebtoken');
const bcrypt = require('bcryptjs');

router.post('/register', async (req, res) => {
  const { name, email, password } = req.body;
  try {
    const hashedPassword = await bcrypt.hash(password, 10);
    const user = await User.create({ name, email, password: hashedPassword });
    res.status(201).send(user);
  } catch (error) {
    res.status(400).send(error);
  }
});

router.post('/login', async (req, res) => {
  const { email, password } = req.body;
  try {
    const user = await User.findOne({ where: { email } });
    if (!user || !(await bcrypt.compare(password, user.password))) {
      return res.status(400).send({ error: 'Invalid email or password' });
    }
    const token = jwt.sign({ id: user.id }, process.env.JWT_SECRET);
    res.send({ token });
  } catch (error) {
    res.status(500).send(error);
  }
});

module.exports = router;
EOF

cat << EOF > src/routes/index.js
// src/routes/index.js
const express = require('express');
const authRoutes = require('./authRoutes');
const router = express.Router();

router.use('/auth', authRoutes);

module.exports = router;
EOF

log "Routes setup completed for $project_name"
