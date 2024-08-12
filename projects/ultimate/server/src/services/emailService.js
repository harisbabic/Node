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
    const query = 'INSERT INTO email_templates(name, subject, body) VALUES($1, $2, $3) RETURNING *';
    const values = [templateData.name, templateData.subject, templateData.body];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getTemplates() {
    const result = await pool.query('SELECT * FROM email_templates');
    return result.rows;
  }

  async getTemplateByName(name) {
    const result = await pool.query('SELECT * FROM email_templates WHERE name = $1', [name]);
    return result.rows[0];
  }
}

module.exports = new EmailService();
