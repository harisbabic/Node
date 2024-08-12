import express from 'express';
import authRoutes from './routes/auth.routes';
const app = express();

app.use(express.json());
app.use('/api/auth', authRoutes);

// Your routes will be added here later

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});

export default app;
