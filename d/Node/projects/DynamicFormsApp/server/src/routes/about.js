const express = require('express');
const router = express.Router();
const aboutController = require('../controllers/about');

router.get('/', aboutController.getAll);
router.post('/', aboutController.create);
router.get('/:id', aboutController.getById);
router.put('/:id', aboutController.update);
router.delete('/:id', aboutController.delete);

module.exports = router;
