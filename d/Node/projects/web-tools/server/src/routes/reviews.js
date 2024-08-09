// routes/reviews.js
const express = require('express');
const router = express.Router();
const Review = require('../models/Review');
const { ensureAuthenticated } = require('../config/auth');

// Add a new review
router.post('/add', ensureAuthenticated, async (req, res) => {
    const { businessId, rating, comment } = req.body;
    try {
        const newReview = new Review({
            business: businessId,
            user: req.user.id,
            rating,
            comment
        });
        await newReview.save();
        res.status(201).send('Review added successfully');
    } catch (error) {
        res.status(500).send('Error adding review');
    }
});

// Update a review
router.put('/update/:id', ensureAuthenticated, async (req, res) => {
    const { rating, comment } = req.body;
    try {
        await Review.findByIdAndUpdate(req.params.id, { rating, comment });
        res.status(200).send('Review updated successfully');
    } catch (error) {
        res.status(500).send('Error updating review');
    }
});

// Delete a review
router.delete('/delete/:id', ensureAuthenticated, async (req, res) => {
    try {
        await Review.findByIdAndRemove(req.params.id);
        res.status(200).send('Review deleted successfully');
    } catch (error) {
        res.status(500).send('Error deleting review');
    }
});

// Get reviews for a business
router.get('/business/:businessId', async (req, res) => {
    try {
        const reviews = await Review.find({ business: req.params.businessId }).populate('user', 'username');
        res.status(200).json(reviews);
    } catch (error) {
        res.status(500).send('Error fetching reviews');
    }
});

module.exports = router;
