#!/bin/bash
# setup-auth.sh

set -euo pipefail

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

project_name="$1"
project_dir="/d/Node/projects/$project_name"
server_dir="$project_dir/server"

if [ -z "$project_name" ]; then
  echo "Usage: $0 <project-name>"
  exit 1
fi

log "Setting up authentication and authorization for $project_name"

# Install necessary packages
cd "$server_dir"
npm install bcryptjs jsonwebtoken passport passport-jwt
npm install @types/jsonwebtoken @types/passport-jwt --save-dev

# Create auth middleware
mkdir -p "$server_dir/src/middleware"
cat << EOF > "$server_dir/src/middleware/auth.middleware.ts"
import { Request, Response, NextFunction } from 'express';
import passport from 'passport';
import { User } from '../models/User.model';

export const authenticate = (req: Request, res: Response, next: NextFunction) => {
  passport.authenticate('jwt', { session: false }, (err: Error, user: User) => {
    if (err || !user) {
      return res.status(401).json({ message: 'Unauthorized' });
    }
    req.user = user;
    return next();
  })(req, res, next);
};
EOF

# Create auth controller
mkdir -p "$server_dir/src/controllers"
cat << EOF > "$server_dir/src/controllers/auth.controller.ts"
import { Request, Response } from 'express';
import jwt from 'jsonwebtoken';
import bcrypt from 'bcryptjs';
import { User } from '../models/User.model';

export const register = async (req: Request, res: Response) => {
  try {
    const { username, email, password } = req.body;
    const hashedPassword = await bcrypt.hash(password, 10);
    const user = await User.create({ username, email, password: hashedPassword });
    res.status(201).json({ message: 'User registered successfully', userId: user.id });
  } catch (error) {
    res.status(500).json({ message: 'Error registering user', error });
  }
};

export const login = async (req: Request, res: Response) => {
  try {
    const { email, password } = req.body;
    const user = await User.findOne({ where: { email } });
    if (!user || !(await bcrypt.compare(password, user.password))) {
      return res.status(401).json({ message: 'Invalid credentials' });
    }
    const token = jwt.sign({ userId: user.id }, process.env.JWT_SECRET as string, { expiresIn: '1h' });
    res.json({ token });
  } catch (error) {
    res.status(500).json({ message: 'Error logging in', error });
  }
};
EOF

# Create auth routes
mkdir -p "$server_dir/src/routes"
cat << EOF > "$server_dir/src/routes/auth.routes.ts"
import express from 'express';
import { register, login } from '../controllers/auth.controller';

const router = express.Router();

router.post('/register', register);
router.post('/login', login);

export default router;
EOF

# Update .env file to add JWT_SECRET only if not already set
env_file="$server_dir/.env"
if grep -q "^JWT_SECRET=" "$env_file"; then
  log "JWT_SECRET already set in .env"
else
  echo "JWT_SECRET=$(openssl rand -base64 32)" >> "$env_file"
  log "JWT_SECRET added to .env"
fi

# Update app.ts to include auth routes
sed -i '/import express from '"'"'express'"'"';/a import authRoutes from '"'"'./routes/auth.routes'"'"';' "$server_dir/src/app.ts"
sed -i '/app.use(express.json());/a app.use('"'"'/api/auth'"'"', authRoutes);' "$server_dir/src/app.ts"

log "Authentication and authorization set up for $project_name"