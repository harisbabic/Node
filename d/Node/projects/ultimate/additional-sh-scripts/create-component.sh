#!/bin/bash

# create-component.sh
# Location: /d/Node/utils/create-component.sh
# Usage: create-component.sh <project-name> <component-name>
# Description: Creates a new React component with associated files

# Validate input parameters
if [ $# -ne 2 ]; then
    echo "Usage: $0 <project-name> <component-name>"
    exit 1
fi

project_name=$1
component_name=$2

# Define directory paths
root_dir="/d/Node"
project_dir="$root_dir/projects/$project_name"
component_dir="$project_dir/client/src/components/$component_name"

# Create component directory
mkdir -p "$component_dir"

# Create component file
cat << EOF > "$component_dir/$component_name.js"
import React from 'react';
import styled from 'styled-components';

const ${component_name}Wrapper = styled.div\`
  // Add your styles here
\`;

const $component_name = () => {
  return (
    <${component_name}Wrapper>
      <h1>$component_name Component</h1>
    </${component_name}Wrapper>
  );
};

export default $component_name;
EOF

# Create test file
cat << EOF > "$component_dir/$component_name.test.js"
import React from 'react';
import { render, screen } from '@testing-library/react';
import $component_name from './$component_name';

test('renders $component_name component', () => {
  render(<$component_name />);
  const headingElement = screen.getByText(/$component_name Component/i);
  expect(headingElement).toBeInTheDocument();
});
EOF

echo "Component $component_name created successfully in $project_name"
