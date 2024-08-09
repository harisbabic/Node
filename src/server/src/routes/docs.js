const express = require('express');
const router = express.Router();
const docsController = require('../controllers/docs');

router.get('/', docsController.getAll);
router.post('/', docsController.create);
router.get('/:id', docsController.getById);
router.put('/:id', docsController.update);
router.delete('/:id', docsController.delete);

module.exports = router;
