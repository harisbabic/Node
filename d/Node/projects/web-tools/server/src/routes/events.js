// routes/events.js
const express = require('express');
const router = express.Router();
const Event = require('../models/Event');
const { ensureAuthenticated } = require('../config/auth');

// Add a new event
router.post('/add', ensureAuthenticated, async (req, res) => {
    const { title, description, date, time, location, isRecurring, category } = req.body;
    try {
        const newEvent = new Event({
            title,
            description,
            date,
            time,
            location,
            isRecurring,
            category,
            organizer: req.user.id
        });
        await newEvent.save();
        res.status(201).send('Event added successfully');
    } catch (error) {
        res.status(500).send('Error adding event');
    }
});

// Update an event
router.put('/update/:id', ensureAuthenticated, async (req, res) => {
    const { title, description, date, time, location, isRecurring, category } = req.body;
    try {
        await Event.findByIdAndUpdate(req.params.id, { title, description, date, time, location, isRecurring, category });
        res.status(200).send('Event updated successfully');
    } catch (error) {
        res.status(500).send('Error updating event');
    }
});

// Delete an event
router.delete('/delete/:id', ensureAuthenticated, async (req, res) => {
    try {
        await Event.findByIdAndRemove(req.params.id);
        res.status(200).send('Event deleted successfully');
    } catch (error) {
        res.status(500).send('Error deleting event');
    }
});

// Get all events
router.get('/all', async (req, res) => {
    try {
        const events = await Event.find().populate('organizer', 'username');
        res.status(200).json(events);
    } catch (error) {
        res.status(500).send('Error fetching events');
    }
});

module.exports = router;
