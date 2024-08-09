#!/bin/bash
# setup-email-templates.sh

set -euo pipefail

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

project_dir="$1"

if [ -z "$project_dir" ]; then
  error_exit "Usage: $0 <project-dir>"
fi

log "Setting up email templates for $project_dir"

mkdir -p "$project_dir/server/src/services"
mkdir -p "$project_dir/server/src/models"
mkdir -p "$project_dir/server/src/routes"

cd "$project_dir/server" || error_exit "Failed to change to server directory"
npm install nodemailer handlebars


# Create EmailService
cat << EOF > "$project_dir/server/src/services/emailService.js"
const nodemailer = require('nodemailer');
const handlebars = require('handlebars');
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

class EmailService {
  constructor() {
    this.transporter = nodemailer.createTransport({
      host: process.env.SMTP_HOST,
      port: process.env.SMTP_PORT,
      auth: {
        user: process.env.SMTP_USER,
        pass: process.env.SMTP_PASS
      }
    });
  }

  async sendEmail(to, subject, template, context) {
    const compiledTemplate = handlebars.compile(template);
    const html = compiledTemplate(context);

    const mailOptions = {
      from: process.env.EMAIL_FROM,
      to,
      subject,
      html
    };

    await this.transporter.sendMail(mailOptions);
  }

  async saveTemplate(templateData) {
    const query = 'INSERT INTO email_templates(name, subject, body) VALUES(\$1, \$2, \$3) RETURNING *';
    const values = [templateData.name, templateData.subject, templateData.body];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getTemplates() {
    const result = await pool.query('SELECT * FROM email_templates');
    return result.rows;
  }

  async getTemplateByName(name) {
    const result = await pool.query('SELECT * FROM email_templates WHERE name = \$1', [name]);
    return result.rows[0];
  }
}

module.exports = new EmailService();
EOF

# Create EmailTemplate model
cat << EOF > "$project_dir/server/src/models/EmailTemplate.js"
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

class EmailTemplateModel {
  async saveTemplate(templateData) {
    const query = 'INSERT INTO email_templates(name, subject, body) VALUES(\$1, \$2, \$3) RETURNING *';
    const values = [templateData.name, templateData.subject, templateData.body];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getTemplates() {
    const result = await pool.query('SELECT * FROM email_templates');
    return result.rows;
  }

  async getTemplateByName(name) {
    const result = await pool.query('SELECT * FROM email_templates WHERE name = \$1', [name]);
    return result.rows[0];
  }
}

module.exports = new EmailTemplateModel();
EOF

# Create email template routes
cat << EOF > "$project_dir/server/src/routes/emailTemplateRoutes.js"
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
EOF

log "Email templates setup completed for $project_dir"
