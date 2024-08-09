const express = require('express');
const EmailService = require('../services/emailService');
const router = express.Router();

router.post('/', async (req, res) => {
  try {
    const template = await EmailService.saveTemplate(req.body);
    res.status(201).json(template);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

router.get('/', async (req, res) => {
  try {
    const templates = await EmailService.getTemplates();
    res.json(templates);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

router.post('/send', async (req, res) => {
  try {
    const { templateName, to, context } = req.body;
    const template = await EmailService.getTemplateByName(templateName);
    if (!template) {
      return res.status(404).json({ message: 'Template not found' });
    }
    await EmailService.sendEmail(to, template.subject, template.body, context);
    res.json({ message: 'Email sent successfully' });
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

module.exports = router;
