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
