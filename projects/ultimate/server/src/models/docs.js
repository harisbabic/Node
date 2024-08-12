const { DataTypes } = require('sequelize');
const sequelize = require('../config/database');

const docs = sequelize.define('docs', {
  // Define your model fields here
  name: {
    type: DataTypes.STRING,
    allowNull: false
  },
  // Add more fields as needed
});

module.exports = docs;
