#!/bin/bash
# setup-code-quality.sh
# Usage: ./setup-code-quality.sh <project-name>

project_name=$1
project_dir="/d/Node/projects/$project_name"

cd "$project_dir"

# Install ESLint and Prettier
npm install --save-dev eslint prettier eslint-config-prettier eslint-plugin-prettier eslint-plugin-react

# Create ESLint config
cat << EOF > .eslintrc.json
{
  "extends": [
    "eslint:recommended",
    "plugin:react/recommended",
    "plugin:prettier/recommended"
  ],
  "plugins": ["react", "prettier"],
  "rules": {
    "prettier/prettier": "error"
  },
  "parserOptions": {
    "ecmaVersion": 2021,
    "sourceType": "module",
    "ecmaFeatures": {
      "jsx": true
    }
  },
  "env": {
    "browser": true,
    "node": true,
    "es6": true
  },
  "settings": {
    "react": {
      "version": "detect"
    }
  }
}
EOF

# Create Prettier config
cat << EOF > .prettierrc
{
  "singleQuote": true,
  "trailingComma": "es5",
  "tabWidth": 2,
  "semi": true
}
EOF

# Update package.json
npm pkg set scripts.lint="eslint ."
npm pkg set scripts.format="prettier --write ."

echo "Code quality tools set up for $project_name"
