#!/bin/bash
# init-git-repo.sh

project_dir=$1

cd "$project_dir"

# Initialize Git repository
git init

# Create .gitignore file
cat << EOF > .gitignore
# Dependencies
/node_modules

# Production build
/build

# Misc
.DS_Store
.env.local
.env.development.local
.env.test.local
.env.production.local

npm-debug.log*
yarn-debug.log*
yarn-error.log*

# Editor directories and files
.idea
.vscode
*.suo
*.ntvs*
*.njsproj
*.sln
*.sw?
EOF

# Add all files and make initial commit
git add .
git commit -m "Initial commit"

echo "Git repository initialized and initial commit made for $project_dir"
