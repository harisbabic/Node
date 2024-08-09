// models/Business.js
const mongoose = require('mongoose');

const businessSchema = new mongoose.Schema({
    owner: { type: mongoose.Schema.Types.ObjectId, ref: 'User', required: true },
    name: { type: String, required: true },
    description: { type: String, required: true },
    category: { type: String, required: true },
    address: { type: String, required: true },
    contactInfo: { type: String, required: true },
    hours: { type: String, required: true },
    isFeatured: { type: Boolean, default: false },
    createdAt: { type: Date, default: Date.now },
    updatedAt: { type: Date, default: Date.now }
});

module.exports = mongoose.model('Business', businessSchema);
