const express = require('express');
const { upload, FileService } = require('../services/fileService');
const router = express.Router();

router.post('/upload', upload.single('file'), async (req, res) => {
  try {
    const fileData = {
      filename: req.file.key,
      originalname: req.file.originalname,
      mimetype: req.file.mimetype,
      size: req.file.size,
      url: req.file.location,
      uploadedby: req.user.id
    };
    const file = await FileService.saveFile(fileData);
    res.status(201).json(file);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

router.get('/', async (req, res) => {
  try {
    const files = await FileService.getFilesByUser(req.user.id);
    res.json(files);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

module.exports = router;
