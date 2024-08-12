const app = require(App);
import express from 'express';
import cors from 'cors';
require('dotenv').config();
import { sequelize } from './utils/db';
import modelRoutes from './routes/models';
import dynamicApiRoutes from './routes/dynamicApiRoutes';

const PORT = process.env.PORT || 3000;

// Middleware

// Routes
app.use('/api/models', modelRoutes);
app.use('/api', dynamicApiRoutes);

app.get('/', (req, res) => {
  res.json({ message: 'Welcome to the API' });
});

// Error handling middleware
app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).send('Something broke!');
});

// Database connection and server start
const startServer = async () => {
  try {
    await sequelize.authenticate();
    console.log('Database connection has been established successfully.');

    app.listen(PORT, () => console.log());
  } catch (error) {
    console.error('Unable to connect to the database:', error);
  }
};

startServer();
