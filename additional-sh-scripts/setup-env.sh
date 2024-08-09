#!/bin/bash
# setup-env.sh
# Usage: ./setup-env.sh <project-name>

project_name=$1
project_dir="/d/Node/projects/$project_name"

# Create .env file
cat << EOF > "$project_dir/.env"
NODE_ENV=development
PORT=3000
DATABASE_URL=mongodb://localhost:27017/$project_name
JWT_SECRET=your_jwt_secret_here
EOF

# Create .env.example file
cat << EOF > "$project_dir/.env.example"
NODE_ENV=development
PORT=3000
DATABASE_URL=mongodb://localhost:27017/your_database_name
JWT_SECRET=your_jwt_secret_here
EOF

echo "Environment files created for $project_name"
