// routes/services.js
const express = require('express');
const router = express.Router();
const Service = require('../models/Service');

router.post('/add', async (req, res) => {
  try {
    const service = new Service(req.body);
    await service.save();
    res.status(201).json(service);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

router.get('/', async (req, res) => {
  try {
    const services = await Service.find();
    res.status(200).json(services);
  } catch (error) {
    res.status(404).json({ error: error.message });
  }
});

module.exports = router;



// routes/services.js
// const express = require('express');
// const router = express.Router();
// const Service = require('../models/Service');
// const { ensureAuthenticated } = require('../config/auth');

// // Add a new service
// router.post('/add', ensureAuthenticated, async (req, res) => {
//     const { name, description, price, duration } = req.body;
//     try {
//         const newService = new Service({
//             provider: req.user.id,
//             name,
//             description,
//             price,
//             duration
//         });
//         await newService.save();
//         res.status(201).send('Service added successfully');
//     } catch (error) {
//         res.status(500).send('Error adding service');
//     }
// });

// // Update a service
// router.put('/update/:id', ensureAuthenticated, async (req, res) => {
//     const { name, description, price, duration } = req.body;
//     try {
//         await Service.findByIdAndUpdate(req.params.id, { name, description, price, duration });
//         res.status(200).send('Service updated successfully');
//     } catch (error) {
//         res.status(500).send('Error updating service');
//     }
// });

// // Delete a service
// router.delete('/delete/:id', ensureAuthenticated, async (req, res) => {
//     try {
//         await Service.findByIdAndRemove(req.params.id);
//         res.status(200).send('Service deleted successfully');
//     } catch (error) {
//         res.status(500).send('Error deleting service');
//     }
// });

// module.exports = router;
