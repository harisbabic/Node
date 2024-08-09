// utils/directoryTraversal.js
const fs = require('fs');
const path = require('path');

function directoryTraversal(dir, callback) {
  fs.readdir(dir, (err, files) => {
    if (err) return callback(err);
    files.forEach(file => {
      const filePath = path.join(dir, file);
      fs.stat(filePath, (err, stat) => {
        if (err) return callback(err);
        if (stat.isDirectory()) {
          directoryTraversal(filePath, callback);
        } else {
          callback(null, filePath);
        }
      });
    });
  });
}

module.exports = directoryTraversal;