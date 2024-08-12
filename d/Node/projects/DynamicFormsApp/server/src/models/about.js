const { DataTypes } = require('sequelize');
const sequelize = require('../config/database');

const about = sequelize.define('about', {
  // Define your model fields here
  name: {
    type: DataTypes.STRING,
    allowNull: false
  },
  // Add more fields as needed
});

module.exports = about;
