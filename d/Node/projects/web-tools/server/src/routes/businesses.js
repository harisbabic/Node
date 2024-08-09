// routes/businesses.js
const express = require('express');
const router = express.Router();
const Business = require('../models/Business');
const { ensureAuthenticated } = require('../config/auth');

// Add a new business listing
router.post('/add', ensureAuthenticated, async (req, res) => {
    const { name, description, category, address, contactInfo, hours, isFeatured } = req.body;
    try {
        const newBusiness = new Business({
            owner: req.user.id,
            name,
            description,
            category,
            address,
            contactInfo,
            hours,
            isFeatured
        });
        await newBusiness.save();
        res.status(201).send('Business added successfully');
    } catch (error) {
        res.status(500).send('Error adding business');
    }
});

// Update a business listing
router.put('/update/:id', ensureAuthenticated, async (req, res) => {
    const { name, description, category, address, contactInfo, hours, isFeatured } = req.body;
    try {
        await Business.findByIdAndUpdate(req.params.id, { name, description, category, address, contactInfo, hours, isFeatured });
        res.status(200).send('Business updated successfully');
    } catch (error) {
        res.status(500).send('Error updating business');
    }
});

// Delete a business listing
router.delete('/delete/:id', ensureAuthenticated, async (req, res) => {
    try {
        await Business.findByIdAndRemove(req.params.id);
        res.status(200).send('Business deleted successfully');
    } catch (error) {
        res.status(500).send('Error deleting business');
    }
});

// Get all business listings
router.get('/all', async (req, res) => {
    try {
        const businesses = await Business.find().populate('owner', 'username');
        res.status(200).json(businesses);
    } catch (error) {
        res.status(500).send('Error fetching businesses');
    }
});

module.exports = router;
