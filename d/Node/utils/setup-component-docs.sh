#!/bin/bash
# setup-component-docs.sh
# Relative path: d/Node/utils/setup-component-docs.sh
# Description: Sets up component documentation for the project

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
CLIENT_DIR="$PROJECT_DIR/client"

log_info "Setting up component documentation for $PROJECT_NAME"

# Ensure client directory exists
if [ ! -d "$CLIENT_DIR" ]; then
    log_error "Client directory does not exist: $CLIENT_DIR"
    exit 1
fi

cd "$CLIENT_DIR" || exit 1

# Install Storybook
log_info "Installing Storybook..."
if ! npx sb init --builder webpack5; then
    log_error "Failed to initialize Storybook"
    exit 1
fi

# Install additional addons
log_info "Installing additional Storybook addons..."
npm install --save-dev @storybook/addon-a11y @storybook/addon-viewport @storybook/addon-docs

# Update .storybook/main.js to include addons
log_info "Updating Storybook configuration..."
cat << EOF > .storybook/main.js
module.exports = {
  stories: ['../src/**/*.stories.mdx', '../src/**/*.stories.@(js|jsx|ts|tsx)'],
  addons: [
    '@storybook/addon-links',
    '@storybook/addon-essentials',
    '@storybook/preset-create-react-app',
    '@storybook/addon-a11y',
    '@storybook/addon-viewport',
  ],
  framework: '@storybook/react',
  core: {
    builder: 'webpack5',
  },
};
EOF

# Create a sample story for the AnimatedBox component
log_info "Creating sample Storybook story..."
ensure_directory src/stories
cat << EOF > src/stories/AnimatedBox.stories.tsx
import React from 'react';
import { Story, Meta } from '@storybook/react';
import AnimatedBox, { AnimatedBoxProps } from '../components/AnimatedBox';

export default {
  title: 'Components/AnimatedBox',
  component: AnimatedBox,
  argTypes: {
    backgroundColor: { control: 'color' },
  },
} as Meta;

const Template: Story<AnimatedBoxProps> = (args) => <AnimatedBox {...args} />;

export const Default = Template.bind({});
Default.args = {
  backgroundColor: 'blue',
};

export const CustomColor = Template.bind({});
CustomColor.args = {
  backgroundColor: 'red',
};
EOF

# Create a documentation page for AnimatedBox
log_info "Creating component documentation..."
cat << EOF > src/stories/AnimatedBox.stories.mdx
import { Meta, Story, Canvas, ArgsTable } from '@storybook/addon-docs';
import AnimatedBox from '../components/AnimatedBox';

<Meta title="Components/AnimatedBox" component={AnimatedBox} />

# AnimatedBox

An animated box component that scales on hover and tap.

<Canvas>
  <Story name="Default">
    <AnimatedBox />
  </Story>
</Canvas>

## Props

<ArgsTable of={AnimatedBox} />

## Usage

Import the component and use it in your React application:

\`\`\`jsx
import AnimatedBox from './components/AnimatedBox';

function App() {
  return (
    <div>
      <AnimatedBox />
    </div>
  );
}
\`\`\`
EOF

# Add Storybook scripts to package.json
log_info "Adding Storybook scripts to package.json..."
npm pkg set scripts.storybook="start-storybook -p 6006 -s public"
npm pkg set scripts.build-storybook="build-storybook -s public"

log_info "Component documentation setup completed for $PROJECT_NAME"
