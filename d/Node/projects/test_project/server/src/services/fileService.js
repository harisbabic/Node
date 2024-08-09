const aws = require('aws-sdk');
const multer = require('multer');
const multerS3 = require('multer-s3');
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

aws.config.update({
  secretAccessKey: process.env.AWS_SECRET_ACCESS_KEY,
  accessKeyId: process.env.AWS_ACCESS_KEY_ID,
  region: process.env.AWS_REGION
});

const s3 = new aws.S3();

const upload = multer({
  storage: multerS3({
    s3: s3,
    bucket: process.env.S3_BUCKET,
    acl: 'public-read',
    metadata: function (req, file, cb) {
      cb(null, {fieldName: file.fieldname});
    },
    key: function (req, file, cb) {
      cb(null, Date.now().toString() + '-' + file.originalname)
    }
  })
});

class FileService {
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

module.exports = { upload, FileService: new FileService() };
