#!/bin/bash
# setup-file-management.sh

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

log "Setting up file management for $project_dir"

mkdir -p "$project_dir/server/src/services"
mkdir -p "$project_dir/server/src/routes"
mkdir -p "$project_dir/server/src/models"

cd "$project_dir/server" || error_exit "Failed to change to server directory"
npm install multer aws-sdk

# Create FileService
cat << EOF > "$project_dir/server/src/services/fileService.js"
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
    const query = 'INSERT INTO files(filename, originalname, mimetype, size, url, uploadedby) VALUES(\$1, \$2, \$3, \$4, \$5, \$6) RETURNING *';
    const values = [fileData.filename, fileData.originalname, fileData.mimetype, fileData.size, fileData.url, fileData.uploadedby];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getFilesByUser(userId) {
    const query = 'SELECT * FROM files WHERE uploadedby = \$1';
    const result = await pool.query(query, [userId]);
    return result.rows;
  }
}

module.exports = { upload, FileService: new FileService() };
EOF

# Create File model
cat << EOF > "$project_dir/server/src/models/File.js"
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

class FileModel {
  async saveFile(fileData) {
    const query = 'INSERT INTO files(filename, originalname, mimetype, size, url, uploadedby) VALUES(\$1, \$2, \$3, \$4, \$5, \$6) RETURNING *';
    const values = [fileData.filename, fileData.originalname, fileData.mimetype, fileData.size, fileData.url, fileData.uploadedby];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getFilesByUser(userId) {
    const query = 'SELECT * FROM files WHERE uploadedby = \$1';
    const result = await pool.query(query, [userId]);
    return result.rows;
  }
}

module.exports = new FileModel();
EOF

# Create file routes
cat << EOF > "$project_dir/server/src/routes/fileRoutes.js"
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
EOF

log "File management setup completed for $project_dir"
