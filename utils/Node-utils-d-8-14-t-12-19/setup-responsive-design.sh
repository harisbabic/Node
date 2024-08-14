#!/bin/bash
# setup-responsive-design.sh

project_dir="$1"

if [ -z "$project_dir" ]; then
  echo "Usage: $0 <project-dir>"
  exit 1
fi

client_dir="$project_dir/client"
cd "$client_dir"
mkdir -p src/styles
mkdir -p src/components

cat << EOF > src/styles/breakpoints.js
const sizes = {
  mobile: '576px',
  tablet: '768px',
  desktop: '1024px',
  largeDesktop: '1440px',
};

export const devices = {
  mobile: \`(min-width: \${sizes.mobile})\`,
  tablet: \`(min-width: \${sizes.tablet})\`,
  desktop: \`(min-width: \${sizes.desktop})\`,
  largeDesktop: \`(min-width: \${sizes.largeDesktop})\`,
};

export const mediaQueries = {
  mobile: \`@media \${devices.mobile}\`,
  tablet: \`@media \${devices.tablet}\`,
  desktop: \`@media \${devices.desktop}\`,
  largeDesktop: \`@media \${devices.largeDesktop}\`,
};
EOF

cat << EOF > src/styles/ResponsiveWrapper.js
import styled from 'styled-components';
import { mediaQueries } from './breakpoints';

const ResponsiveWrapper = styled.div\`
  padding: 1rem;
  width: 100%;
  max-width: 100%;

  \${mediaQueries.tablet} {
    padding: 2rem;
    max-width: 720px;
    margin: 0 auto;
  }

  \${mediaQueries.desktop} {
    padding: 3rem;
    max-width: 960px;
  }

  \${mediaQueries.largeDesktop} {
    max-width: 1200px;
  }
\`;

export default ResponsiveWrapper;
EOF

# Create a responsive grid component
cat << EOF > src/components/ResponsiveGrid.js
import styled from 'styled-components';
import { mediaQueries } from '../styles/breakpoints';

const ResponsiveGrid = styled.div\`
  display: grid;
  grid-template-columns: 1fr;
  gap: 1rem;

  \${mediaQueries.tablet} {
    grid-template-columns: repeat(2, 1fr);
  }

  \${mediaQueries.desktop} {
    grid-template-columns: repeat(3, 1fr);
  }

  \${mediaQueries.largeDesktop} {
    grid-template-columns: repeat(4, 1fr);
  }
\`;

export default ResponsiveGrid;
EOF

echo "Responsive design helpers created in $client_dir/src/styles and $client_dir/src/components"
