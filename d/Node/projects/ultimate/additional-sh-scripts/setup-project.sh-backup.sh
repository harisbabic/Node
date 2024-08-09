#!/bin/bash
# setup-project.sh

set -e

project_type=$1
project_name=$2

if [ -z "$project_type" ] || [ -z "$project_name" ]; then
    echo "Usage: $0 <project-type> <project-name>"
    echo "project-type: 'root' or 'client'"
    exit 1
fi

root_dir="/d/Node"
project_dir="$root_dir/projects/$project_name"
client_dir="$project_dir/client"

project_dir="/d/Node/projects/$project_name"

echo "Creating project directory..."
mkdir -p "$project_dir" || { echo "Failed to create project directory"; exit 1; }

cd "$project_dir" || { echo "Failed to navigate to project directory"; exit 1; }

# Initialize project structure
echo "Setting up project structure..."

case "$project_type" in
    "root")
        cd "$project_dir"
        npm init -y
        npm install express pg dotenv cors

        mkdir -p src

        cat << EOF > "$project_dir/src/index.js"
const express = require('express');
const { Pool } = require('pg');
const cors = require('cors');
require('dotenv').config();

const app = express();
const PORT = process.env.PORT || 3000;

app.use(cors());
app.use(express.json());

const pool = new Pool({
  connectionString: process.env.DATABASE_URL,
});

app.get('/', (req, res) => {
  res.json({ message: 'Welcome to the API' });
});

app.listen(PORT, () => console.log(\`Server running on port \${PORT}\`));
EOF

        cat << EOF > "$project_dir/.env"
DATABASE_URL=postgres://${project_name}_user:your_secure_password@localhost:5432/${project_name}
PORT=3000
EOF

        # Create a basic .gitignore file
        cat << EOF > "$project_dir/.gitignore"
node_modules/
.env
*.log
EOF
        ;;

    "client")
        npx create-react-app "$client_dir"
        cd "$client_dir"
        npm install axios react-router-dom styled-components

        # Update .gitignore for client
        echo "build/" >> "$client_dir/.gitignore"
        ;;

    *)
        echo "Invalid project type. Use 'root' or 'client'."
        exit 1
        ;;
esac

# Run additional setup scripts
script_dir="$(dirname "$0")"
"$script_dir/link-node-modules.sh" "$project_type" "$project_name"
"$script_dir/set-configs.sh" "$project_dir" "$project_name"

echo "Project $project_name set up successfully"
