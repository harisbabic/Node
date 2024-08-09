const { Pool } = require('pg');
const bcrypt = require('bcryptjs');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

class UserService {
  async createUser(userData) {
    const hashedPassword = await bcrypt.hash(userData.password, 12);
    const query = 'INSERT INTO users (username, email, password, role) VALUES($1, $2, $3, $4) RETURNING *';
    const values = [userData.username, userData.email, hashedPassword, userData.role];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async findUserByEmail(email) {
    const query = 'SELECT * FROM users WHERE email = $1';
    const result = await pool.query(query, [email]);
    return result.rows[0];
  }

  async comparePassword(candidatePassword, storedPassword) {
    return bcrypt.compare(candidatePassword, storedPassword);
  }
}

module.exports = new UserService();
