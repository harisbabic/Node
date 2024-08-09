const { DataTypes } = require('sequelize');
const sequelize = require('../config/database');

const contact = sequelize.define('contact', {
  // Define your model fields here
  name: {
    type: DataTypes.STRING,
    allowNull: false
  },
  // Add more fields as needed
});

module.exports = contact;
