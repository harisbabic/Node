#!/bin/bash
# setup-noloco-theme.sh

project_dir="$1"
install_target="$2"

if [ -z "$project_dir" ] || [ -z "$install_target" ]; then
    echo "Usage: $0 <project-dir> <install-target>"
    echo "install-target options: client, server, both"
    exit 1
fi

# Colors
PRIMARY_COLOR="#0F172A"
SECONDARY_COLOR="#3B82F6"
BACKGROUND_COLOR="#F8FAFC"
TEXT_COLOR="#1E293B"

# Font
FONT_FAMILY= "Inter, sans-serif"

setup_client() {
    echo "Setting up Noloco theme for client..."

    # Install dependencies
    cd "$project_dir/client" || exit
    npm install styled-components@^5.3.5 react-icons@^4.3.1

    # Create theme file
    mkdir -p src/styles
    cat << EOF > src/styles/NolocoTheme.js
import { createGlobalStyle } from 'styled-components';

const NolocoTheme = {
  colors: {
    primary: '${PRIMARY_COLOR}',
    secondary: '${SECONDARY_COLOR}',
    background: '${BACKGROUND_COLOR}',
    text: '${TEXT_COLOR}',
  },
  fonts: {
    body: '${FONT_FAMILY}',
  },
};
export default NolocoTheme;

export const GlobalStyle = createGlobalStyle\`
  @import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap');

  body {
    font-family: ${FONT_FAMILY};
    background-color: ${BACKGROUND_COLOR};
    color: ${TEXT_COLOR};
    margin: 0;
    padding: 0;
  }

  h1, h2, h3, h4, h5, h6 {
    color: ${PRIMARY_COLOR};
  }

  a {
    color: ${SECONDARY_COLOR};
    text-decoration: none;
  }
\`;
EOF

    # Create component templates
    mkdir -p src/components/Noloco

    # Button component
    cat << EOF > src/components/Noloco/Button.js
import styled from 'styled-components';

const Button = styled.button\`
  background-color: \${props => props.theme.colors.secondary};
  color: white;
  border: none;
  padding: 10px 20px;
  border-radius: 4px;
  font-weight: 600;
  cursor: pointer;
  transition: background-color 0.3s ease;

  &:hover {
    background-color: \${props => props.theme.colors.primary};
  }
\`;

export default Button;
EOF

    # Card component
    cat << EOF > src/components/Noloco/Card.js
import styled from 'styled-components';

const Card = styled.div\`
  background-color: white;
  border-radius: 8px;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  padding: 20px;
  margin-bottom: 20px;
\`;

export default Card;
EOF

    # Container component
    cat << EOF > src/components/Noloco/Container.js
import styled from 'styled-components';

const Container = styled.div\`
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 20px;
\`;

export default Container;
EOF

    # Update App.js to use the theme
    sed -i "1i import { ThemeProvider } from 'styled-components';" src/App.js
    sed -i "2i import { theme, GlobalStyle } from './styles/NolocoTheme';" src/App.js
    sed -i "s/<React.StrictMode>/<ThemeProvider theme={theme}><React.StrictMode><GlobalStyle \/>/" src/App.js
    sed -i "s/<\/React.StrictMode>/<\/React.StrictMode><\/ThemeProvider>/" src/App.js

    echo "Client Noloco theme setup completed."
}

setup_server() {
    echo "Setting up Noloco theme for server..."

    # For server, we'll create some utility functions and middleware that align with Noloco's style
    cd "$project_dir/server" || exit
    mkdir -p src/utils src/middleware

    # Create a utility file for consistent API responses
    cat << EOF > src/utils/apiResponse.js
const sendResponse = (res, statusCode, data, message = '') => {
  res.status(statusCode).json({
    success: statusCode < 400,
    data,
    message,
  });
};

const sendError = (res, statusCode, message) => {
  res.status(statusCode).json({
    success: false,
    error: message,
  });
};

module.exports = {
  sendResponse,
  sendError,
};
EOF

    # Create a middleware for error handling
    cat << EOF > src/middleware/errorHandler.js
const { sendError } = require('../utils/apiResponse');

const errorHandler = (err, req, res, next) => {
  console.error(err.stack);

  const statusCode = err.statusCode || 500;
  const message = err.message || 'Internal Server Error';

  sendError(res, statusCode, message);
};

module.exports = errorHandler;
EOF

    echo "Server-side Noloco theme setup completed."
}

case "$install_target" in
    client)
        setup_client
        ;;
    server)
        setup_server
        ;;
    both)
        setup_client
        setup_server
        ;;
    *)
        echo "Invalid install target. Choose 'client', 'server', or 'both'."
        exit 1
        ;;
esac

echo "Noloco theme setup completed for $install_target."
