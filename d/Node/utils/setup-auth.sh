#!/bin/bash
# setup-auth.sh
# Relative path: d/Node/utils/setup-auth.sh
# Description: Sets up authentication and authorization for the project

set -euo pipefail

# Source the common functions and logger
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/common-functions.sh"
source "$SCRIPT_DIR/logger.sh"

# Check if project name is provided
if [ $# -eq 0 ]; then
    log_error "Please provide a project name as an argument."
    echo "Usage: $0 <project-name>"
    exit 1
fi

PROJECT_NAME="$1"
PROJECT_DIR="$NODE_DIR/projects/$PROJECT_NAME"
SERVER_DIR="$PROJECT_DIR/server"

log_info "Setting up authentication and authorization for $PROJECT_NAME"

# Ensure server directory exists
if [ ! -d "$SERVER_DIR" ]; then
    log_error "Server directory does not exist: $SERVER_DIR"
    exit 1
fi

cd "$SERVER_DIR" || exit 1

# Install necessary packages
log_info "Installing authentication packages..."
npm install bcryptjs jsonwebtoken passport passport-jwt
npm install @types/jsonwebtoken @types/passport-jwt --save-dev

# Create auth middleware
log_info "Creating auth middleware..."
mkdir -p "$SERVER_DIR/src/middleware"
cat << EOF > "$SERVER_DIR/src/middleware/auth.middleware.ts"
import { Request, Response, NextFunction } from 'express';
import passport from 'passport';
import { User } from '../models/User.model';

export const authenticate = (req: Request, res: Response, next: NextFunction): void => {
  passport.authenticate('jwt', { session: false }, (err: Error, user: User) => {
    if (err || !user) {
      res.status(401).json({ message: 'Unauthorized' });
      return;
    }
    req.user = user;
    next();
  })(req, res, next);
};
EOF

# Create auth controller
log_info "Creating auth controller..."
mkdir -p "$SERVER_DIR/src/controllers"
cat << EOF > "$SERVER_DIR/src/controllers/auth.controller.ts"
import { Request, Response } from 'express';
import jwt from 'jsonwebtoken';
import bcrypt from 'bcryptjs';
import { User } from '../models/User.model';

export const register = async (req: Request, res: Response): Promise<void> => {
  try {
    const { username, email, password } = req.body;
    const hashedPassword = await bcrypt.hash(password, 10);
    const user = await User.create({ username, email, password: hashedPassword });
    res.status(201).json({ message: 'User registered successfully', userId: user.id });
  } catch (error) {
    res.status(500).json({ message: 'Error registering user', error });
  }
};

export const login = async (req: Request, res: Response): Promise<void> => {
  try {
    const { email, password } = req.body;
    const user = await User.findOne({ where: { email } });
    if (!user || !(await bcrypt.compare(password, user.password))) {
      res.status(401).json({ message: 'Invalid credentials' });
      return;
    }
    const token = jwt.sign({ userId: user.id }, process.env.JWT_SECRET as string, { expiresIn: '1h' });
    res.json({ token });
  } catch (error) {
    res.status(500).json({ message: 'Error logging in', error });
  }
};
EOF

# Create auth routes
log_info "Creating auth routes..."
mkdir -p "$SERVER_DIR/src/routes"
cat << EOF > "$SERVER_DIR/src/routes/auth.routes.ts"
import express from 'express';
import { register, login } from '../controllers/auth.controller';

const router = express.Router();

router.post('/register', register);
router.post('/login', login);

export default router;
EOF

# Update .env file to add JWT_SECRET
log_info "Updating .env file..."
ENV_FILE="$SERVER_DIR/.env"
if [ -f "$ENV_FILE" ]; then
    if ! grep -q "^JWT_SECRET=" "$ENV_FILE"; then
        echo "JWT_SECRET=$(openssl rand -base64 32)" >> "$ENV_FILE"
        log_info "JWT_SECRET added to .env"
    else
        log_info "JWT_SECRET already set in .env"
    fi
else
    log_warn ".env file not found. Creating a new one."
    echo "JWT_SECRET=$(openssl rand -base64 32)" > "$ENV_FILE"
    log_info "JWT_SECRET added to new .env file"
fi

# Update app.ts to include auth routes
log_info "Updating app.ts with auth routes..."
APP_FILE="$SERVER_DIR/src/app.ts"
if [ -f "$APP_FILE" ]; then
    sed -i '/import express from '"'"'express'"'"';/a import authRoutes from '"'"'./routes/auth.routes'"'"';' "$APP_FILE"
    sed -i '/app.use(express.json());/a app.use('"'"'/api/auth'"'"', authRoutes);' "$APP_FILE"
    log_info "Authentication routes added to app.ts"
else
    log_warn "app.ts not found. Please manually add auth routes to your main application file."
fi

log_info "Authentication and authorization setup completed for $PROJECT_NAME"
