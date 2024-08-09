#!/bin/bash
# setup-testing.sh
# Usage: ./setup-testing.sh <project-name>

project_name=$1

if [ -z "$project_name" ]; then
  echo "Usage: $0 <project-name>"
  exit 1
fi

project_dir="/d/Node/projects/$project_name"

# Install Jest and testing utilities
cd "$project_dir"
npm install --save-dev jest @testing-library/react @testing-library/jest-dom @testing-library/user-event supertest

# Create Jest config
cat << EOF > jest.config.js
module.exports = {
  testEnvironment: 'jsdom',
  setupFilesAfterEnv: ['@testing-library/jest-dom/extend-expect'],
  moduleNameMapper: {
    '\\.(css|less|scss|sass)$': 'identity-obj-proxy',
  },
  testPathIgnorePatterns: ['/node_modules/', '/build/'],
  coverageDirectory: './coverage',
  collectCoverageFrom: ['src/**/*.{js,jsx}'],
};
EOF

# Create a sample test file
mkdir -p src/__tests__
cat << EOF > src/__tests__/App.test.js
import React from 'react';
import { render, screen } from '@testing-library/react';
import App from '../App';

test('renders learn react link', () => {
  render(<App />);
  const linkElement = screen.getByText(/learn react/i);
  expect(linkElement).toBeInTheDocument();
});
EOF

# Update package.json scripts
npm pkg set scripts.test="jest"
npm pkg set scripts.test:watch="jest --watch"
npm pkg set scripts.test:coverage="jest --coverage"

echo "Testing setup completed for $project_name"




# Commented below is the original setup-testing.sh

# #!/bin/bash
# # setup-testing.sh
# # Usage: ./setup-testing.sh <project-name>

# project_name=$1
# project_dir="/d/Node/projects/$project_name"

# cd "$project_dir"

# # Install testing dependencies
# npm install --save-dev jest @testing-library/react @testing-library/jest-dom @testing-library/user-event

# # Update package.json
# npm pkg set scripts.test="jest"
# npm pkg set scripts.test:watch="jest --watch"
# npm pkg set scripts.test:coverage="jest --coverage"

# # Create Jest config
# cat << EOF > "$project_dir/jest.config.js"
# module.exports = {
#   setupFilesAfterEnv: ['@testing-library/jest-dom/extend-expect'],
#   testEnvironment: 'jsdom',
#   moduleNameMapper: {
#     '\\.(css|less|scss|sass)$': 'identity-obj-proxy',
#   },
# };
# EOF

# # Create a sample test
# cat << EOF > "$project_dir/src/App.test.js"
# import React from 'react';
# import { render, screen } from '@testing-library/react';
# import App from './App';

# test('renders learn react link', () => {
#   render(<App />);
#   const linkElement = screen.getByText(/learn react/i);
#   expect(linkElement).toBeInTheDocument();
# });
# EOF

# echo "Testing framework set up for $project_name"
