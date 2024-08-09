const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

class EmailTemplateModel {
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

module.exports = new EmailTemplateModel();
