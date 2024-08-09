#!/bin/bash
# generate-project-structure.sh
# Usage: ./generate-project-structure.sh <project-name>

project_name=$1
project_dir="/d/Node/projects/$project_name"

mkdir -p "$project_dir"/{src,public,scripts,config,tests,docs}
mkdir -p "$project_dir/src/"{components,pages,utils,services,styles}
mkdir -p "$project_dir/tests/"{unit,integration,e2e}

# Create main application files
touch "$project_dir/src/App.js" "$project_dir/src/index.js"

# Create configuration files
touch "$project_dir/"{.env,.env.example,.gitignore,README.md,CONTRIBUTING.md,LICENSE}
touch "$project_dir/config/"{webpack.config.js,jest.config.js}

# Create package.json
cat << EOF > "$project_dir/package.json"
{
  "name": "$project_name",
  "version": "1.0.0",
  "description": "A comprehensive project structure",
  "main": "src/index.js",
  "scripts": {
    "start": "webpack serve --mode development",
    "build": "webpack --mode production",
    "test": "jest",
    "lint": "eslint .",
    "format": "prettier --write ."
  },
  "author": "",
  "license": "ISC",
  "dependencies": {},
  "devDependencies": {}
}
EOF

echo "Complete project structure generated for $project_name"
