#!/bin/bash
# setup-styled-components.sh

project_dir="$1"

if [ -z "$project_dir" ]; then
  echo "Usage: $0 <project-dir>"
  exit 1
fi

client_dir="$project_dir/client"
cd "$client_dir"

# Install styled-components
npm install styled-components

# Create theme file
mkdir -p src/styles

cat << EOF > src/styles/theme.js
export const theme = {
  colors: {
    primary: '#0070f3',
    secondary: '#0070f3',
    background: '#ffffff',
    text: '#000000',
  },
  fonts: {
    body: 'Arial, sans-serif',
    heading: 'Georgia, serif',
  },
  breakpoints: {
    mobile: '576px',
    tablet: '768px',
    desktop: '1024px',
  },
};
EOF

# Create global styles
cat << EOF > src/styles/GlobalStyle.js
import { createGlobalStyle } from 'styled-components';

const GlobalStyle = createGlobalStyle\`
  body {
    margin: 0;
    padding: 0;
    font-family: \${({ theme }) => theme.fonts.body};
    background-color: \${({ theme }) => theme.colors.background};
    color: \${({ theme }) => theme.colors.text};
  }
\`;

export default GlobalStyle;
EOF

# Update App.js to use ThemeProvider and GlobalStyle
sed -i '1s/^/import { ThemeProvider } from "styled-components";\nimport { theme } from "./styles/theme";\nimport GlobalStyle from "./styles/GlobalStyle";\n/' "src/App.js"
sed -i 's/<React.StrictMode>/<ThemeProvider theme={theme}><GlobalStyle \/><React.StrictMode>/; s/<\/React.StrictMode>/<\/React.StrictMode><\/ThemeProvider>/' "src/App.js"

echo "Styled-components setup completed for $client_dir directory."
