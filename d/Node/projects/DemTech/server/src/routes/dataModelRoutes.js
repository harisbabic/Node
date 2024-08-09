// routes/dataModelRoutes.js
const express = require('express');
const router = express.Router();
const dataModelController = require('../controllers/dataModelController');
const { authenticateJWT } = require('../middleware/auth');


/**
 * @swagger
 * /api/data-models:
 *   post:
 *     summary: Create a new data model
 *     tags: [Data Models]
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             required:
 *               - name
 *               - fields
 *             properties:
 *               name:
 *                 type: string
 *               fields:
 *                 type: array
 *                 items:
 *                   type: object
 *                   properties:
 *                     name:
 *                       type: string
 *                     type:
 *                       type: string
 *     responses:
 *       201:
 *         description: The created data model
 *         content:
 *           application/json:
 *             schema:
 *               $ref: '#/components/schemas/DataModel'
 */
// router.post('/', async (req, res) => {
//     // ... implementation
//   });
  router.post('/', authenticateJWT, dataModelController.createModel);
  router.get('/', authenticateJWT, dataModelController.getModels);

  module.exports = router;
