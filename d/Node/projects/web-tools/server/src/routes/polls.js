// routes/polls.js
const express = require('express');
const router = express.Router();
const Poll = require('../models/Poll');
const { ensureAuthenticated } = require('../middleware/auth');

// Create Poll
router.post('/create', ensureAuthenticated, async (req, res) => {
  const { question, options } = req.body;
  try {
    const poll = new Poll({ question, options, createdBy: req.user.id });
    await poll.save();
    res.status(201).json({ message: 'Poll created successfully' });
  } catch (err) {
    res.status(400).json({ error: 'Error creating poll' });
  }
});

// Vote
router.post('/vote/:id', ensureAuthenticated, async (req, res) => {
  const { option } = req.body;
  try {
    const poll = await Poll.findById(req.params.id);
    poll.options = poll.options.map(o =>
      o.option === option ? { ...o, votes: o.votes + 1 } : o
    );
    await poll.save();
    res.status(200).json({ message: 'Vote recorded successfully' });
  } catch (err) {
    res.status(400).json({ error: 'Error recording vote' });
  }
});

// Fetch Polls
router.get('/', async (req, res) => {
  try {
    const polls = await Poll.find().populate('createdBy', 'username');
    res.status(200).json(polls);
  } catch (err) {
    res.status(400).json({ error: 'Error fetching polls' });
  }
});

module.exports = router;
