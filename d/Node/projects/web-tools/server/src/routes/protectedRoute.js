// routes/protectedRoute.js
const express = require('express');
const router = express.Router();
const { ensureAuthenticated } = require('../middleware/auth');

router.get('/protected', ensureAuthenticated, (req, res) => {
  res.status(200).json({ message: 'You are authorized' });
});

module.exports = router;
