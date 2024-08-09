const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

class FileModel {
  async saveFile(fileData) {
    const query = 'INSERT INTO files(filename, originalname, mimetype, size, url, uploadedby) VALUES($1, $2, $3, $4, $5, $6) RETURNING *';
    const values = [fileData.filename, fileData.originalname, fileData.mimetype, fileData.size, fileData.url, fileData.uploadedby];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getFilesByUser(userId) {
    const query = 'SELECT * FROM files WHERE uploadedby = $1';
    const result = await pool.query(query, [userId]);
    return result.rows;
  }
}

module.exports = new FileModel();
