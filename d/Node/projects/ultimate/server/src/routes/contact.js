const express = require('express');
const router = express.Router();
const contactController = require('../controllers/contact');

router.get('/', contactController.getAll);
router.post('/', contactController.create);
router.get('/:id', contactController.getById);
router.put('/:id', contactController.update);
router.delete('/:id', contactController.delete);

module.exports = router;
