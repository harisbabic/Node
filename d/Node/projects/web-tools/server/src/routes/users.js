// routes/users.js
const express = require('express');
const router = express.Router();
const bcrypt = require('bcryptjs');
const passport = require('passport');
const User = require('../models/User');

// Register Page
router.get('/register', (req, res) => res.send('Register Page'));

// Register
router.post('/register', async (req, res) => {
    const { username, password } = req.body;
    let errors = [];

    if (!username || !password) {
        errors.push({ msg: 'Please enter all fields' });
    }

    if (password.length < 6) {
        errors.push({ msg: 'Password must be at least 6 characters' });
    }

    if (errors.length > 0) {
        res.status(400).json({ errors });
    } else {
        try {
            let user = await User.findOne({ username: username });
            if (user) {
                res.status(400).json({ errors: [{ msg: 'Username already exists' }] });
            } else {
                const newUser = new User({ username, password });

                // Hash password
                bcrypt.genSalt(10, (err, salt) => {
                    bcrypt.hash(newUser.password, salt, (err, hash) => {
                        if (err) throw err;
                        newUser.password = hash;
                        newUser.save()
                            .then(user => res.status(201).json({ msg: 'User registered', user }))
                            .catch(err => console.log(err));
                    });
                });
            }
        } catch (err) {
            console.log(err);
            res.status(500).send('Server error');
        }
    }
});

// Login Page
router.get('/login', (req, res) => res.send('Login Page'));

// Login
router.post('/login', (req, res, next) => {
    passport.authenticate('local', {
        successRedirect: '/dashboard',
        failureRedirect: '/login',
        failureFlash: true
    })(req, res, next);
});

// Logout
router.get('/logout', (req, res) => {
    req.logout();
    res.redirect('/login');
});

module.exports = router;
