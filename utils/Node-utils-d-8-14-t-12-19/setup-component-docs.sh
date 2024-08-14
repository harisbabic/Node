#!/bin/bash
# setup-component-docs.sh

set -euo pipefail

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

project_dir="$1"

if [ -z "$project_dir" ]; then
  error_exit "Usage: $0 <project-dir>"
fi

client_dir="$project_dir/client"
cd "$client_dir" || error_exit "Failed to change to client directory"

log "Setting up component documentation for $client_dir"

# Install Storybook
npx sb init --builder webpack5

# Install additional addons
npm install --save-dev @storybook/addon-a11y @storybook/addon-viewport @storybook/addon-docs

# Update .storybook/main.js to include addons
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
mkdir -p src/stories
cat << EOF > src/stories/AnimatedBox.stories.js
import React from 'react';
import AnimatedBox from '../components/AnimatedBox';

export default {
  title: 'Components/AnimatedBox',
  component: AnimatedBox,
  argTypes: {
    backgroundColor: { control: 'color' },
  },
};

const Template = (args) => <AnimatedBox {...args} />;

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
npm pkg set scripts.storybook="start-storybook -p 6006 -s public"
npm pkg set scripts.build-storybook="build-storybook -s public"

log "Component documentation setup completed for $client_dir directory."
