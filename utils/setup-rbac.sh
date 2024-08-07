#!/bin/bash
# setup-rbac.sh

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

mkdir -p "$project_dir/server/src/middlewares" "$project_dir/server/src/models"

log "Setting up RBAC for $project_dir"

# Create RBAC middleware
cat << EOF > "$project_dir/server/src/middlewares/rbacMiddleware.js"
// src/middlewares/rbacMiddleware.js
const rbacMiddleware = (requiredRole) => {
  return (req, res, next) => {
    if (!req.user || !req.user.role) {
      return res.status(403).json({ message: 'Access denied' });
    }

    if (req.user.role !== requiredRole) {
      return res.status(403).json({ message: 'Insufficient permissions' });
    }

    next();
  };
};

module.exports = rbacMiddleware;
EOF

# Create User model with role
cat << EOF > "$project_dir/server/src/models/User.js"
const { Pool } = require('pg');
const bcrypt = require('bcryptjs');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

class UserService {
  async createUser(userData) {
    const hashedPassword = await bcrypt.hash(userData.password, 12);
    const query = 'INSERT INTO users (username, email, password, role) VALUES($1, $2, $3, $4) RETURNING *';
    const values = [userData.username, userData.email, hashedPassword, userData.role];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async findUserByEmail(email) {
    const query = 'SELECT * FROM users WHERE email = $1';
    const result = await pool.query(query, [email]);
    return result.rows[0];
  }

  async comparePassword(candidatePassword, storedPassword) {
    return bcrypt.compare(candidatePassword, storedPassword);
  }
}

module.exports = new UserService();
EOF

# Update auth routes to include role
cat << EOF > "$project_dir/server/src/routes/authRoutes.js"
// src/routes/authRoutes.js
const express = require('express');
const jwt = require('jsonwebtoken');
const UserService = require('../models/User');
const rbacMiddleware = require('../middlewares/rbacMiddleware');

const router = express.Router();

router.post('/register', async (req, res) => {
  try {
    const { username, email, password, role } = req.body;
    const user = await UserService.createUser({ username, email, password, role });
    res.status(201).json({ message: 'User registered successfully', user });
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

router.post('/login', async (req, res) => {
  try {
    const { email, password } = req.body;
    const user = await UserService.findUserByEmail(email);
    if (!user || !(await UserService.comparePassword(password, user.password))) {
      return res.status(401).json({ message: 'Invalid credentials' });
    }
    const token = jwt.sign({ userId: user.id, role: user.role }, process.env.JWT_SECRET, { expiresIn: '1d' });
    res.json({ token });
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

// Example of a protected route using RBAC
router.get('/admin-only', rbacMiddleware('admin'), (req, res) => {
  res.json({ message: 'Welcome, admin!' });
});

module.exports = router;
EOF

log "RBAC setup completed for $project_dir"
