#!/bin/bash
# setup-code-style.sh
# Usage: ./setup-code-style.sh <project-name>

project_name=$1
project_dir="/d/Node/projects/$project_name"

cd "$project_dir"

# Install ESLint and Prettier
npm install --save-dev eslint prettier eslint-config-prettier eslint-plugin-prettier

# Create ESLint config
cat << EOF > .eslintrc.json
{
  "extends": ["eslint:recommended", "plugin:react/recommended", "plugin:prettier/recommended"],
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
  "semi": true,
  "printWidth": 100
}
EOF

# Add scripts to package.json
npm pkg set scripts.lint="eslint ."
npm pkg set scripts.format="prettier --write ."

echo "ESLint and Prettier set up for $project_name"
