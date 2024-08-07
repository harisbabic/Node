Certainly! I'll analyze the Noloco guides and create a shell script to replicate their theme. This script will be designed to be modular and installable on either the frontend, backend, or both. Let's create a script called `setup-noloco-theme.sh` that accomplishes this.

```bash
#!/bin/bash
# setup-noloco-theme.sh

project_dir="$1"
install_target="$2"

if [ -z "$project_dir" ] || [ -z "$install_target" ]; then
    echo "Usage: $0 <project-dir> <install-target>"
    echo "install-target options: frontend, backend, both"
    exit 1
fi

# Colors
PRIMARY_COLOR="#0F172A"
SECONDARY_COLOR="#3B82F6"
BACKGROUND_COLOR="#F8FAFC"
TEXT_COLOR="#1E293B"

# Font
FONT_FAMILY="'Inter', sans-serif"

setup_frontend() {
    echo "Setting up Noloco theme for frontend..."

    # Install dependencies
    cd "$project_dir/frontend" || exit
    npm install styled-components@^5.3.5 react-icons@^4.3.1

    # Create theme file
    mkdir -p src/styles
    cat << EOF > src/styles/NolocoTheme.js
import { createGlobalStyle } from 'styled-components';

export const theme = {
  colors: {
    primary: '${PRIMARY_COLOR}',
    secondary: '${SECONDARY_COLOR}',
    background: '${BACKGROUND_COLOR}',
    text: '${TEXT_COLOR}',
  },
  fonts: {
    body: ${FONT_FAMILY},
  },
};

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

    echo "Frontend Noloco theme setup completed."
}

setup_backend() {
    echo "Setting up Noloco theme for backend..."

    # For backend, we'll create some utility functions and middleware that align with Noloco's style
    cd "$project_dir/backend" || exit
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

    echo "Backend Noloco theme setup completed."
}

case "$install_target" in
    frontend)
        setup_frontend
        ;;
    backend)
        setup_backend
        ;;
    both)
        setup_frontend
        setup_backend
        ;;
    *)
        echo "Invalid install target. Choose 'frontend', 'backend', or 'both'."
        exit 1
        ;;
esac

echo "Noloco theme setup completed for $install_target."

```

This script does the following:

1. For the frontend:
   - Installs necessary dependencies (styled-components and react-icons)
   - Creates a theme file with Noloco-like colors and styles
   - Sets up global styles
   - Creates reusable components (Button, Card, Container) that match Noloco's style
   - Updates App.js to use the theme provider

2. For the backend:
   - Creates utility functions for consistent API responses
   - Sets up an error handling middleware

To use this script:

1. Save it as `setup-noloco-theme.sh` in your `/d/Node/utils/` directory.
2. Make it executable: `chmod +x /d/Node/utils/setup-noloco-theme.sh`
3. Run it for a project:
   - For frontend only: `./setup-noloco-theme.sh /path/to/your/project frontend`
   - For backend only: `./setup-noloco-theme.sh /path/to/your/project backend`
   - For both: `./setup-noloco-theme.sh /path/to/your/project both`

To integrate this into your master setup script, you can add the following line:

```bash
$utils_dir/setup-noloco-theme.sh "$project_dir" "both"
```

This will apply the Noloco-like theme to both the frontend and backend of your project.

Remember that this script provides a basic foundation based on Noloco's style. You may want to expand it further with more components or styles as needed for your specific projects.

Is there anything else you'd like me to add or modify in this theme setup script?
