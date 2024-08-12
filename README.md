# Project Documentation

# Node

### .gitignore

```
node_modules/
.env
*.log
build/

```

## docs

### Comprehensive-Integration-Plan-Incorporating-Features-from-Web-Tools-and-DemTech-into-d-Node-Project

```
### Prompt Example

**Task Reminder:**
"Today, we'll be integrating the `Database Setup` feature from our current project with PostgreSQL. Please focus on ensuring all necessary changes are made to transition from MongoDB to PostgreSQL. Here are the relevant files for review and integration."

**Files to Review:**
- **Current Project:** `setup-database.sh`
- **Web Tools:** `database-setup.js`
- **DemTech:** `db-config.js`

By keeping each task focused and modular, we can ensure a robust and efficient integration of features, ultimately leading to a comprehensive and feature-rich application environment.

### Next Steps

1. **Focus on One Feature at a Time:**
   - Start with the highest priority feature.
   - Ensure each feature is thoroughly tested and integrated.

2. **Detailed Implementation:**
   - Provide current project files.
   - Provide corresponding Web Tools and DemTech files.

### Comprehensive Integration Plan: Incorporating Features from Web Tools and DemTech into `/d/Node` Project

#### Current Project Overview
The current project located in `/d/Node` is designed to automate the setup of new projects with various utility scripts and setup tools. Key components include:
- **`master-setup.sh`**: The primary script that orchestrates the project setup.
- **Utility Scripts**: Shell scripts in `/d/Node/utils` and JavaScript utilities in `/d/Node/utils/js-utils`.
- **Modular Directory Structure**: Organized subdirectories for components, views, services, styles, etc.
- **PostgreSQL**: Preferred database for backend operations.

### Features to Integrate

#### From Web Tools

1. **AI Tools Integration (`generate-ai-tools.js`)**
   - **Description**: Automates the generation of AI-powered tools like SmartContractGenerator, AutomaticTimeTracker, etc.
   - **Priority**: Medium (Provides advanced features for AI-driven functionalities).

2. **Chart Generation (`generate-charts.js`)**
   - **Description**: Automates the creation of chart components using libraries like Chart.js or D3.js.
   - **Priority**: High (Enhances data visualization capabilities).

3. **Component Generation (`generate-components.js`)**
   - **Description**: Automates the creation of common components (e.g., Dashboard, ProjectList).
   - **Priority**: High (Speeds up component creation).

4. **Forms and Templates (`generate-forms-templates.js`)**
   - **Description**: Automates the creation of dynamic forms and templates (e.g., ClientOnboarding, InvoiceTemplate).
   - **Priority**: High (Improves user interaction and customization).

5. **Mock Data Generation (`generate-mock-data.js`)**
   - **Description**: Generates mock data for testing and development.
   - **Priority**: Medium (Facilitates testing with realistic data).

6. **Model Generation (`generate-models.js`)**
   - **Description**: Automates the creation of data models (e.g., User, Client, Project).
   - **Priority**: High (Standardizes data models across projects).

7. **Authentication and Middleware**
   - **Description**: Comprehensive user authentication system including registration, login, logout, and password management. Middleware to ensure authenticated access to protected routes.
   - **Priority**: High (Critical for secure user management).

#### From DemTech

1. **API Routes Generation (`generate-routes.js`)**
   - **Description**: Automates the creation of API routes with CRUD operations.
   - **Priority**: High (Essential for backend API development).

2. **Error Handling and Logging (`enhance-error-handling.sh`)**
   - **Description**: Sets up comprehensive error handling and logging using Winston.
   - **Priority**: High (Enhances reliability and debuggability).

3. **Frontend Structure Generation (`generate-frontend-structure.sh`)**
   - **Description**: Automates the creation of a structured frontend layout.
   - **Priority**: High (Standardizes frontend project structure).

4. **Component Creation (`generate-component.sh`)**
   - **Description**: Automates the creation of various types of components (e.g., buttons, modals).
   - **Priority**: Medium (Facilitates component creation).

5. **Project Report Generation (`generate-project-report.sh`)**
   - **Description**: Generates comprehensive reports on project structure and status.
   - **Priority**: Low (Provides useful documentation but not critical).

6. **Dynamic Form and Table Components**
   - **Description**: Components to handle dynamic form and table rendering in the frontend.
   - **Priority**: High (Improves frontend flexibility and user experience).

7. **SEO Optimization**
   - **Description**: Components and utilities for managing SEO tags and metadata.
   - **Priority**: Medium (Improves search engine visibility).

8. **State Management and Middleware**
   - **Description**: Redux setup for state management and middleware configuration.
   - **Priority**: High (Centralizes state management).

9. **Service Worker and PWA Setup**
   - **Description**: Scripts to set up service workers and enable Progressive Web App (PWA) features.
   - **Priority**: Medium (Enhances user experience by enabling offline support).

10. **i18n Internationalization**
    - **Description**: Setup for multi-language support using i18next.
    - **Priority**: Medium (Expands accessibility).

11. **Component Library Integration**
    - **Description**: Integration with Storybook for developing and testing UI components.
    - **Priority**: Medium (Improves UI development and testing).

### Prioritized Integration Plan

#### Phase 1: High Priority Features
1. **Authentication System and Middleware**
   - **Goal**: Integrate authentication routes and middleware.
   - **Steps**:
     - Incorporate routes from `routes/auth.js`.
     - Update middleware to use PostgreSQL for session management.
     - Adjust `models/User.js` to ensure compatibility with PostgreSQL.

2. **Dashboard and Analytics**
   - **Goal**: Enhance data visualization capabilities.
   - **Steps**:
     - Add dashboard components to the client directory.
     - Create necessary API endpoints in the server.
     - Set up database models to store analytical data.

3. **File Management System**
   - **Goal**: Enable file upload/download service and file metadata management.
   - **Steps**:
     - Update the `apiService.js` to handle file uploads.
     - Create file management routes and services in the server.
     - Ensure PostgreSQL is used for storing file metadata.

4. **Role-Based Access Control (RBAC)**
   - **Goal**: Secure different parts of the application based on user roles.
   - **Steps**:
     - Implement RBAC middleware.
     - Update the user model to include roles.
     - Create routes to manage roles and permissions.

5. **API Routes Generation**
   - **Goal**: Automate backend API development.
   - **Steps**:
     - Integrate `generate-routes.js` to create routes for entities like users, projects, tasks.

6. **Error Handling and Logging**
   - **Goal**: Improve error handling and logging.
   - **Steps**:
     - Add `enhance-error-handling.sh`.
     - Ensure comprehensive error handling and logging using Winston.

7. **Frontend Structure Generation**
   - **Goal**: Standardize frontend project structure.
   - **Steps**:
     - Use `generate-frontend-structure.sh` to set up frontend directories and core files.

8. **Dynamic Form and Table Components**
   - **Goal**: Enhance frontend flexibility and user experience.
   - **Steps**:
     - Integrate dynamic form and table components into the client.

#### Phase 2: Medium Priority Features
1. **AI Tools Integration**
   - **Goal**: Provide advanced AI-driven functionalities.
   - **Steps**:
     - Add `generate-ai-tools.js` to create various AI tools with necessary API calls and data processing logic.

2. **Forms and Templates**
   - **Goal**: Improve user interaction and customization.
   - **Steps**:
     - Add functionality to generate forms and templates with drag-and-drop capabilities.

3. **Mock Data Generation**
   - **Goal**: Facilitate testing with realistic data.
   - **Steps**:
     - Integrate `generate-mock-data.js` to create realistic mock data for users, products, and orders.

4. **Component Creation**
   - **Goal**: Facilitate component creation.
   - **Steps**:
     - Add `generate-component.sh` to scaffold React components with different functionalities.

5. **SEO Optimization**
   - **Goal**: Improve search engine visibility.
   - **Steps**:
     - Add SEO components to manage metadata.

6. **State Management**
   - **Goal**: Centralize state management.
   - **Steps**:
     - Set up Redux store and middleware.

7. **Service Worker and PWA Setup**
   - **Goal**: Enhance user experience by enabling offline support.
   - **Steps**:
     - Integrate service worker registration for PWA features.

8. **i18n Internationalization**
   - **Goal**: Expand accessibility.
   - **Steps**:
     - Set up i18n for multi-language support.

9. **Component Library Integration**
   - **Goal**: Improve UI development and testing.
   - **Steps**:
     - Set up Storybook for UI component development.

#### Phase 3: Low Priority Features
1. **Project Report Generation**
   - **Goal**: Provide useful documentation.
   - **Steps**:
     - Use `generate-project-report.sh` to create detailed project reports.

2. **Progressive Web App (PWA) Support**
   - **Goal**: Enhance user experience by making the app available offline.
   - **Steps**:
     - Implement service worker registration, update manifest file, and ensure all critical assets are cached.

3. **CI/CD Pipeline Setup**
   - **Goal**: Automate the deployment process, ensuring faster and more reliable releases.
   - **Steps**:
     - Set up CI/CD scripts, integrate with GitHub Actions or other CI tools, and ensure automated testing is included in the pipeline.

### Implementation Plan

1. **Setup Scripts Review and Update**
   - **Goal**: Ensure all setup scripts are robust and support new features.
   - **Steps**:
     - Review existing setup scripts in `utils`.
     - Update scripts to include new features.
     - Test each script individually.

2. **Project Directory Structure**
   - **Goal**: Maintain a consistent and modular directory structure.
   - **Steps**:
     - Ensure the directory structure supports

 easy integration of new features.
     - Update documentation to reflect changes.

3. **Testing and Debugging**
   - **Goal**: Ensure all features are thoroughly tested.
   - **Steps**:
     - Enhance test scripts.
     - Perform unit, integration, and end-to-end tests.
     - Fix any bugs identified during testing.

### Conclusion

By integrating these features in a phased manner, we can enhance our current project to be feature-rich and modular. This approach ensures we maintain a robust and scalable environment for future projects while leveraging the best functionalities from Web Tools and DemTech.

### Next Steps

1. **Phase 1: High Priority Features**
   - **Authentication and Middleware**
   - **Dashboard and Analytics**
   - **File Management System**
   - **Role-Based Access Control (RBAC)**
   - **API Routes Generation**
   - **Error Handling and Logging**
   - **Frontend Structure Generation**
   - **Dynamic Form and Table Components**

2. **Phase 2: Medium Priority Features**
   - **AI Tools Integration**
   - **Forms and Templates**
   - **Mock Data Generation**
   - **Component Creation**
   - **SEO Optimization**
   - **State Management**
   - **Service Worker and PWA Setup**
   - **i18n Internationalization**
   - **Component Library Integration**

3. **Phase 3: Low Priority Features**
   - **Project Report Generation**
   - **Progressive Web App (PWA) Support**
   - **CI/CD Pipeline Setup**

Each phase will be thoroughly tested and debugged to ensure seamless integration and functionality.

```

### implementation-guide.md

```md
# Detailed Implementation Guide

## 1. Update master-setup.sh

1. Open `/d/Node/utils/master-setup.sh`
2. Ensure all script calls are present and in the correct order
3. Add any missing script calls (e.g., setup-pwa.sh, setup-seo.sh)

## 2. Update setup-project.sh

1. Open `/d/Node/utils/setup-project.sh`
2. Modify the script to use PostgreSQL instead of MongoDB
3. Update the package installation commands to include new dependencies
4. Create a basic Express app with PostgreSQL connection

## 3. Update set-configs.sh

1. Open `/d/Node/utils/set-configs.sh`
2. Update the package.json generation to include new scripts and dependencies
3. Modify the Jest configuration to accommodate the new project structure
4. Update or create any necessary configuration files (e.g., .babelrc, tsconfig.json)

## 4. Update generate-tests.sh

1. Open `/d/Node/utils/generate-tests.sh`
2. Modify the test generation to create tests within the project directory
3. Update the sample tests to use the new project structure and PostgreSQL

## 5. Update setup-styled-components.sh

1. Open `/d/Node/utils/setup-styled-components.sh`
2. Ensure the script creates a comprehensive theme file
3. Update the global styles creation
4. Modify the App.js update process to use ThemeProvider correctly

## 6. Update setup-sass.sh

1. Open `/d/Node/utils/setup-sass.sh`
2. Ensure the script installs the correct SASS package (node-sass or sass)
3. Update the SASS directory structure creation
4. Modify the package.json script updates to use the correct SASS commands

## 7. Update generate-layout.sh

1. Open `/d/Node/utils/generate-layout.sh`
2. Implement the improved layout generation logic
3. Ensure both dashboard and landing page layouts are generated correctly

## 8. Update setup-redux.sh

1. Open `/d/Node/utils/setup-redux.sh`
2. Modify the script to use the latest Redux Toolkit setup
3. Update the store creation and root reducer logic
4. Ensure the example slice is created correctly

## 9. Update setup-state-management.sh

1. Open `/d/Node/utils/setup-state-management.sh`
2. Implement the option to choose between Redux and MobX
3. Ensure correct setup for both state management solutions
4. Update the index.js modification to use the chosen state management solution

## 10. Update generate-api-service.sh

1. Open `/d/Node/utils/generate-api-service.sh`
2. Enhance the API service generation with additional HTTP methods
3. Implement better error handling in the generated service

## 11. Update generate-config.sh

1. Open `/d/Node/utils/generate-config.sh`
2. Enhance the Webpack configuration generation
3. Update the Babel configuration generation
4. Improve the TypeScript configuration generation

## 12. Update setup-performance-optimization.sh

1. Open `/d/Node/utils/setup-performance-optimization.sh`
2. Implement the installation of additional optimization packages
3. Enhance the Webpack configuration updates for better performance
4. Improve the lazy loading utility creation

## 13. Update setup-responsive-design.sh

1. Open `/d/Node/utils/setup-responsive-design.sh`
2. Enhance the breakpoints and devices definition
3. Improve the ResponsiveWrapper component
4. Add the new ResponsiveGrid component

## 14. Update setup-accessibility.sh

1. Open `/d/Node/utils/setup-accessibility.sh`
2. Update the installation of accessibility testing tools
3. Enhance the AccessibleButton component
4. Add the new SkipLink component for keyboard navigation

## 15. Update setup-animation.sh

1. Open `/d/Node/utils/setup-animation.sh`
2. Implement options for different animation libraries (Framer Motion, React Spring, React Transition Group)
3. Enhance the sample animated component for each library option

## 16. Update setup-i18n.sh

1. Open `/d/Node/utils/setup-i18n.sh`
2. Update the internationalization setup with additional packages
3. Enhance the i18n configuration
4. Add the LanguageSwitcher component

## 17. Create setup-pwa.sh

1. Create a new file `/d/Node/utils/setup-pwa.sh`
2. Implement the PWA setup logic as outlined in the improved script
3. Ensure proper service worker registration and manifest creation

## 18. Create setup-seo.sh

1. Create a new file `/d/Node/utils/setup-seo.sh`
2. Implement the SEO setup logic, including the SEO component creation
3. Add the sitemap generation script
4. Create the robots.txt file

## 19. Create setup-component-docs.sh

1. Create a new file `/d/Node/utils/setup-component-docs.sh`
2. Implement the Storybook installation and configuration
3. Add the sample story and documentation page for the AnimatedBox component

## 20. Update setup-postgresql.sh

1. Open `/d/Node/utils/setup-postgresql.sh`
2. Enhance the PostgreSQL setup process
3. Add the creation of a database connection utility
4. Implement the installation of the pg package

## 21. Testing and Verification

1. Run the master-setup.sh script to create a new project
2. Verify that all components are set up correctly
3. Test each feature (Redux/MobX, styled-components, SASS, layouts, API services, PWA, SEO, etc.)
4. Ensure the PostgreSQL connection is working properly
5. Run the generated tests and verify they pass
6. Check that Storybook is working and displaying components correctly

## 22. Documentation Update

1. Update the project README.md with the new setup process and available features
2. Create or update a CONTRIBUTING.md file with guidelines for contributors
3. Update any existing documentation to reflect the new project structure and capabilities


```

### noloco-theme-setup.md

```md
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

```

### postgres.md

```md
This output reveals a few important points:

1. Initially, you were able to connect to PostgreSQL with `psql -U postgres`, which prompted for a password.

2. After setting `PGPASSWORD`, you're unable to connect, suggesting that `your_postgres_password` is not the correct password for the postgres user.

3. The default user (ASRock) also doesn't have access to the database.

Here's what you should do:

1. Reset the postgres user password:

   a. Open Command Prompt as Administrator.

   b. Navigate to PostgreSQL's bin directory (e.g., `cd "C:\Program Files\PostgreSQL\16\bin"`).

   c. Run: `psql -U postgres -c "ALTER USER postgres WITH PASSWORD 'new_password';"`.

2. Update your pg_hba.conf file:

   a. Find the file (usually in PostgreSQL's data directory).

   b. Add or modify this line: `host all all 127.0.0.1/32 md5`.

   c. Restart the PostgreSQL service.

3. Try connecting again:

   ```
   set PGPASSWORD=new_password
   psql -U postgres
   ```

4. If successful, update your scripts with the new password.

5. For your setup script, modify the psql command:

   ```bash
   PGPASSWORD="${db_pass}" psql -U postgres -h localhost << EOF
   CREATE DATABASE ${project_name};
   CREATE USER ${db_user} WITH ENCRYPTED PASSWORD '${db_pass}';
   GRANT ALL PRIVILEGES ON DATABASE ${project_name} TO ${db_user};
   \c ${project_name}
   CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
   EOF
   ```

6. Ensure your .env file uses the correct password:

   ```
   DATABASE_URL=postgres://${db_user}:${db_pass}@localhost:5432/${project_name}
   ```

These steps should resolve the connection issues. Remember to use the correct password consistently across your setup scripts and application configuration.

## PSQL

Magic words:
```bash
psql -U postgres
```
Some interesting flags (to see all, use `-h` or `--help` depending on your psql version):
- `-E`: will describe the underlaying queries of the `\` commands (cool for learning!)
- `-l`: psql will list all databases and then exit (useful if the user you connect with doesn't has a default database, like at AWS RDS)

Most `\d` commands support additional param of `__schema__.name__` and accept wildcards like `*.*`

- `\?`: Show help (list of available commands with an explanation)
- `\q`: Quit/Exit
- `\c __database__`: Connect to a database
- `\d __table__`: Show table definition (columns, etc.) including triggers
- `\d+ __table__`: More detailed table definition including description and physical disk size
- `\l`: List databases
- `\dy`: List events
- `\df`: List functions
- `\di`: List indexes
- `\dn`: List schemas
- `\dt *.*`: List tables from all schemas (if `*.*` is omitted will only show SEARCH_PATH ones)
- `\dT+`: List all data types
- `\dv`: List views
- `\dx`: List all extensions installed
- `\df+ __function__` : Show function SQL code.
- `\x`: Pretty-format query results instead of the not-so-useful ASCII tables
- `\copy (SELECT * FROM __table_name__) TO 'file_path_and_name.csv' WITH CSV`: Export a table as CSV
- `\des+`: List all foreign servers
- `\dE[S+]`: List all foreign tables
- `\! __bash_command__`: execute `__bash_command__` (e.g. `\! ls`)

User Related:
- `\du`: List users
- `\du __username__`: List a username if present.
- `create role __test1__`: Create a role with an existing username.
- `create role __test2__ noinherit login password __passsword__;`: Create a role with username and password.
- `set role __test__;`: Change role for current session to `__test__`.
- `grant __test2__ to __test1__;`: Allow `__test1__` to set its role as `__test2__`.
- `\deu+`: List all user mapping on server

## Configuration

- Service management commands:
```
sudo service postgresql stop
sudo service postgresql start
sudo service postgresql restart
```

- Changing verbosity & querying Postgres log:
  <br/>1) First edit the config file, set a decent verbosity, save and restart postgres:
```
sudo vim /etc/postgresql/9.3/main/postgresql.conf

# Uncomment/Change inside:
log_min_messages = debug5
log_min_error_statement = debug5
log_min_duration_statement = -1

sudo service postgresql restart
```
  2) Now you will get tons of details of every statement, error, and even background tasks like VACUUMs
```
tail -f /var/log/postgresql/postgresql-9.3-main.log
```
  3) How to add user who executed a PG statement to log (editing `postgresql.conf`):
```
log_line_prefix = '%t %u %d %a '
```

- Check Extensions enabled in postgres: `SELECT * FROM pg_extension;`

- Show available extensions: `SELECT * FROM pg_available_extension_versions;`

## Create command

There are many `CREATE` choices, like `CREATE DATABASE __database_name__`, `CREATE TABLE __table_name__` ... Parameters differ but can be checked [at the official documentation](https://www.postgresql.org/search/?u=%2Fdocs%2F9.1%2F&q=CREATE).

## Handy queries
- `SELECT * FROM pg_proc WHERE proname='__procedurename__'`: List procedure/function
- `SELECT * FROM pg_views WHERE viewname='__viewname__';`: List view (including the definition)
- `SELECT pg_size_pretty(pg_total_relation_size('__table_name__'));`: Show DB table space in use
- `SELECT pg_size_pretty(pg_database_size('__database_name__'));`: Show DB space in use
- `show statement_timeout;`: Show current user's statement timeout
- `SELECT * FROM pg_indexes WHERE tablename='__table_name__' AND schemaname='__schema_name__';`: Show table indexes
- Get all indexes from all tables of a schema:
```sql
SELECT
   t.relname AS table_name,
   i.relname AS index_name,
   a.attname AS column_name
FROM
   pg_class t,
   pg_class i,
   pg_index ix,
   pg_attribute a,
    pg_namespace n
WHERE
   t.oid = ix.indrelid
   AND i.oid = ix.indexrelid
   AND a.attrelid = t.oid
   AND a.attnum = ANY(ix.indkey)
   AND t.relnamespace = n.oid
    AND n.nspname = 'kartones'
ORDER BY
   t.relname,
   i.relname
```
- Execution data:
  - Queries being executed at a certain DB:
```sql
SELECT datname, application_name, pid, backend_start, query_start, state_change, state, query
  FROM pg_stat_activity
  WHERE datname='__database_name__';
```
  - Get all queries from all dbs waiting for data (might be hung):
```sql
SELECT * FROM pg_stat_activity WHERE waiting='t'
```
  - Currently running queries with process pid:
```sql
SELECT
  pg_stat_get_backend_pid(s.backendid) AS procpid,
  pg_stat_get_backend_activity(s.backendid) AS current_query
FROM (SELECT pg_stat_get_backend_idset() AS backendid) AS s;
```
  - Get Connections by Database: `SELECT datname, numbackends FROM pg_stat_database;`

Casting:
- `CAST (column AS type)` or `column::type`
- `'__table_name__'::regclass::oid`: Get oid having a table name

Query analysis:
- `EXPLAIN __query__`: see the query plan for the given query
- `EXPLAIN ANALYZE __query__`: see and execute the query plan for the given query
- `ANALYZE [__table__]`: collect statistics

Generating random data ([source](https://www.citusdata.com/blog/2019/07/17/postgres-tips-for-average-and-power-user/)):
- `INSERT INTO some_table (a_float_value) SELECT random() * 100000 FROM generate_series(1, 1000000) i;`

Get sizes of tables, indexes and full DBs:
```sql
select current_database() as database,
  pg_size_pretty(total_database_size) as total_database_size,
  schema_name,
  table_name,
  pg_size_pretty(total_table_size) as total_table_size,
  pg_size_pretty(table_size) as table_size,
  pg_size_pretty(index_size) as index_size
  from ( select table_name,
          table_schema as schema_name,
          pg_database_size(current_database()) as total_database_size,
          pg_total_relation_size(table_name) as total_table_size,
          pg_relation_size(table_name) as table_size,
          pg_indexes_size(table_name) as index_size
          from information_schema.tables
          where table_schema=current_schema() and table_name like 'table_%'
          order by total_table_size
      ) as sizes;
```

- [COPY command](https://www.postgresql.org/docs/9.2/sql-copy.html): Import/export from CSV to tables:
```sql
COPY table_name [ ( column_name [, ...] ) ]
FROM { 'filename' | STDIN }
[ [ WITH ] ( option [, ...] ) ]

COPY { table_name [ ( column_name [, ...] ) ] | ( query ) }
TO { 'filename' | STDOUT }
[ [ WITH ] ( option [, ...] ) ]
```

- List all grants for a specific user
```sql
SELECT table_catalog, table_schema, table_name, privilege_type
FROM   information_schema.table_privileges
WHERE  grantee = 'user_to_check' ORDER BY table_name;
```

- List all assigned user roles
```sql
SELECT
    r.rolname,
    r.rolsuper,
    r.rolinherit,
    r.rolcreaterole,
    r.rolcreatedb,
    r.rolcanlogin,
    r.rolconnlimit,
    r.rolvaliduntil,
    ARRAY(SELECT b.rolname
      FROM pg_catalog.pg_auth_members m
      JOIN pg_catalog.pg_roles b ON (m.roleid = b.oid)
      WHERE m.member = r.oid) as memberof,
    r.rolreplication
FROM pg_catalog.pg_roles r
ORDER BY 1;
```

- Check permissions in a table:
```sql
SELECT grantee, privilege_type
FROM information_schema.role_table_grants
WHERE table_name='name-of-the-table';
```

- Kill all Connections:
```sql
SELECT pg_terminate_backend(pg_stat_activity.pid)
FROM pg_stat_activity
WHERE datname = current_database() AND pid <> pg_backend_pid();
```


## Keyboard shortcuts
- `CTRL` + `R`: reverse-i-search

## Tools
- `ptop` and `pg_top`: `top` for PG. Available on the APT repository from `apt.postgresql.org`.
- [pg_activity](https://github.com/julmon/pg_activity): Command line tool for PostgreSQL server activity monitoring.
- [Unix-like reverse search in psql](https://dba.stackexchange.com/questions/63453/is-there-a-psql-equivalent-of-bashs-reverse-search-history):
```bash
$ echo "bind "^R" em-inc-search-prev" > $HOME/.editrc
$ source $HOME/.editrc
```
- Show IP of the DB Instance: `SELECT inet_server_addr();`
- File to save PostgreSQL credentials and permissions (format: `hostname:port:database:username:password`): `chmod 600 ~/.pgpass`
- Collect statistics of a database (useful to improve speed after a Database Upgrade as previous query plans are deleted): `ANALYZE VERBOSE;`
- To obtain the `CREATE TABLE` query of a table, any visual GUI like [pgAdmin](https://www.pgadmin.org/) allows to easily, but else you can use `pg_dump`, e.g.: `pg_dump -t '<schema>.<table>' --schema-only <database>` ([source](https://stackoverflow.com/questions/2593803/how-to-generate-the-create-table-sql-statement-for-an-existing-table-in-postgr))

## Resources & Documentation
- [Operations Cheat Sheet](https://wiki.postgresql.org/wiki/Operations_cheat_sheet): Official PG wiki cheat sheet with an amazing amount of explanations of many topics, features, and many many internal implementation details
- [Postgres Weekly](https://postgresweekly.com/) newsletter: The best way IMHO to keep up to date with PG news
- [100 psql Tips](https://mydbanotebook.org/psql_tips_all.html): Name says all, lots of useful tips!
- [PostgreSQL Exercises](https://pgexercises.com/): An awesome resource to learn to learn SQL, teaching you with simple examples in a great visual way. **Highly recommended**.
- [A Performance Cheat Sheet for PostgreSQL](https://severalnines.com/blog/performance-cheat-sheet-postgresql): Great explanations of `EXPLAIN`, `EXPLAIN ANALYZE`, `VACUUM`, configuration parameters and more. Quite interesting if you need to tune-up a postgres setup.
- [annotated.conf](https://github.com/jberkus/annotated.conf): Annotations of all 269 postgresql.conf settings for PostgreSQL 10.
- `psql -c "\l+" -H -q postgres > out.html`: Generate a html report of your databases (source: [Daniel Westermann](https://twitter.com/westermanndanie/status/1242117182982586372))

```

## git

### Node

### LICENSE

```
MIT License

Copyright (c) 2024 Haris Babic

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

```

## projects

### test_project

#### .github

### .gitignore

```
# Dependencies
node_modules/
/.pnp
.pnp.js

# Testing
/coverage

# Production
/build

# Misc
.DS_Store
.env.local
.env.development.local
.env.test.local
.env.production.local

# Logs
npm-debug.log*
yarn-debug.log*
yarn-error.log*

# Environment variables
.env

# IDE specific files
.idea/
.vscode/
*.swp
*.swo

# Operating System Files
.DS_Store
.DS_Store?
._*
.Spotlight-V100
.Trashes
ehthumbs.db
Thumbs.db

# Optional npm cache directory
.npm

# Optional eslint cache
.eslintcache

# Optional REPL history
.node_repl_history

# Output of 'npm pack'
*.tgz

# Yarn Integrity file
.yarn-integrity

# dotenv environment variables file
.env

```

#### client

### .babelrc

```
{
  "presets": [
    ["@babel/preset-env", {
      "targets": {
        "browsers": [">0.25%", "not ie 11", "not op_mini all"]
      }
    }],
    "@babel/preset-react"
  ],
  "plugins": [
    "@babel/plugin-proposal-class-properties",
    "@babel/plugin-transform-runtime"
  ]
}

```

### .gitignore

```
# See https://help.github.com/articles/ignoring-files/ for more about ignoring files.

# dependencies
/node_modules
/.pnp
.pnp.js

# testing
/coverage

# production
/build

# misc
.DS_Store
.env.local
.env.development.local
.env.test.local
.env.production.local

npm-debug.log*
yarn-debug.log*
yarn-error.log*

*storybook.log
```

##### .storybook

### main.js

```js
/** @type { import('@storybook/react-webpack5').StorybookConfig } */
const config = {
  stories: ["../src/**/*.mdx", "../src/**/*.stories.@(js|jsx|mjs|ts|tsx)"],
  addons: [
    "@storybook/preset-create-react-app",
    "@storybook/addon-onboarding",
    "@storybook/addon-links",
    "@storybook/addon-essentials",
    "@chromatic-com/storybook",
    "@storybook/addon-interactions",
  ],
  framework: {
    name: "@storybook/react-webpack5",
    options: {},
  },
  staticDirs: ["..\\public"],
};
export default config;

```

### preview.js

```js
/** @type { import('@storybook/react').Preview } */
const preview = {
  parameters: {
    controls: {
      matchers: {
        color: /(background|color)$/i,
        date: /Date$/i,
      },
    },
  },
};

export default preview;

```

##### app

### globals.css

```css
@tailwind base;
@tailwind components;
@tailwind utilities;

@layer base {
  :root {
    --background: 0 0% 100%;
    --foreground: 222.2 84% 4.9%;
    --card: 0 0% 100%;
    --card-foreground: 222.2 84% 4.9%;
    --popover: 0 0% 100%;
    --popover-foreground: 222.2 84% 4.9%;
    --primary: 222.2 47.4% 11.2%;
    --primary-foreground: 210 40% 98%;
    --secondary: 210 40% 96.1%;
    --secondary-foreground: 222.2 47.4% 11.2%;
    --muted: 210 40% 96.1%;
    --muted-foreground: 215.4 16.3% 46.9%;
    --accent: 210 40% 96.1%;
    --accent-foreground: 222.2 47.4% 11.2%;
    --destructive: 0 84.2% 60.2%;
    --destructive-foreground: 210 40% 98%;
    --border: 214.3 31.8% 91.4%;
    --input: 214.3 31.8% 91.4%;
    --ring: 222.2 84% 4.9%;
    --radius: 0.5rem;
    --chart-1: 12 76% 61%;
    --chart-2: 173 58% 39%;
    --chart-3: 197 37% 24%;
    --chart-4: 43 74% 66%;
    --chart-5: 27 87% 67%;
  }

  .dark {
    --background: 222.2 84% 4.9%;
    --foreground: 210 40% 98%;
    --card: 222.2 84% 4.9%;
    --card-foreground: 210 40% 98%;
    --popover: 222.2 84% 4.9%;
    --popover-foreground: 210 40% 98%;
    --primary: 210 40% 98%;
    --primary-foreground: 222.2 47.4% 11.2%;
    --secondary: 217.2 32.6% 17.5%;
    --secondary-foreground: 210 40% 98%;
    --muted: 217.2 32.6% 17.5%;
    --muted-foreground: 215 20.2% 65.1%;
    --accent: 217.2 32.6% 17.5%;
    --accent-foreground: 210 40% 98%;
    --destructive: 0 62.8% 30.6%;
    --destructive-foreground: 210 40% 98%;
    --border: 217.2 32.6% 17.5%;
    --input: 217.2 32.6% 17.5%;
    --ring: 212.7 26.8% 83.9%;
    --chart-1: 220 70% 50%;
    --chart-2: 160 60% 45%;
    --chart-3: 30 80% 55%;
    --chart-4: 280 65% 60%;
    --chart-5: 340 75% 55%;
  }
}

@layer base {
  * {
    @apply border-border;
  }
  body {
    @apply bg-background text-foreground;
  }
}
```

### components.json

```json
{
  "$schema": "https://ui.shadcn.com/schema.json",
  "style": "default",
  "rsc": true,
  "tsx": true,
  "tailwind": {
    "config": "tailwind.config.js",
    "css": "app/globals.css",
    "baseColor": "slate",
    "cssVariables": true,
    "prefix": ""
  },
  "aliases": {
    "components": "@/components",
    "utils": "@/lib/utils"
  }
}
```

### package.json

```json
{
  "name": "client",
  "version": "0.1.0",
  "private": true,
  "dependencies": {
    "@reduxjs/toolkit": "^2.2.7",
    "@testing-library/jest-dom": "^5.17.0",
    "@testing-library/react": "^13.4.0",
    "@testing-library/user-event": "^13.5.0",
    "axios": "^1.7.3",
    "class-variance-authority": "^0.7.0",
    "clsx": "^2.1.1",
    "framer-motion": "^11.3.24",
    "i18next": "^23.12.2",
    "i18next-browser-languagedetector": "^8.0.0",
    "i18next-http-backend": "^2.5.2",
    "lucide-react": "^0.426.0",
    "react": "^18.3.1",
    "react-dom": "^18.3.1",
    "react-helmet-async": "^2.0.5",
    "react-i18next": "^15.0.1",
    "react-icons": "^4.12.0",
    "react-redux": "^9.1.2",
    "react-router-dom": "^6.26.0",
    "react-scripts": "5.0.1",
    "redux": "^5.0.1",
    "sass": "^1.77.8",
    "styled-components": "^5.3.11",
    "tailwind-merge": "^2.4.0",
    "tailwindcss-animate": "^1.0.7",
    "web-vitals": "^2.1.4",
    "workbox-window": "^7.1.0"
  },
  "scripts": {
    "start": "react-scripts start",
    "build": "react-scripts build",
    "test": "react-scripts test",
    "eject": "react-scripts eject",
    "sass": "sass src/styles/main.scss src/styles/main.css",
    "sass:watch": "sass src/styles/main.scss src/styles/main.css --watch",
    "generate-sitemap": "node scripts/generate-sitemap.js",
    "storybook": "storybook dev -p 6006",
    "build-storybook": "storybook build"
  },
  "eslintConfig": {
    "extends": [
      "react-app",
      "react-app/jest",
      "plugin:storybook/recommended"
    ]
  },
  "browserslist": {
    "production": [
      ">0.2%",
      "not dead",
      "not op_mini all"
    ],
    "development": [
      "last 1 chrome version",
      "last 1 firefox version",
      "last 1 safari version"
    ]
  },
  "devDependencies": {
    "@chromatic-com/storybook": "^1.6.1",
    "@storybook/addon-essentials": "^8.2.8",
    "@storybook/addon-interactions": "^8.2.8",
    "@storybook/addon-links": "^8.2.8",
    "@storybook/addon-onboarding": "^8.2.8",
    "@storybook/blocks": "^8.2.8",
    "@storybook/preset-create-react-app": "^8.2.8",
    "@storybook/react": "^8.2.8",
    "@storybook/react-webpack5": "^8.2.8",
    "@storybook/test": "^8.2.8",
    "autoprefixer": "^10.4.20",
    "eslint-plugin-storybook": "^0.8.0",
    "postcss": "^8.4.41",
    "prop-types": "^15.8.1",
    "storybook": "^8.2.8",
    "tailwindcss": "^3.4.9",
    "webpack": "^5.93.0",
    "workbox-webpack-plugin": "^7.1.0"
  }
}

```

### postcss.config.js

```js
module.exports = {
  plugins: {
    tailwindcss: {},
    autoprefixer: {},
  },
}

```

##### public

### index.html

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <link rel="icon" href="%PUBLIC_URL%/favicon.ico" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="theme-color" content="#000000" />
    <meta
      name="description"
      content="Web site created using create-react-app"
    />
    <link rel="apple-touch-icon" href="%PUBLIC_URL%/logo192.png" />
    <!--
      manifest.json provides metadata used when your web app is installed on a
      user's mobile device or desktop. See https://developers.google.com/web/fundamentals/web-app-manifest/
    -->
    <link rel="manifest" href="%PUBLIC_URL%/manifest.json" />
    <!--
      Notice the use of %PUBLIC_URL% in the tags above.
      It will be replaced with the URL of the `public` folder during the build.
      Only files inside the `public` folder can be referenced from the HTML.

      Unlike "/favicon.ico" or "favicon.ico", "%PUBLIC_URL%/favicon.ico" will
      work correctly both with client-side routing and a non-root public URL.
      Learn how to configure a non-root public URL by running `npm run build`.
    -->
    <title>React App</title>
    <link rel="manifest" href="%PUBLIC_URL%/manifest.json" />
    <meta name="theme-color" content="#000000" />
  </head>
  <body>
    <noscript>You need to enable JavaScript to run this app.</noscript>
    <div id="root"></div>
    <!--
      This HTML file is a template.
      If you open it directly in the browser, you will see an empty page.

      You can add webfonts, meta tags, or analytics to this file.
      The build step will place the bundled scripts into the <body> tag.

      To begin the development, run `npm start` or `yarn start`.
      To create a production bundle, use `npm run build` or `yarn build`.
    -->
  </body>
</html>

```

###### locales

####### en

### translation.json

```json
{"hello": "Hello", "welcome": "Welcome to our app!"}

```

####### es

### translation.json

```json
{"hello": "Hola", "welcome": "¡Bienvenido a nuestra aplicación!"}

```

### manifest.json

```json
{
  "short_name": "Your App",
  "name": "Your Application Name",
  "icons": [
    {
      "src": "favicon.ico",
      "sizes": "64x64 32x32 24x24 16x16",
      "type": "image/x-icon"
    },
    {
      "src": "logo192.png",
      "type": "image/png",
      "sizes": "192x192"
    },
    {
      "src": "logo512.png",
      "type": "image/png",
      "sizes": "512x512"
    }
  ],
  "start_url": ".",
  "display": "standalone",
  "theme_color": "#000000",
  "background_color": "#ffffff"
}

```

### sitemap.xml

```xml
<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
  
  <url>
    <loc>http://localhost:3000/</loc>
    <lastmod>2024-08-09</lastmod>
    <changefreq>weekly</changefreq>
    <priority>0.8</priority>
  </url>
  
  <url>
    <loc>http://localhost:3000/register</loc>
    <lastmod>2024-08-09</lastmod>
    <changefreq>weekly</changefreq>
    <priority>0.8</priority>
  </url>
  
</urlset>
```

### README.md

```md
# Getting Started with Create React App

This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).

## Available Scripts

In the project directory, you can run:

### `npm start`

Runs the app in the development mode.\
Open [http://localhost:3000](http://localhost:3000) to view it in your browser.

The page will reload when you make changes.\
You may also see any lint errors in the console.

### `npm test`

Launches the test runner in the interactive watch mode.\
See the section about [running tests](https://facebook.github.io/create-react-app/docs/running-tests) for more information.

### `npm run build`

Builds the app for production to the `build` folder.\
It correctly bundles React in production mode and optimizes the build for the best performance.

The build is minified and the filenames include the hashes.\
Your app is ready to be deployed!

See the section about [deployment](https://facebook.github.io/create-react-app/docs/deployment) for more information.

### `npm run eject`

**Note: this is a one-way operation. Once you `eject`, you can't go back!**

If you aren't satisfied with the build tool and configuration choices, you can `eject` at any time. This command will remove the single build dependency from your project.

Instead, it will copy all the configuration files and the transitive dependencies (webpack, Babel, ESLint, etc) right into your project so you have full control over them. All of the commands except `eject` will still work, but they will point to the copied scripts so you can tweak them. At this point you're on your own.

You don't have to ever use `eject`. The curated feature set is suitable for small and middle deployments, and you shouldn't feel obligated to use this feature. However we understand that this tool wouldn't be useful if you couldn't customize it when you are ready for it.

## Learn More

You can learn more in the [Create React App documentation](https://facebook.github.io/create-react-app/docs/getting-started).

To learn React, check out the [React documentation](https://reactjs.org/).

### Code Splitting

This section has moved here: [https://facebook.github.io/create-react-app/docs/code-splitting](https://facebook.github.io/create-react-app/docs/code-splitting)

### Analyzing the Bundle Size

This section has moved here: [https://facebook.github.io/create-react-app/docs/analyzing-the-bundle-size](https://facebook.github.io/create-react-app/docs/analyzing-the-bundle-size)

### Making a Progressive Web App

This section has moved here: [https://facebook.github.io/create-react-app/docs/making-a-progressive-web-app](https://facebook.github.io/create-react-app/docs/making-a-progressive-web-app)

### Advanced Configuration

This section has moved here: [https://facebook.github.io/create-react-app/docs/advanced-configuration](https://facebook.github.io/create-react-app/docs/advanced-configuration)

### Deployment

This section has moved here: [https://facebook.github.io/create-react-app/docs/deployment](https://facebook.github.io/create-react-app/docs/deployment)

### `npm run build` fails to minify

This section has moved here: [https://facebook.github.io/create-react-app/docs/troubleshooting#npm-run-build-fails-to-minify](https://facebook.github.io/create-react-app/docs/troubleshooting#npm-run-build-fails-to-minify)

```

##### scripts

### generate-sitemap.js

```js
const fs = require('fs');
const path = require('path');
require('dotenv').config({ path: path.join(__dirname, '../../.env') });

const baseUrl = process.env.BASE_URL || `http://localhost:${process.env.PORT || 3000}`;
const publicDir = path.join(__dirname, '../public');

const getPages = () => {
  // This is a simplified example. In reality, you'd want to
  // generate this list based on your actual routes.
  return ['', 'register'];
};

const generateSitemap = () => {
  const pages = getPages();
  const sitemap = `<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
  ${pages.map(page => `
  <url>
    <loc>${baseUrl}/${page}</loc>
    <lastmod>${new Date().toISOString().split('T')[0]}</lastmod>
    <changefreq>weekly</changefreq>
    <priority>0.8</priority>
  </url>
  `).join('')}
</urlset>`;

  fs.writeFileSync(path.join(publicDir, 'sitemap.xml'), sitemap);
  console.log('Sitemap generated successfully');

  // Generate robots.txt
  const robotsTxt = `User-agent: *
Allow: /

Sitemap: ${baseUrl}/sitemap.xml
`;
  fs.writeFileSync(path.join(publicDir, 'robots.txt'), robotsTxt);
  console.log('robots.txt generated successfully');
};

generateSitemap();

```

##### src

###### @

####### components

####### lib

### utils.ts

```ts
import { type ClassValue, clsx } from "clsx"
import { twMerge } from "tailwind-merge"

export function cn(...inputs: ClassValue[]) {
  return twMerge(clsx(inputs))
}

```

### App.css

```css
.App {
  text-align: center;
}

.App-logo {
  height: 40vmin;
  pointer-events: none;
}

@media (prefers-reduced-motion: no-preference) {
  .App-logo {
    animation: App-logo-spin infinite 20s linear;
  }
}

.App-header {
  background-color: #282c34;
  min-height: 100vh;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  font-size: calc(10px + 2vmin);
  color: white;
}

.App-link {
  color: #61dafb;
}

@keyframes App-logo-spin {
  from {
    transform: rotate(0deg);
  }
  to {
    transform: rotate(360deg);
  }
}

```

### App.js

```js
import { ThemeProvider } from 'styled-components';
import { theme, GlobalStyle } from './styles/NolocoTheme';
import React from 'react';
import Dashboard from './components/Dashboard/Dashboard';

const App = () => {
  return (
    <div>
      {/* Your app content here */}
    </div>
  );
};

export default App;

```

### App.test.js

```js
import { render, screen } from '@testing-library/react';
import App from './App';

test('renders learn react link', () => {
  render(<App />);
  const linkElement = screen.getByText(/learn react/i);
  expect(linkElement).toBeInTheDocument();
});

```

###### components

### AnimatedBox.js

```js
import React from 'react';
import { motion } from 'framer-motion';

const AnimatedBox = () => (
  <motion.div
    initial={{ opacity: 0, scale: 0.5 }}
    animate={{ opacity: 1, scale: 1 }}
    transition={{ duration: 0.5 }}
    whileHover={{ scale: 1.1 }}
    whileTap={{ scale: 0.9 }}
    style={{
      width: 100,
      height: 100,
      background: 'blue',
      borderRadius: 10,
    }}
  />
);

export default AnimatedBox;

```

####### Dashboard

### Dashboard.js

```js
import React, { useState, useEffect } from 'react';
import DynamicTable from '../DynamicUI/DynamicTable';

const Dashboard = () => {
  const [dashboardData, setDashboardData] = useState({});

  useEffect(() => {
    // Fetch dashboard data from API
    const fetchDashboardData = async () => {
      // Replace with actual API call
      const response = await fetch('/api/dashboard');
      const data = await response.json();
      setDashboardData(data);
    };

    fetchDashboardData();
  }, []);

  return (
    <div>
      <h1>Dashboard</h1>
      {Object.entries(dashboardData).map(([key, value]) => (
        <div key={key}>
          <h2>{key}</h2>
          {Array.isArray(value) ? (
            <DynamicTable
              data={value}
              columns={Object.keys(value[0]).map(col => ({ key: col, label: col }))}
            />
          ) : (
            <p>{value}</p>
          )}
        </div>
      ))}
    </div>
  );
};

export default Dashboard;

```

### DashboardWidget.js

```js
import React from 'react';

const DashboardWidget = ({ title, value, icon }) => {
  return (
    <div className="dashboard-widget">
      <div className="widget-icon">{icon}</div>
      <div className="widget-content">
        <h3>{title}</h3>
        <p>{value}</p>
      </div>
    </div>
  );
};

export default DashboardWidget;

```

####### DynamicUI

### DynamicForm.js

```js
import React from 'react';
import { useForm } from 'react-hook-form';

const DynamicForm = ({ fields, onSubmit }) => {
  const { register, handleSubmit, formState: { errors } } = useForm();

  const renderField = (field) => {
    switch (field.type) {
      case 'text':
      case 'email':
      case 'number':
        return (
          <input
            type={field.type}
            {...register(field.name, field.validation)}
            placeholder={field.placeholder}
          />
        );
      case 'select':
        return (
          <select {...register(field.name, field.validation)}>
            {field.options.map((option, index) => (
              <option key={index} value={option.value}>
                {option.label}
              </option>
            ))}
          </select>
        );
      case 'textarea':
        return (
          <textarea
            {...register(field.name, field.validation)}
            placeholder={field.placeholder}
          />
        );
      default:
        return null;
    }
  };

  return (
    <form onSubmit={handleSubmit(onSubmit)}>
      {fields.map((field, index) => (
        <div key={index}>
          <label>{field.label}</label>
          {renderField(field)}
          {errors[field.name] && <span>{errors[field.name].message}</span>}
        </div>
      ))}
      <button type="submit">Submit</button>
    </form>
  );
};

export default DynamicForm;

```

### DynamicTable.js

```js
import React from 'react';

const DynamicTable = ({ data, columns }) => {
  return (
    <table>
      <thead>
        <tr>
          {columns.map((column, index) => (
            <th key={index}>{column.label}</th>
          ))}
        </tr>
      </thead>
      <tbody>
        {data.map((row, rowIndex) => (
          <tr key={rowIndex}>
            {columns.map((column, columnIndex) => (
              <td key={columnIndex}>{row[column.key]}</td>
            ))}
          </tr>
        ))}
      </tbody>
    </table>
  );
};

export default DynamicTable;

```

### FocusTrap.js

```js
import React, { useRef, useEffect } from 'react';

const FocusTrap = ({ children }) => {
  const trapRef = useRef(null);

  useEffect(() => {
    const trapElement = trapRef.current;
    const focusableElements = trapElement.querySelectorAll(
      'button, [href], input, select, textarea, [tabindex]:not([tabindex="-1"])'
    );
    const firstElement = focusableElements[0];
    const lastElement = focusableElements[focusableElements.length - 1];

    const handleKeyDown = (e) => {
      if (e.key === 'Tab') {
        if (e.shiftKey && document.activeElement === firstElement) {
          e.preventDefault();
          lastElement.focus();
        } else if (!e.shiftKey && document.activeElement === lastElement) {
          e.preventDefault();
          firstElement.focus();
        }
      }
    };

    trapElement.addEventListener('keydown', handleKeyDown);
    return () => trapElement.removeEventListener('keydown', handleKeyDown);
  }, []);

  return <div ref={trapRef}>{children}</div>;
};

export default FocusTrap;

```

### LanguageSwitcher.js

```js
import React from 'react';
import { useTranslation } from 'react-i18next';

const LanguageSwitcher = () => {
  const { i18n } = useTranslation();

  const changeLanguage = (lng) => {
    i18n.changeLanguage(lng);
  };

  return (
    <div>
      <button onClick={() => changeLanguage('en')}>English</button>
      <button onClick={() => changeLanguage('es')}>Español</button>
    </div>
  );
};

export default LanguageSwitcher;

```

####### Noloco

### Button.js

```js
import styled from 'styled-components';

const Button = styled.button`
  background-color: ${props => props.theme.colors.secondary};
  color: white;
  border: none;
  padding: 10px 20px;
  border-radius: 4px;
  font-weight: 600;
  cursor: pointer;
  transition: background-color 0.3s ease;

  &:hover {
    background-color: ${props => props.theme.colors.primary};
  }
`;

export default Button;

```

### Card.js

```js
import styled from 'styled-components';

const Card = styled.div`
  background-color: white;
  border-radius: 8px;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  padding: 20px;
  margin-bottom: 20px;
`;

export default Card;

```

### Container.js

```js
import styled from 'styled-components';

const Container = styled.div`
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 20px;
`;

export default Container;

```

### ResponsiveGrid.js

```js
import styled from 'styled-components';
import { mediaQueries } from '../styles/breakpoints';

const ResponsiveGrid = styled.div`
  display: grid;
  grid-template-columns: 1fr;
  gap: 1rem;

  ${mediaQueries.tablet} {
    grid-template-columns: repeat(2, 1fr);
  }

  ${mediaQueries.desktop} {
    grid-template-columns: repeat(3, 1fr);
  }

  ${mediaQueries.largeDesktop} {
    grid-template-columns: repeat(4, 1fr);
  }
`;

export default ResponsiveGrid;

```

### SEO.js

```js
import React from 'react';
import { Helmet } from 'react-helmet-async';

const SEO = ({ title, description, keywords, image, url }) => (
  <Helmet>
    <title>{title}</title>
    <meta name="description" content={description} />
    <meta name="keywords" content={keywords} />
    <meta property="og:title" content={title} />
    <meta property="og:description" content={description} />
    <meta property="og:image" content={image} />
    <meta property="og:url" content={url} />
    <meta property="og:type" content="website" />
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:title" content={title} />
    <meta name="twitter:description" content={description} />
    <meta name="twitter:image" content={image} />
    <link rel="canonical" href={url} />
  </Helmet>
);

export default SEO;

```

###### i18n

### i18n.js

```js
import i18n from 'i18next';
import { initReactI18next } from 'react-i18next';
import Backend from 'i18next-http-backend';
import LanguageDetector from 'i18next-browser-languagedetector';

i18n
  .use(Backend)
  .use(LanguageDetector)
  .use(initReactI18next)
  .init({
    fallbackLng: 'en',
    debug: process.env.NODE_ENV !== 'production',
    interpolation: {
      escapeValue: false,
    },
    backend: {
      loadPath: '/locales/{{lng}}/{{ns}}.json',
    },
  });

export default i18n;

```

### index.css

```css
@tailwind base;
@tailwind components;
@tailwind utilities;

```

### index.js

```js
import { register } from './serviceWorkerRegistration';
import React from 'react';
import ReactDOM from 'react-dom/client';
import { Provider } from 'react-redux';
import store from './redux/store';
import App from './App';
import './index.css';
import "./i18n/i18n";

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <React.StrictMode>
    <Provider store={store}>
      <App />
    </Provider>
  </React.StrictMode>
);



register();

```

###### redux

####### slices

### exampleSlice.js

```js
import { createSlice } from '@reduxjs/toolkit';

const initialState = {
  value: 0,
};

const exampleSlice = createSlice({
  name: 'example',
  initialState,
  reducers: {
    increment: (state) => {
      state.value += 1;
    },
    decrement: (state) => {
      state.value -= 1;
    },
  },
});

export const { increment, decrement } = exampleSlice.actions;
export default exampleSlice.reducer;

```

### index.js

```js
import { combineReducers } from 'redux';
import exampleSlice from './exampleSlice';

const rootReducer = combineReducers({
  example: exampleSlice,
});

export default rootReducer;

```

### store.js

```js
import { configureStore } from '@reduxjs/toolkit';
import rootReducer from './slices';

const store = configureStore({
  reducer: rootReducer,
  devTools: process.env.NODE_ENV !== 'production',
});

export default store;

```

### reportWebVitals.js

```js
const reportWebVitals = onPerfEntry => {
  if (onPerfEntry && onPerfEntry instanceof Function) {
    import('web-vitals').then(({ getCLS, getFID, getFCP, getLCP, getTTFB }) => {
      getCLS(onPerfEntry);
      getFID(onPerfEntry);
      getFCP(onPerfEntry);
      getLCP(onPerfEntry);
      getTTFB(onPerfEntry);
    });
  }
};

export default reportWebVitals;

```

###### services

### apiService.js

```js
import axios from 'axios';

const API_BASE_URL = process.env.REACT_APP_API_BASE_URL || 'http://localhost:3000/api';

const apiService = {
  // Previous methods remain the same

  // Add a new method for handling file uploads
  upload: async (endpoint, file, onUploadProgress) => {
    const formData = new FormData();
    formData.append('file', file);

    try {
      const response = await axios.post(`${API_BASE_URL}/${endpoint}`, formData, {
        headers: {
          'Content-Type': 'multipart/form-data'
        },
        onUploadProgress
      });
      return response.data;
    } catch (error) {
      console.error('Error uploading file:', error);
      throw error;
    }
  },

  // Add a method for cancellable requests
  getCancellable: (endpoint) => {
    const source = axios.CancelToken.source();
    const promise = axios.get(`${API_BASE_URL}/${endpoint}`, {
      cancelToken: source.token
    });
    return { promise, cancel: () => source.cancel('Request cancelled') };
  }
};

export default apiService;

```

### serviceWorkerRegistration.js

```js
import { Workbox } from 'workbox-window';

export function register() {


    if ('serviceWorker' in navigator) {
        const wb = new Workbox('sw.js');
        console.log(wb);


        wb.addEventListener('installed', event => {
          if (event.isUpdate) {
            if (window.confirm('New content is available! Click OK to refresh.')) {
              window.location.reload();
            }
          }
        });

        wb.register();
      }
    }

```

### setupTests.js

```js
// jest-dom adds custom jest matchers for asserting on DOM nodes.
// allows you to do things like:
// expect(element).toHaveTextContent(/react/i)
// learn more: https://github.com/testing-library/jest-dom
import '@testing-library/jest-dom';

```

###### stories

####### assets

### avif-test-image.avif

```avif
    ftypavif    avifmif1miafMA1B   �meta       (hdlr        pict            libavif    pitm        iloc    D          #   (iinf        infe      av01Color    jiprp   Kipco   ispe           pixi       av1C�     colrnclx   �   ipma        �  +mdat 

"!��4 2�L��4Cxp� ���(Zyf�M;��ʾ�$��������r�b�F�s�*t�e�>7��혠�ꪙ3so���Z�r���K���O8\���J������(�6�FՖ��o���P�PDf�]�Tڟ���haS8,��_v�E<�{th0&td�3摞X[��_��r��x��V���H-��p������Ua���*.zy���;�<�M�:��	��s!G	-<�4_y?>�
{�0�_�9ϻ��U(m\V��㳱S�B#�}&�J���&5
6���8Ε�ӹ�&c�<Q<ԗ۴����F�O���:��E��p:�36v��b�����^ŉdv���g@����o�L�4X/���d*
r�OuPgƩ7�^@ƣ�ᥳ"Ǥ�=��{��E���U\z��o�cC���(e��|���Qĥ��\8�S��a� �A}�[lI�N�4�����R��.���Ѽ�	˂����􊪠��������cC�6���O��� ��W����9w�nqcIC_y�
```

### button.css

```css
.storybook-button {
  font-family: 'Nunito Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif;
  font-weight: 700;
  border: 0;
  border-radius: 3em;
  cursor: pointer;
  display: inline-block;
  line-height: 1;
}
.storybook-button--primary {
  color: white;
  background-color: #1ea7fd;
}
.storybook-button--secondary {
  color: #333;
  background-color: transparent;
  box-shadow: rgba(0, 0, 0, 0.15) 0px 0px 0px 1px inset;
}
.storybook-button--small {
  font-size: 12px;
  padding: 10px 16px;
}
.storybook-button--medium {
  font-size: 14px;
  padding: 11px 20px;
}
.storybook-button--large {
  font-size: 16px;
  padding: 12px 24px;
}

```

### Button.jsx

```jsx
import React from 'react';
import PropTypes from 'prop-types';
import './button.css';

/**
 * Primary UI component for user interaction
 */
export const Button = ({ primary, backgroundColor, size, label, ...props }) => {
  const mode = primary ? 'storybook-button--primary' : 'storybook-button--secondary';
  return (
    <button
      type="button"
      className={['storybook-button', `storybook-button--${size}`, mode].join(' ')}
      style={backgroundColor && { backgroundColor }}
      {...props}
    >
      {label}
    </button>
  );
};

Button.propTypes = {
  /**
   * Is this the principal call to action on the page?
   */
  primary: PropTypes.bool,
  /**
   * What background color to use
   */
  backgroundColor: PropTypes.string,
  /**
   * How large should the button be?
   */
  size: PropTypes.oneOf(['small', 'medium', 'large']),
  /**
   * Button contents
   */
  label: PropTypes.string.isRequired,
  /**
   * Optional click handler
   */
  onClick: PropTypes.func,
};

Button.defaultProps = {
  backgroundColor: null,
  primary: false,
  size: 'medium',
  onClick: undefined,
};

```

### Button.stories.js

```js
import { fn } from '@storybook/test';
import { Button } from './Button';

// More on how to set up stories at: https://storybook.js.org/docs/writing-stories#default-export
export default {
  title: 'Example/Button',
  component: Button,
  parameters: {
    // Optional parameter to center the component in the Canvas. More info: https://storybook.js.org/docs/configure/story-layout
    layout: 'centered',
  },
  // This component will have an automatically generated Autodocs entry: https://storybook.js.org/docs/writing-docs/autodocs
  tags: ['autodocs'],
  // More on argTypes: https://storybook.js.org/docs/api/argtypes
  argTypes: {
    backgroundColor: { control: 'color' },
  },
  // Use `fn` to spy on the onClick arg, which will appear in the actions panel once invoked: https://storybook.js.org/docs/essentials/actions#action-args
  args: { onClick: fn() },
};

// More on writing stories with args: https://storybook.js.org/docs/writing-stories/args
export const Primary = {
  args: {
    primary: true,
    label: 'Button',
  },
};

export const Secondary = {
  args: {
    label: 'Button',
  },
};

export const Large = {
  args: {
    size: 'large',
    label: 'Button',
  },
};

export const Small = {
  args: {
    size: 'small',
    label: 'Button',
  },
};

```

### Configure.mdx

```mdx
import { Meta } from "@storybook/blocks";

import Github from "./assets/github.svg";
import Discord from "./assets/discord.svg";
import Youtube from "./assets/youtube.svg";
import Tutorials from "./assets/tutorials.svg";
import Styling from "./assets/styling.png";
import Context from "./assets/context.png";
import Assets from "./assets/assets.png";
import Docs from "./assets/docs.png";
import Share from "./assets/share.png";
import FigmaPlugin from "./assets/figma-plugin.png";
import Testing from "./assets/testing.png";
import Accessibility from "./assets/accessibility.png";
import Theming from "./assets/theming.png";
import AddonLibrary from "./assets/addon-library.png";

export const RightArrow = () => <svg 
    viewBox="0 0 14 14" 
    width="8px" 
    height="14px" 
    style={{ 
      marginLeft: '4px',
      display: 'inline-block',
      shapeRendering: 'inherit',
      verticalAlign: 'middle',
      fill: 'currentColor',
      'path fill': 'currentColor'
    }}
>
  <path d="m11.1 7.35-5.5 5.5a.5.5 0 0 1-.7-.7L10.04 7 4.9 1.85a.5.5 0 1 1 .7-.7l5.5 5.5c.2.2.2.5 0 .7Z" />
</svg>

<Meta title="Configure your project" />

<div className="sb-container">
  <div className='sb-section-title'>
    # Configure your project

    Because Storybook works separately from your app, you'll need to configure it for your specific stack and setup. Below, explore guides for configuring Storybook with popular frameworks and tools. If you get stuck, learn how you can ask for help from our community.
  </div>
  <div className="sb-section">
    <div className="sb-section-item">
      <img
        src={Styling}
        alt="A wall of logos representing different styling technologies"
      />
      <h4 className="sb-section-item-heading">Add styling and CSS</h4>
      <p className="sb-section-item-paragraph">Like with web applications, there are many ways to include CSS within Storybook. Learn more about setting up styling within Storybook.</p>
      <a
        href="https://storybook.js.org/docs/configure/styling-and-css/?renderer=react"
        target="_blank"
      >Learn more<RightArrow /></a>
    </div>
    <div className="sb-section-item">
      <img
        src={Context}
        alt="An abstraction representing the composition of data for a component"
      />
      <h4 className="sb-section-item-heading">Provide context and mocking</h4>
      <p className="sb-section-item-paragraph">Often when a story doesn't render, it's because your component is expecting a specific environment or context (like a theme provider) to be available.</p>
      <a
        href="https://storybook.js.org/docs/writing-stories/decorators/?renderer=react#context-for-mocking"
        target="_blank"
      >Learn more<RightArrow /></a>
    </div>
    <div className="sb-section-item">
      <img src={Assets} alt="A representation of typography and image assets" />
      <div>
        <h4 className="sb-section-item-heading">Load assets and resources</h4>
        <p className="sb-section-item-paragraph">To link static files (like fonts) to your projects and stories, use the
        `staticDirs` configuration option to specify folders to load when
        starting Storybook.</p>
        <a
          href="https://storybook.js.org/docs/configure/images-and-assets/?renderer=react"
          target="_blank"
        >Learn more<RightArrow /></a>
      </div>
    </div>
  </div>
</div>
<div className="sb-container">
  <div className='sb-section-title'>
    # Do more with Storybook

    Now that you know the basics, let's explore other parts of Storybook that will improve your experience. This list is just to get you started. You can customise Storybook in many ways to fit your needs.
  </div>

  <div className="sb-section">
    <div className="sb-features-grid">
      <div className="sb-grid-item">
        <img src={Docs} alt="A screenshot showing the autodocs tag being set, pointing a docs page being generated" />
        <h4 className="sb-section-item-heading">Autodocs</h4>
        <p className="sb-section-item-paragraph">Auto-generate living,
          interactive reference documentation from your components and stories.</p>
        <a
          href="https://storybook.js.org/docs/writing-docs/autodocs/?renderer=react"
          target="_blank"
        >Learn more<RightArrow /></a>
      </div>
      <div className="sb-grid-item">
        <img src={Share} alt="A browser window showing a Storybook being published to a chromatic.com URL" />
        <h4 className="sb-section-item-heading">Publish to Chromatic</h4>
        <p className="sb-section-item-paragraph">Publish your Storybook to review and collaborate with your entire team.</p>
        <a
          href="https://storybook.js.org/docs/sharing/publish-storybook/?renderer=react#publish-storybook-with-chromatic"
          target="_blank"
        >Learn more<RightArrow /></a>
      </div>
      <div className="sb-grid-item">
        <img src={FigmaPlugin} alt="Windows showing the Storybook plugin in Figma" />
        <h4 className="sb-section-item-heading">Figma Plugin</h4>
        <p className="sb-section-item-paragraph">Embed your stories into Figma to cross-reference the design and live
          implementation in one place.</p>
        <a
          href="https://storybook.js.org/docs/sharing/design-integrations/?renderer=react#embed-storybook-in-figma-with-the-plugin"
          target="_blank"
        >Learn more<RightArrow /></a>
      </div>
      <div className="sb-grid-item">
        <img src={Testing} alt="Screenshot of tests passing and failing" />
        <h4 className="sb-section-item-heading">Testing</h4>
        <p className="sb-section-item-paragraph">Use stories to test a component in all its variations, no matter how
          complex.</p>
        <a
          href="https://storybook.js.org/docs/writing-tests/?renderer=react"
          target="_blank"
        >Learn more<RightArrow /></a>
      </div>
      <div className="sb-grid-item">
        <img src={Accessibility} alt="Screenshot of accessibility tests passing and failing" />
        <h4 className="sb-section-item-heading">Accessibility</h4>
        <p className="sb-section-item-paragraph">Automatically test your components for a11y issues as you develop.</p>
        <a
          href="https://storybook.js.org/docs/writing-tests/accessibility-testing/?renderer=react"
          target="_blank"
        >Learn more<RightArrow /></a>
      </div>
      <div className="sb-grid-item">
        <img src={Theming} alt="Screenshot of Storybook in light and dark mode" />
        <h4 className="sb-section-item-heading">Theming</h4>
        <p className="sb-section-item-paragraph">Theme Storybook's UI to personalize it to your project.</p>
        <a
          href="https://storybook.js.org/docs/configure/theming/?renderer=react"
          target="_blank"
        >Learn more<RightArrow /></a>
      </div>
    </div>
  </div>
</div>
<div className='sb-addon'>
  <div className='sb-addon-text'>
    <h4>Addons</h4>
    <p className="sb-section-item-paragraph">Integrate your tools with Storybook to connect workflows.</p>
    <a
        href="https://storybook.js.org/addons/"
        target="_blank"
      >Discover all addons<RightArrow /></a>
  </div>
  <div className='sb-addon-img'>
    <img src={AddonLibrary} alt="Integrate your tools with Storybook to connect workflows." />
  </div>
</div>

<div className="sb-section sb-socials">
    <div className="sb-section-item">
      <img src={Github} alt="Github logo" className="sb-explore-image"/>
      Join our contributors building the future of UI development.

      <a
        href="https://github.com/storybookjs/storybook"
        target="_blank"
      >Star on GitHub<RightArrow /></a>
    </div>
    <div className="sb-section-item">
      <img src={Discord} alt="Discord logo" className="sb-explore-image"/>
      <div>
        Get support and chat with frontend developers.

        <a
          href="https://discord.gg/storybook"
          target="_blank"
        >Join Discord server<RightArrow /></a>
      </div>
    </div>
    <div className="sb-section-item">
      <img src={Youtube} alt="Youtube logo" className="sb-explore-image"/>
      <div>
        Watch tutorials, feature previews and interviews.

        <a
          href="https://www.youtube.com/@chromaticui"
          target="_blank"
        >Watch on YouTube<RightArrow /></a>
      </div>
    </div>
    <div className="sb-section-item">
      <img src={Tutorials} alt="A book" className="sb-explore-image"/>
      <p>Follow guided walkthroughs on for key workflows.</p>

      <a
          href="https://storybook.js.org/tutorials/"
          target="_blank"
        >Discover tutorials<RightArrow /></a>
    </div>
</div>

<style>
  {`
  .sb-container {
    margin-bottom: 48px;
  }

  .sb-section {
    width: 100%;
    display: flex;
    flex-direction: row;
    gap: 20px;
  }

  img {
    object-fit: cover;
  }

  .sb-section-title {
    margin-bottom: 32px;
  }

  .sb-section a:not(h1 a, h2 a, h3 a) {
    font-size: 14px;
  }

  .sb-section-item, .sb-grid-item {
    flex: 1;
    display: flex;
    flex-direction: column;
  }

  .sb-section-item-heading {
    padding-top: 20px !important;
    padding-bottom: 5px !important;
    margin: 0 !important;
  }
  .sb-section-item-paragraph {
    margin: 0;
    padding-bottom: 10px;
  }

  .sb-chevron {
    margin-left: 5px;
  }

  .sb-features-grid {
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    grid-gap: 32px 20px;
  }

  .sb-socials {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
  }

  .sb-socials p {
    margin-bottom: 10px;
  }

  .sb-explore-image {
    max-height: 32px;
    align-self: flex-start;
  }

  .sb-addon {
    width: 100%;
    display: flex;
    align-items: center;
    position: relative;
    background-color: #EEF3F8;
    border-radius: 5px;
    border: 1px solid rgba(0, 0, 0, 0.05);
    background: #EEF3F8;
    height: 180px;
    margin-bottom: 48px;
    overflow: hidden;
  }

  .sb-addon-text {
    padding-left: 48px;
    max-width: 240px;
  }

  .sb-addon-text h4 {
    padding-top: 0px;
  }

  .sb-addon-img {
    position: absolute;
    left: 345px;
    top: 0;
    height: 100%;
    width: 200%;
    overflow: hidden;
  }

  .sb-addon-img img {
    width: 650px;
    transform: rotate(-15deg);
    margin-left: 40px;
    margin-top: -72px;
    box-shadow: 0 0 1px rgba(255, 255, 255, 0);
    backface-visibility: hidden;
  }

  @media screen and (max-width: 800px) {
    .sb-addon-img {
      left: 300px;
    }
  }

  @media screen and (max-width: 600px) {
    .sb-section {
      flex-direction: column;
    }

    .sb-features-grid {
      grid-template-columns: repeat(1, 1fr);
    }

    .sb-socials {
      grid-template-columns: repeat(2, 1fr);
    }

    .sb-addon {
      height: 280px;
      align-items: flex-start;
      padding-top: 32px;
      overflow: hidden;
    }

    .sb-addon-text {
      padding-left: 24px;
    }

    .sb-addon-img {
      right: 0;
      left: 0;
      top: 130px;
      bottom: 0;
      overflow: hidden;
      height: auto;
      width: 124%;
    }

    .sb-addon-img img {
      width: 1200px;
      transform: rotate(-12deg);
      margin-left: 0;
      margin-top: 48px;
      margin-bottom: -40px;
      margin-left: -24px;
    }
  }
  `}
</style>

```

### header.css

```css
.storybook-header {
  font-family: 'Nunito Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif;
  border-bottom: 1px solid rgba(0, 0, 0, 0.1);
  padding: 15px 20px;
  display: flex;
  align-items: center;
  justify-content: space-between;
}

.storybook-header svg {
  display: inline-block;
  vertical-align: top;
}

.storybook-header h1 {
  font-weight: 700;
  font-size: 20px;
  line-height: 1;
  margin: 6px 0 6px 10px;
  display: inline-block;
  vertical-align: top;
}

.storybook-header button + button {
  margin-left: 10px;
}

.storybook-header .welcome {
  color: #333;
  font-size: 14px;
  margin-right: 10px;
}

```

### Header.jsx

```jsx
import React from 'react';
import PropTypes from 'prop-types';

import { Button } from './Button';
import './header.css';

export const Header = ({ user, onLogin, onLogout, onCreateAccount }) => (
  <header>
    <div className="storybook-header">
      <div>
        <svg width="32" height="32" viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg">
          <g fill="none" fillRule="evenodd">
            <path
              d="M10 0h12a10 10 0 0110 10v12a10 10 0 01-10 10H10A10 10 0 010 22V10A10 10 0 0110 0z"
              fill="#FFF"
            />
            <path
              d="M5.3 10.6l10.4 6v11.1l-10.4-6v-11zm11.4-6.2l9.7 5.5-9.7 5.6V4.4z"
              fill="#555AB9"
            />
            <path
              d="M27.2 10.6v11.2l-10.5 6V16.5l10.5-6zM15.7 4.4v11L6 10l9.7-5.5z"
              fill="#91BAF8"
            />
          </g>
        </svg>
        <h1>Acme</h1>
      </div>
      <div>
        {user ? (
          <>
            <span className="welcome">
              Welcome, <b>{user.name}</b>!
            </span>
            <Button size="small" onClick={onLogout} label="Log out" />
          </>
        ) : (
          <>
            <Button size="small" onClick={onLogin} label="Log in" />
            <Button primary size="small" onClick={onCreateAccount} label="Sign up" />
          </>
        )}
      </div>
    </div>
  </header>
);

Header.propTypes = {
  user: PropTypes.shape({
    name: PropTypes.string.isRequired,
  }),
  onLogin: PropTypes.func.isRequired,
  onLogout: PropTypes.func.isRequired,
  onCreateAccount: PropTypes.func.isRequired,
};

Header.defaultProps = {
  user: null,
};

```

### Header.stories.js

```js
import { Header } from './Header';
import { fn } from '@storybook/test';

export default {
  title: 'Example/Header',
  component: Header,
  // This component will have an automatically generated Autodocs entry: https://storybook.js.org/docs/writing-docs/autodocs
  tags: ['autodocs'],
  parameters: {
    // More on how to position stories at: https://storybook.js.org/docs/configure/story-layout
    layout: 'fullscreen',
  },
  args: {
    onLogin: fn(),
    onLogout: fn(),
    onCreateAccount: fn(),
  },
};

export const LoggedIn = {
  args: {
    user: {
      name: 'Jane Doe',
    },
  },
};

export const LoggedOut = {};

```

### page.css

```css
.storybook-page {
  font-family: 'Nunito Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif;
  font-size: 14px;
  line-height: 24px;
  padding: 48px 20px;
  margin: 0 auto;
  max-width: 600px;
  color: #333;
}

.storybook-page h2 {
  font-weight: 700;
  font-size: 32px;
  line-height: 1;
  margin: 0 0 4px;
  display: inline-block;
  vertical-align: top;
}

.storybook-page p {
  margin: 1em 0;
}

.storybook-page a {
  text-decoration: none;
  color: #1ea7fd;
}

.storybook-page ul {
  padding-left: 30px;
  margin: 1em 0;
}

.storybook-page li {
  margin-bottom: 8px;
}

.storybook-page .tip {
  display: inline-block;
  border-radius: 1em;
  font-size: 11px;
  line-height: 12px;
  font-weight: 700;
  background: #e7fdd8;
  color: #66bf3c;
  padding: 4px 12px;
  margin-right: 10px;
  vertical-align: top;
}

.storybook-page .tip-wrapper {
  font-size: 13px;
  line-height: 20px;
  margin-top: 40px;
  margin-bottom: 40px;
}

.storybook-page .tip-wrapper svg {
  display: inline-block;
  height: 12px;
  width: 12px;
  margin-right: 4px;
  vertical-align: top;
  margin-top: 3px;
}

.storybook-page .tip-wrapper svg path {
  fill: #1ea7fd;
}

```

### Page.jsx

```jsx
import React from 'react';

import { Header } from './Header';
import './page.css';

export const Page = () => {
  const [user, setUser] = React.useState();

  return (
    <article>
      <Header
        user={user}
        onLogin={() => setUser({ name: 'Jane Doe' })}
        onLogout={() => setUser(undefined)}
        onCreateAccount={() => setUser({ name: 'Jane Doe' })}
      />

      <section className="storybook-page">
        <h2>Pages in Storybook</h2>
        <p>
          We recommend building UIs with a{' '}
          <a href="https://componentdriven.org" target="_blank" rel="noopener noreferrer">
            <strong>component-driven</strong>
          </a>{' '}
          process starting with atomic components and ending with pages.
        </p>
        <p>
          Render pages with mock data. This makes it easy to build and review page states without
          needing to navigate to them in your app. Here are some handy patterns for managing page
          data in Storybook:
        </p>
        <ul>
          <li>
            Use a higher-level connected component. Storybook helps you compose such data from the
            "args" of child component stories
          </li>
          <li>
            Assemble data in the page component from your services. You can mock these services out
            using Storybook.
          </li>
        </ul>
        <p>
          Get a guided tutorial on component-driven development at{' '}
          <a href="https://storybook.js.org/tutorials/" target="_blank" rel="noopener noreferrer">
            Storybook tutorials
          </a>
          . Read more in the{' '}
          <a href="https://storybook.js.org/docs" target="_blank" rel="noopener noreferrer">
            docs
          </a>
          .
        </p>
        <div className="tip-wrapper">
          <span className="tip">Tip</span> Adjust the width of the canvas with the{' '}
          <svg width="10" height="10" viewBox="0 0 12 12" xmlns="http://www.w3.org/2000/svg">
            <g fill="none" fillRule="evenodd">
              <path
                d="M1.5 5.2h4.8c.3 0 .5.2.5.4v5.1c-.1.2-.3.3-.4.3H1.4a.5.5 0 01-.5-.4V5.7c0-.3.2-.5.5-.5zm0-2.1h6.9c.3 0 .5.2.5.4v7a.5.5 0 01-1 0V4H1.5a.5.5 0 010-1zm0-2.1h9c.3 0 .5.2.5.4v9.1a.5.5 0 01-1 0V2H1.5a.5.5 0 010-1zm4.3 5.2H2V10h3.8V6.2z"
                id="a"
                fill="#999"
              />
            </g>
          </svg>
          Viewports addon in the toolbar
        </div>
      </section>
    </article>
  );
};

```

### Page.stories.js

```js
import { within, userEvent, expect } from '@storybook/test';

import { Page } from './Page';

export default {
  title: 'Example/Page',
  component: Page,
  parameters: {
    // More on how to position stories at: https://storybook.js.org/docs/configure/story-layout
    layout: 'fullscreen',
  },
};

export const LoggedOut = {};

// More on interaction testing: https://storybook.js.org/docs/writing-tests/interaction-testing
export const LoggedIn = {
  play: async ({ canvasElement }) => {
    const canvas = within(canvasElement);
    const loginButton = canvas.getByRole('button', { name: /Log in/i });
    await expect(loginButton).toBeInTheDocument();
    await userEvent.click(loginButton);
    await expect(loginButton).not.toBeInTheDocument();

    const logoutButton = canvas.getByRole('button', { name: /Log out/i });
    await expect(logoutButton).toBeInTheDocument();
  },
};

```

###### styles

####### abstracts

### _mixins.scss

```scss
@mixin flexCenter {
  display: flex;
  justify-content: center;
  align-items: center;
}

```

### _variables.scss

```scss
$primary-color: #0070f3;
$secondary-color: #0070f3;
$font-stack: Arial, sans-serif;

```

####### base

### _reset.scss

```scss
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

```

### breakpoints.js

```js
const sizes = {
  mobile: '576px',
  tablet: '768px',
  desktop: '1024px',
  largeDesktop: '1440px',
};

export const devices = {
  mobile: `(min-width: ${sizes.mobile})`,
  tablet: `(min-width: ${sizes.tablet})`,
  desktop: `(min-width: ${sizes.desktop})`,
  largeDesktop: `(min-width: ${sizes.largeDesktop})`,
};

export const mediaQueries = {
  mobile: `@media ${devices.mobile}`,
  tablet: `@media ${devices.tablet}`,
  desktop: `@media ${devices.desktop}`,
  largeDesktop: `@media ${devices.largeDesktop}`,
};

```

####### components

### GlobalStyle.js

```js
import { createGlobalStyle } from 'styled-components';

const GlobalStyle = createGlobalStyle`
  body {
    margin: 0;
    padding: 0;
    font-family: ${({ theme }) => theme.fonts.body};
    background-color: ${({ theme }) => theme.colors.background};
    color: ${({ theme }) => theme.colors.text};
  }
`;

export default GlobalStyle;

```

####### layout

### main.scss

```scss
@import 'abstracts/variables';
@import 'abstracts/mixins';

@import 'base/reset';
@import 'base/typography';

@import 'components/buttons';
@import 'components/forms';

@import 'layout/header';
@import 'layout/footer';

@import 'pages/home';

```

### NolocoTheme.js

```js
import { createGlobalStyle } from 'styled-components';

const NolocoTheme = {
  colors: {
    primary: '#0F172A',
    secondary: '#3B82F6',
    background: '#F8FAFC',
    text: '#1E293B',
  },
  fonts: {
    body: 'Inter, sans-serif',
  },
};
export default NolocoTheme;

export const GlobalStyle = createGlobalStyle`
  @import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap');

  body {
    font-family: 'Inter', sans-serif;
    background-color: #F8FAFC;
    color: #1E293B;
    margin: 0;
    padding: 0;
  }

  h1, h2, h3, h4, h5, h6 {
    color: #0F172A;
  }

  a {
    color: #3B82F6;
    text-decoration: none;
  }
`;

```

####### pages

### ResponsiveWrapper.js

```js
import styled from 'styled-components';
import { mediaQueries } from './breakpoints';

const ResponsiveWrapper = styled.div`
  padding: 1rem;
  width: 100%;
  max-width: 100%;

  ${mediaQueries.tablet} {
    padding: 2rem;
    max-width: 720px;
    margin: 0 auto;
  }

  ${mediaQueries.desktop} {
    padding: 3rem;
    max-width: 960px;
  }

  ${mediaQueries.largeDesktop} {
    max-width: 1200px;
  }
`;

export default ResponsiveWrapper;

```

### theme.js

```js
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

```

###### utils

### imageOptimization.js

```js
export const getOptimizedImageUrl = (url, width, height) => {
  // This is a placeholder. In a real-world scenario, you'd integrate with
  // an image optimization service like Cloudinary or Imgix.
  return ;
};

```

### useIntersectionObserver.js

```js
import { useState, useEffect } from 'react';

const useIntersectionObserver = (ref, options = {}) => {
  const [isIntersecting, setIsIntersecting] = useState(false);

  useEffect(() => {
    const observer = new IntersectionObserver(([entry]) => {
      setIsIntersecting(entry.isIntersecting);
    }, options);

    if (ref.current) {
      observer.observe(ref.current);
    }

    return () => {
      observer.disconnect();
    };
  }, [ref, options]);

  return isIntersecting;
};

export default useIntersectionObserver;

```

### tailwind.config.js

```js
/** @type {import('tailwindcss').Config} */
module.exports = {
  darkMode: ["class"],
  content: [
    './pages/**/*.{ts,tsx}',
    './components/**/*.{ts,tsx}',
    './app/**/*.{ts,tsx}',
    './src/**/*.{ts,tsx}',
  ],
  prefix: "",
  theme: {
    container: {
      center: true,
      padding: "2rem",
      screens: {
        "2xl": "1400px",
      },
    },
    extend: {
      colors: {
        border: "hsl(var(--border))",
        input: "hsl(var(--input))",
        ring: "hsl(var(--ring))",
        background: "hsl(var(--background))",
        foreground: "hsl(var(--foreground))",
        primary: {
          DEFAULT: "hsl(var(--primary))",
          foreground: "hsl(var(--primary-foreground))",
        },
        secondary: {
          DEFAULT: "hsl(var(--secondary))",
          foreground: "hsl(var(--secondary-foreground))",
        },
        destructive: {
          DEFAULT: "hsl(var(--destructive))",
          foreground: "hsl(var(--destructive-foreground))",
        },
        muted: {
          DEFAULT: "hsl(var(--muted))",
          foreground: "hsl(var(--muted-foreground))",
        },
        accent: {
          DEFAULT: "hsl(var(--accent))",
          foreground: "hsl(var(--accent-foreground))",
        },
        popover: {
          DEFAULT: "hsl(var(--popover))",
          foreground: "hsl(var(--popover-foreground))",
        },
        card: {
          DEFAULT: "hsl(var(--card))",
          foreground: "hsl(var(--card-foreground))",
        },
      },
      borderRadius: {
        lg: "var(--radius)",
        md: "calc(var(--radius) - 2px)",
        sm: "calc(var(--radius) - 4px)",
      },
      keyframes: {
        "accordion-down": {
          from: { height: "0" },
          to: { height: "var(--radix-accordion-content-height)" },
        },
        "accordion-up": {
          from: { height: "var(--radix-accordion-content-height)" },
          to: { height: "0" },
        },
      },
      animation: {
        "accordion-down": "accordion-down 0.2s ease-out",
        "accordion-up": "accordion-up 0.2s ease-out",
      },
    },
  },
  plugins: [require("tailwindcss-animate")],
}
```

### tsconfig.json

```json
{
  "compilerOptions": {
    "target": "es5",
    "lib": ["dom", "dom.iterable", "esnext"],
    "allowJs": true,
    "skipLibCheck": true,
    "esModuleInterop": true,
    "allowSyntheticDefaultImports": true,
    "strict": true,
    "forceConsistentCasingInFileNames": true,
    "module": "esnext",
    "moduleResolution": "node",
    "resolveJsonModule": true,
    "isolatedModules": true,
    "noEmit": true,
    "jsx": "react-jsx",
    "baseUrl": "src"
  },
  "include": ["src"]
}

```

### webpack.config.js

```js
const path = require('path');
const HtmlWebpackPlugin = require('html-webpack-plugin');
const MiniCssExtractPlugin = require('mini-css-extract-plugin');

module.exports = {
  entry: './src/index.js',
  output: {
    path: path.resolve(__dirname, 'dist'),
    filename: '[name].[contenthash].js',
    clean: true,
  },
  module: {
    rules: [
      {
        test: /\.(js|jsx)$/,
        exclude: /node_modules/,
        use: {
          loader: 'babel-loader',
        },
      },
      {
        test: /\.(scss|css)$/,
        use: [MiniCssExtractPlugin.loader, 'css-loader', 'sass-loader'],
      },
    ],
  },
  plugins: [
    new HtmlWebpackPlugin({
      template: './public/index.html',
    }),
    new MiniCssExtractPlugin({
      filename: '[name].[contenthash].css',
    }),
  ],
  devServer: {
    static: path.join(__dirname, 'dist'),
    port: 3000,
    hot: true,
  },
  optimization: {
    moduleIds: 'deterministic',
    runtimeChunk: 'single',
    splitChunks: {
      cacheGroups: {
        vendor: {
          test: /[\/]node_modules[\/]/,
          name: 'vendors',
          chunks: 'all',
        },
      },
    },
  },
};

const WorkboxWebpackPlugin = require('workbox-webpack-plugin');

module.exports.plugins.push(
  new WorkboxWebpackPlugin.GenerateSW({
    clientsClaim: true,
    skipWaiting: true,
    runtimeCaching: [{
      urlPattern: /^https?.*/,
      handler: 'NetworkFirst',
      options: {
        cacheName: 'https-calls',
        networkTimeoutSeconds: 15,
        expiration: {
          maxEntries: 150,
          maxAgeSeconds: 30 * 24 * 60 * 60, // 1 month
        },
        cacheableResponse: {
          statuses: [0, 200],
        },
      },
    }],
  })
);

```

#### docs

### package.json

```json
{
  "dependencies": {
    "bcryptjs": "^2.4.3",
    "jsonwebtoken": "^9.0.2"
  }
}

```

### README.md

```md

```

#### server

### .env

```
PORT=3000
BASE_URL=http://localhost:3000  # Optional, for local development
DATABASE_URL=postgres://test_project_user:postgres@localhost:5432/test_project
JWT_SECRET=mySecretKey

```

### babel.config.js

```js

```

### jest.config.js

```js
module.exports = {
  testEnvironment: 'node',
  testMatch: ['**/tests/**/*.js', '**/?(*.)+(spec|test).js'],
  collectCoverageFrom: ['src/**/*.js'],
  coveragePathIgnorePatterns: ['/node_modules/', '/tests/'],
  coverageReporters: ['text', 'lcov'],
  setupFilesAfterEnv: ['./jest.setup.js']
};

```

### jest.setup.js

```js
// jest.setup.js

require('dotenv').config();

jest.setTimeout(30000);

expect.extend({
  toBeWithinRange(received, floor, ceiling) {
    const pass = received >= floor && received <= ceiling;
    if (pass) {
      return {
        message: () => `expected ${received} not to be within range ${floor} - ${ceiling}`,
        pass: true,
      };
    } else {
      return {
        message: () => `expected ${received} to be within range ${floor} - ${ceiling}`,
        pass: false,
      };
    }
  },
});

beforeAll(() => {
  console.log('Starting all tests...');
});

afterAll(() => {
  console.log('All tests completed.');
});

if (typeof fetch === 'undefined') {
  global.fetch = require('node-fetch');
}

global.createMockResponse = (data, status = 200) => {
  return new Response(JSON.stringify(data), {
    status,
    headers: { 'Content-Type': 'application/json' },
  });
};

global.wait = (ms) => new Promise(resolve => setTimeout(resolve, ms));

const mockDate = new Date('2024-08-05T12:00:00Z');
global.Date = class extends Date {
  constructor() {
    return mockDate;
  }
};

```

### package.json

```json
{
  "name": "test_project",
  "version": "1.0.0",
  "description": "Project created with DemTech Master Script Project Setup.",
  "main": "src/index.js",
  "scripts": {
    "start": "node src/index.js",
    "dev": "nodemon src/index.js",
    "test": "jest",
    "test:watch": "jest --watch",
    "test:coverage": "jest --coverage"
  },
  "author": "",
  "license": "ISC",
  "dependencies": {
    "aws-sdk": "^2.1671.0",
    "bcryptjs": "^2.4.3",
    "cors": "^2.8.5",
    "dotenv": "^10.0.0",
    "express": "^4.19.2",
    "handlebars": "^4.7.8",
    "jsonwebtoken": "^9.0.2",
    "multer": "^1.4.5-lts.1",
    "nodemailer": "^6.9.14",
    "pg": "^8.12.0",
    "sequelize": "^6.37.3"
  },
  "devDependencies": {
    "jest": "^27.0.0",
    "nodemon": "^2.0.12",
    "supertest": "^6.1.3"
  }
}

```

##### src

### app.js

```js
const express = require('express');
const { Pool } = require('pg');
const session = require('express-session');
const pgSession = require('connect-pg-simple')(session);
const passport = require('passport');
const cors = require('cors');
const dotenv = require('dotenv');
const path = require('path');
const errorHandler = require('./middleware/error-handling-middleware');

dotenv.config();

const app = express();

// Middleware
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// PostgreSQL Pool
const pool = new Pool({
    connectionString: process.env.DATABASE_URL
});

// Session Management
app.use(session({
    store: new pgSession({
        pool: pool,
        tableName: 'session'
    }),
    secret: process.env.SESSION_SECRET || 'your_secret_key',
    resave: false,
    saveUninitialized: false,
    cookie: { secure: process.env.NODE_ENV === 'production' }
}));

// Passport middleware
app.use(passport.initialize());
app.use(passport.session());

// Passport Config
require('./config/passport')(passport);

// Routes
app.use('/api/models', require('./routes/models'));
// Add other routes as needed

// Serve static files from the React app in production
if (process.env.NODE_ENV === 'production') {
    app.use(express.static(path.join(__dirname, '../../client/build')));

    app.get('*', (req, res) => {
        res.sendFile(path.join(__dirname, '../../client/build', 'index.html'));
    });
}

// Error Handling Middleware
app.use(errorHandler);

module.exports = app;

```

###### config

### database.js

```js
// src/config/database.js
const { Pool } = require('pg');
const { Sequelize } = require('sequelize');
require('dotenv').config();

const sequelize = new Sequelize(process.env.DATABASE_URL, {
  dialect: 'postgres',
  logging: false,
  pool: {
    max: 5,
    min: 0,
    acquire: 30000,
    idle: 10000
  }
});

const pool = new Pool({
  connectionString: process.env.DATABASE_URL,
});

const testConnection = async () => {
  try {
    await sequelize.authenticate();
    console.log('Sequelize connection has been established successfully.');

    const client = await pool.connect();
    console.log('PostgreSQL pool connection has been established successfully.');
    client.release();
  } catch (error) {
    console.error('Unable to connect to the database:', error);
  }
};

testConnection();

module.exports = {
  sequelize,
  Sequelize,
  query: (text, params) => pool.query(text, params),
};

```

### passport.js

```js
module.exports = (passport) => {
    // Add passport strategies and serialization here
    // This is a placeholder and should be expanded based on your auth requirements
};

```

###### controllers

### about.js

```js
const aboutModel = require('../models/about');

exports.getAll = async (req, res) => {
  try {
    const items = await aboutModel.findAll();
    res.json(items);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

exports.create = async (req, res) => {
  try {
    const newItem = await aboutModel.create(req.body);
    res.status(201).json(newItem);
  } catch (error) {
    res.status(400).json({ message: error.message });
  }
};

exports.getById = async (req, res) => {
  try {
    const item = await aboutModel.findByPk(req.params.id);
    if (!item) {
      return res.status(404).json({ message: 'Item not found' });
    }
    res.json(item);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

exports.update = async (req, res) => {
  try {
    const [updated] = await aboutModel.update(req.body, {
      where: { id: req.params.id }
    });
    if (updated) {
      const updatedItem = await aboutModel.findByPk(req.params.id);
      res.json(updatedItem);
    } else {
      res.status(404).json({ message: 'Item not found' });
    }
  } catch (error) {
    res.status(400).json({ message: error.message });
  }
};

exports.delete = async (req, res) => {
  try {
    const deleted = await aboutModel.destroy({
      where: { id: req.params.id }
    });
    if (deleted) {
      res.json({ message: 'Item deleted' });
    } else {
      res.status(404).json({ message: 'Item not found' });
    }
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

```

### index.js

```js
const app = require(./app);
const express = require('express');
const cors = require('cors');
require('dotenv').config();
const { sequelize } = require('./utils/db');
const modelRoutes = require('./routes/models');
const dynamicApiRoutes = require('./routes/dynamicApiRoutes');

const PORT = process.env.PORT || 3000;

// Middleware

// Routes
app.use('/api/models', modelRoutes);
app.use('/api', dynamicApiRoutes);

app.get('/', (req, res) => {
  res.json({ message: 'Welcome to the API' });
});

// Error handling middleware
app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).send('Something broke!');
});

// Database connection and server start
const startServer = async () => {
  try {
    await sequelize.authenticate();
    console.log('Database connection has been established successfully.');

    app.listen(PORT, () => console.log());
  } catch (error) {
    console.error('Unable to connect to the database:', error);
  }
};

startServer();

```

###### middleware

### auth.js

```js
// projects/grow-tracking-app/server/src/middleware/auth.js
const jwt = require('jsonwebtoken');

module.exports = function (req, res, next) {
  // Get token from header
  const token = req.header('x-auth-token');

  // Check if no token
  if (!token) {
    return res.status(401).json({ msg: 'No token, authorization denied' });
  }

  // Verify token
  try {
    const decoded = jwt.verify(token, process.env.JWT_SECRET);
    req.user = decoded.user;
    next();
  } catch (err) {
    res.status(401).json({ msg: 'Token is not valid' });
  }
};

```

### error-handling-middleware.js

```js
const errorHandler = (err, req, res, next) => {
    console.error(err.stack);
    res.status(500).send('Something broke!');
};

module.exports = errorHandler;

```

### errorHandler.js

```js
const { sendError } = require('../utils/apiResponse');

const errorHandler = (err, req, res, next) => {
  console.error(err.stack);

  const statusCode = err.statusCode || 500;
  const message = err.message || 'Internal Server Error';

  sendError(res, statusCode, message);
};

module.exports = errorHandler;

```

###### middlewares

### rbacMiddleware.js

```js
// src/middlewares/rbacMiddleware.js
const rbacMiddleware = (requiredRole) => {
  return (req, res, next) => {
    if (!req.user || !req.user.role) {
      return res.status(403).json({ message: 'Access denied' });
    }

    if (req.user.role !== requiredRole) {
      return res.status(403).json({ message: 'Insufficient permissions' });
    }

    next();
  };
};

module.exports = rbacMiddleware;

```

###### models

### about.js

```js
const { DataTypes } = require('sequelize');
const sequelize = require('../config/database');

const about = sequelize.define('about', {
  // Define your model fields here
  name: {
    type: DataTypes.STRING,
    allowNull: false
  },
  // Add more fields as needed
});

module.exports = about;

```

### EmailTemplate.js

```js
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

class EmailTemplateModel {
  async saveTemplate(templateData) {
    const query = 'INSERT INTO email_templates(name, subject, body) VALUES($1, $2, $3) RETURNING *';
    const values = [templateData.name, templateData.subject, templateData.body];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getTemplates() {
    const result = await pool.query('SELECT * FROM email_templates');
    return result.rows;
  }

  async getTemplateByName(name) {
    const result = await pool.query('SELECT * FROM email_templates WHERE name = $1', [name]);
    return result.rows[0];
  }
}

module.exports = new EmailTemplateModel();

```

### File.js

```js
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

class FileModel {
  async saveFile(fileData) {
    const query = 'INSERT INTO files(filename, originalname, mimetype, size, url, uploadedby) VALUES($1, $2, $3, $4, $5, $6) RETURNING *';
    const values = [fileData.filename, fileData.originalname, fileData.mimetype, fileData.size, fileData.url, fileData.uploadedby];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getFilesByUser(userId) {
    const query = 'SELECT * FROM files WHERE uploadedby = $1';
    const result = await pool.query(query, [userId]);
    return result.rows;
  }
}

module.exports = new FileModel();

```

### User.js

```js
const { Pool } = require('pg');
const bcrypt = require('bcryptjs');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

class UserService {
  async createUser(userData) {
    const hashedPassword = await bcrypt.hash(userData.password, 12);
    const query = 'INSERT INTO users (username, email, password, role) VALUES($1, $2, $3, $4) RETURNING *';
    const values = [userData.username, userData.email, hashedPassword, userData.role];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async findUserByEmail(email) {
    const query = 'SELECT * FROM users WHERE email = $1';
    const result = await pool.query(query, [email]);
    return result.rows[0];
  }

  async comparePassword(candidatePassword, storedPassword) {
    return bcrypt.compare(candidatePassword, storedPassword);
  }
}

module.exports = new UserService();

```

### Workflow.js

```js
// src/models/Workflow.js
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

class WorkflowModel {
  async createWorkflow(workflowData) {
    const query = 'INSERT INTO workflows(name, description, trigger, steps) VALUES($1, $2, $3, $4) RETURNING *';
    const values = [workflowData.name, workflowData.description, workflowData.trigger, JSON.stringify(workflowData.steps)];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getWorkflows() {
    const result = await pool.query('SELECT * FROM workflows');
    return result.rows;
  }

  async getWorkflowById(id) {
    const result = await pool.query('SELECT * FROM workflows WHERE id = $1', [id]);
    return result.rows[0];
  }
}

module.exports = new WorkflowModel();

```

###### routes

### about.js

```js
const express = require('express');
const router = express.Router();
const aboutController = require('../controllers/about');

router.get('/', aboutController.getAll);
router.post('/', aboutController.create);
router.get('/:id', aboutController.getById);
router.put('/:id', aboutController.update);
router.delete('/:id', aboutController.delete);

module.exports = router;

```

### auth.js

```js
const express = require('express');
const router = express.Router();
const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');
const User = require('../models/User');
const auth = require('../middleware/auth');
require('dotenv').config();

// @route   POST api/auth/register
// @desc    Register user
// @access  Public
router.post('/register', async (req, res) => {
  const { name, email, password } = req.body;

  try {
    let user = await User.findOne({ email });
    if (user) {
      return res.status(400).json({ msg: 'User already exists' });
    }

    user = new User({
      name,
      email,
      password,
    });

    const salt = await bcrypt.genSalt(10);
    user.password = await bcrypt.hash(password, salt);

    await user.save();

    const payload = {
      user: {
        id: user.id,
      },
    };

    jwt.sign(
      payload,
      process.env.JWT_SECRET,
      { expiresIn: 3600 },
      (err, token) => {
        if (err) throw err;
        res.json({ token });
      }
    );
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Server error');
  }
});

// @route   POST api/auth/login
// @desc    Authenticate user & get token
// @access  Public
router.post('/login', async (req, res) => {
  const { email, password } = req.body;

  try {
    let user = await User.findOne({ email });
    if (!user) {
      return res.status(400).json({ msg: 'Invalid Credentials' });
    }

    const isMatch = await bcrypt.compare(password, user.password);
    if (!isMatch) {
      return res.status(400).json({ msg: 'Invalid Credentials' });
    }

    const payload = {
      user: {
        id: user.id,
      },
    };

    jwt.sign(
      payload,
      process.env.JWT_SECRET,
      { expiresIn: 3600 },
      (err, token) => {
        if (err) throw err;
        res.json({ token });
      }
    );
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Server error');
  }
});

// @route   GET api/auth/user
// @desc    Get logged in user
// @access  Private
router.get('/user', auth, async (req, res) => {
  try {
    const user = await User.findById(req.user.id).select('-password');
    res.json(user);
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Server Error');
  }
});

module.exports = router;

```

### authRoutes.js

```js
// src/routes/authRoutes.js
const express = require('express');
const jwt = require('jsonwebtoken');
const UserService = require('../models/User');
const rbacMiddleware = require('../middlewares/rbacMiddleware');

const router = express.Router();

router.post('/register', async (req, res) => {
  try {
    const { username, email, password, role } = req.body;
    const user = await UserService.createUser({ username, email, password, role });
    res.status(201).json({ message: 'User registered successfully', user });
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

router.post('/login', async (req, res) => {
  try {
    const { email, password } = req.body;
    const user = await UserService.findUserByEmail(email);
    if (!user || !(await UserService.comparePassword(password, user.password))) {
      return res.status(401).json({ message: 'Invalid credentials' });
    }
    const token = jwt.sign({ userId: user.id, role: user.role }, process.env.JWT_SECRET, { expiresIn: '1d' });
    res.json({ token });
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

// Example of a protected route using RBAC
router.get('/admin-only', rbacMiddleware('admin'), (req, res) => {
  res.json({ message: 'Welcome, admin!' });
});

module.exports = router;

```

### dynamicApiRoutes.js

```js
// src/routes/dynamicApiRoutes.js
const express = require('express');
const apiGenerationService = require('../services/apiGenerationService');
const dataModelingService = require('../services/dataModelingService');

const router = express.Router();

// Function to set up dynamic routes
const setupDynamicRoutes = async () => {
  try {
    const models = await dataModelingService.getModels();
    models.forEach(model => {
      router.use(`/${model.name.toLowerCase()}`, apiGenerationService.generateAPI(model.name, model.fields));
    });
    console.log('Dynamic API routes set up successfully');
  } catch (error) {
    console.error('Error setting up dynamic API routes:', error);
  }
};

// Set up routes immediately and export the router
setupDynamicRoutes();

module.exports = router;

```

### emailTemplateRoutes.js

```js
const express = require('express');
const EmailService = require('../services/emailService');
const router = express.Router();

router.post('/', async (req, res) => {
  try {
    const template = await EmailService.saveTemplate(req.body);
    res.status(201).json(template);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

router.get('/', async (req, res) => {
  try {
    const templates = await EmailService.getTemplates();
    res.json(templates);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

router.post('/send', async (req, res) => {
  try {
    const { templateName, to, context } = req.body;
    const template = await EmailService.getTemplateByName(templateName);
    if (!template) {
      return res.status(404).json({ message: 'Template not found' });
    }
    await EmailService.sendEmail(to, template.subject, template.body, context);
    res.json({ message: 'Email sent successfully' });
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

module.exports = router;

```

### fileRoutes.js

```js
const express = require('express');
const { upload, FileService } = require('../services/fileService');
const router = express.Router();

router.post('/upload', upload.single('file'), async (req, res) => {
  try {
    const fileData = {
      filename: req.file.key,
      originalname: req.file.originalname,
      mimetype: req.file.mimetype,
      size: req.file.size,
      url: req.file.location,
      uploadedby: req.user.id
    };
    const file = await FileService.saveFile(fileData);
    res.status(201).json(file);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

router.get('/', async (req, res) => {
  try {
    const files = await FileService.getFilesByUser(req.user.id);
    res.json(files);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

module.exports = router;

```

### models.js

```js
const express = require('express');
const router = express.Router();
const DataModelingService = require('../services/dataModelingService');

router.post('/models', async (req, res, next) => {
  try {
    const { name, fields } = req.body;
    await DataModelingService.saveModel({ name, fields });
    res.status(201).json({ message: 'Model saved successfully' });
  } catch (error) {
    next(error);
  }
});

router.get('/models', async (req, res, next) => {
  try {
    const models = await DataModelingService.getModels();
    res.json(models);
  } catch (error) {
    next(error);
  }
});

module.exports = router;

```

### workflowRoutes.js

```js
// src/routes/workflowRoutes.js
const express = require('express');
const WorkflowModel = require('../models/Workflow');
const WorkflowService = require('../services/workflowService');

const router = express.Router();

router.post('/', async (req, res) => {
  try {
    const workflow = await WorkflowModel.createWorkflow(req.body);
    res.status(201).json(workflow);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

router.get('/', async (req, res) => {
  try {
    const workflows = await WorkflowModel.getWorkflows();
    res.json(workflows);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

router.post('/:id/execute', async (req, res) => {
  try {
    const workflow = await WorkflowModel.getWorkflowById(req.params.id);
    if (!workflow) {
      return res.status(404).json({ message: 'Workflow not found' });
    }
    const result = await WorkflowService.executeWorkflow(workflow, req.body);
    res.json(result);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

module.exports = router;

```

###### services

### apiGenerationService.js

```js
// src/services/apiGenerationService.js
const express = require('express');
const { query } = require('../utils/db');

class APIGenerationService {
  generateAPI(modelName, fields) {
    const router = express.Router();

    // Create
    router.post('/', async (req, res) => {
      try {
        const keys = Object.keys(req.body);
        const values = Object.values(req.body);
        const sqlQuery = `INSERT INTO ${modelName} (${keys.join(', ')}) VALUES (${values.map((_, i) => '$' + (i + 1)).join(', ')}) RETURNING *`;
        const result = await query(sqlQuery, values);
        res.status(201).json(result.rows[0]);
      } catch (error) {
        res.status(400).json({ error: error.message });
      }
    });

    // Read all
    router.get('/', async (req, res) => {
      try {
        const result = await query(`SELECT * FROM ${modelName}`);
        res.json(result.rows);
      } catch (error) {
        res.status(500).json({ error: error.message });
      }
    });

    // Read one
    router.get('/:id', async (req, res) => {
      try {
        const result = await query(`SELECT * FROM ${modelName} WHERE id = $1`, [req.params.id]);
        if (result.rows.length === 0) return res.status(404).json({ message: 'Document not found' });
        res.json(result.rows[0]);
      } catch (error) {
        res.status(500).json({ error: error.message });
      }
    });

    // Update
    router.put('/:id', async (req, res) => {
      try {
        const keys = Object.keys(req.body);
        const values = Object.values(req.body);
        const sqlQuery = `UPDATE ${modelName} SET ${keys.map((key, i) => `${key} = $${i + 1}`).join(', ')} WHERE id = $${keys.length + 1} RETURNING *`;
        const result = await query(sqlQuery, [...values, req.params.id]);
        if (result.rows.length === 0) return res.status(404).json({ message: 'Document not found' });
        res.json(result.rows[0]);
      } catch (error) {
        res.status(400).json({ error: error.message });
      }
    });

    // Delete
    router.delete('/:id', async (req, res) => {
      try {
        const result = await query(`DELETE FROM ${modelName} WHERE id = $1 RETURNING *`, [req.params.id]);
        if (result.rows.length === 0) return res.status(404).json({ message: 'Document not found' });
        res.json({ message: 'Document deleted successfully' });
      } catch (error) {
        res.status(500).json({ error: error.message });
      }
    });

    return router;
  }
}

module.exports = new APIGenerationService();

```

### emailService.js

```js
const nodemailer = require('nodemailer');
const handlebars = require('handlebars');
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

class EmailService {
  constructor() {
    this.transporter = nodemailer.createTransport({
      host: process.env.SMTP_HOST,
      port: process.env.SMTP_PORT,
      auth: {
        user: process.env.SMTP_USER,
        pass: process.env.SMTP_PASS
      }
    });
  }

  async sendEmail(to, subject, template, context) {
    const compiledTemplate = handlebars.compile(template);
    const html = compiledTemplate(context);

    const mailOptions = {
      from: process.env.EMAIL_FROM,
      to,
      subject,
      html
    };

    await this.transporter.sendMail(mailOptions);
  }

  async saveTemplate(templateData) {
    const query = 'INSERT INTO email_templates(name, subject, body) VALUES($1, $2, $3) RETURNING *';
    const values = [templateData.name, templateData.subject, templateData.body];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getTemplates() {
    const result = await pool.query('SELECT * FROM email_templates');
    return result.rows;
  }

  async getTemplateByName(name) {
    const result = await pool.query('SELECT * FROM email_templates WHERE name = $1', [name]);
    return result.rows[0];
  }
}

module.exports = new EmailService();

```

### fileService.js

```js
const aws = require('aws-sdk');
const multer = require('multer');
const multerS3 = require('multer-s3');
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

aws.config.update({
  secretAccessKey: process.env.AWS_SECRET_ACCESS_KEY,
  accessKeyId: process.env.AWS_ACCESS_KEY_ID,
  region: process.env.AWS_REGION
});

const s3 = new aws.S3();

const upload = multer({
  storage: multerS3({
    s3: s3,
    bucket: process.env.S3_BUCKET,
    acl: 'public-read',
    metadata: function (req, file, cb) {
      cb(null, {fieldName: file.fieldname});
    },
    key: function (req, file, cb) {
      cb(null, Date.now().toString() + '-' + file.originalname)
    }
  })
});

class FileService {
  async saveFile(fileData) {
    const query = 'INSERT INTO files(filename, originalname, mimetype, size, url, uploadedby) VALUES($1, $2, $3, $4, $5, $6) RETURNING *';
    const values = [fileData.filename, fileData.originalname, fileData.mimetype, fileData.size, fileData.url, fileData.uploadedby];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getFilesByUser(userId) {
    const query = 'SELECT * FROM files WHERE uploadedby = $1';
    const result = await pool.query(query, [userId]);
    return result.rows;
  }
}

module.exports = { upload, FileService: new FileService() };

```

### workflowService.js

```js
// src/services/workflowService.js
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});
const axios = require('axios');

class WorkflowService {
  async executeWorkflow(workflowDefinition, triggerData) {
    let currentData = triggerData;

    for (const step of workflowDefinition.steps) {
      currentData = await this.executeStep(step, currentData);
    }

    return currentData;
  }

  async executeStep(step, data) {
    switch (step.type) {
      case 'transform':
        return this.transformData(step.transformation, data);
      case 'apiCall':
        return this.makeAPICall(step.apiDetails, data);
      case 'condition':
        return this.evaluateCondition(step.condition, data) ? data : null;
      default:
        throw new Error(`Unknown step type: ${step.type}`);
    }
  }

  transformData(transformation, data) {
    const result = {};
    for (const [key, value] of Object.entries(transformation)) {
      result[key] = value.split('.').reduce((o, i) => o[i], data);
    }
    return result;
  }

  async makeAPICall(apiDetails, data) {
    const { url, method, body } = apiDetails;
    const response = await axios({ method, url, data: body });
    return response.data;
  }

  evaluateCondition(condition, data) {
    const { left, operator, right } = condition;
    const leftValue = left.split('.').reduce((o, i) => o[i], data);
    switch (operator) {
      case '==':
        return leftValue == right;
      case '!=':
        return leftValue != right;
      case '>':
        return leftValue > right;
      case '<':
        return leftValue < right;
      default:
        throw new Error(`Unknown operator: ${operator}`);
    }
  }
}

module.exports = new WorkflowService();

```

###### utils

### apiResponse.js

```js
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

```

##### tests

###### integration

### api.test.js

```js
const request = require('supertest');
const app = require('../../src/app');

describe('API Tests', () => {
  it('should return 200 OK for GET /', async () => {
    const res = await request(app).get('/');
    expect(res.statusCode).toBe(200);
  });
});

```

###### unit

### sample.test.js

```js
describe('Sample Test', () => {
  it('should pass', () => {
    expect(true).toBe(true);
  });
});

```

### ultimate

### .env

```

```

#### .github

### .gitignore

```
node_modules/
.env
*.log
build/

```

#### client

### .babelrc

```
{
  "presets": [
    ["@babel/preset-env", {
      "targets": {
        "browsers": [">0.25%", "not ie 11", "not op_mini all"]
      }
    }],
    "@babel/preset-react"
  ],
  "plugins": [
    "@babel/plugin-proposal-class-properties",
    "@babel/plugin-transform-runtime"
  ]
}

```

### .gitignore

```
# See https://help.github.com/articles/ignoring-files/ for more about ignoring files.

# dependencies
/node_modules
/.pnp
.pnp.js

# testing
/coverage

# production
/build

# misc
.DS_Store
.env.local
.env.development.local
.env.test.local
.env.production.local

npm-debug.log*
yarn-debug.log*
yarn-error.log*

*storybook.log
```

##### .storybook

### main.js

```js
/** @type { import('@storybook/react-webpack5').StorybookConfig } */
const config = {
  stories: ["../src/**/*.mdx", "../src/**/*.stories.@(js|jsx|mjs|ts|tsx)"],
  addons: [
    "@storybook/preset-create-react-app",
    "@storybook/addon-onboarding",
    "@storybook/addon-links",
    "@storybook/addon-essentials",
    "@chromatic-com/storybook",
    "@storybook/addon-interactions",
  ],
  framework: {
    name: "@storybook/react-webpack5",
    options: {},
  },
  staticDirs: ["..\\public"],
};
export default config;

```

### preview.js

```js
/** @type { import('@storybook/react').Preview } */
const preview = {
  parameters: {
    controls: {
      matchers: {
        color: /(background|color)$/i,
        date: /Date$/i,
      },
    },
  },
};

export default preview;

```

### components.json

```json
{
  "style": "new-york",
  "rsc": false,
  "tsx": true,
  "tailwind": {
    "config": "tailwind.config.js",
    "css": "src/index.css",
    "baseColor": "slate",
    "cssVariables": true
  },
  "aliases": {
    "components": "@/components",
    "utils": "@/lib/utils"
  }
}
```

### package.json

```json
{
  "name": "client",
  "version": "0.1.0",
  "private": true,
  "dependencies": {
    "@radix-ui/react-icons": "^1.3.0",
    "@reduxjs/toolkit": "^2.2.7",
    "@testing-library/jest-dom": "^5.17.0",
    "@testing-library/react": "^13.4.0",
    "@testing-library/user-event": "^13.5.0",
    "axios": "^1.7.3",
    "class-variance-authority": "^0.7.0",
    "clsx": "^2.1.1",
    "framer-motion": "^11.3.21",
    "i18next": "^23.12.2",
    "i18next-browser-languagedetector": "^8.0.0",
    "i18next-http-backend": "^2.5.2",
    "react": "^18.3.1",
    "react-dom": "^18.3.1",
    "react-helmet-async": "^2.0.5",
    "react-i18next": "^15.0.0",
    "react-icons": "^4.12.0",
    "react-redux": "^9.1.2",
    "react-router-dom": "^6.26.0",
    "react-scripts": "5.0.1",
    "redux": "^5.0.1",
    "sass": "^1.77.8",
    "styled-components": "^5.3.11",
    "tailwind-merge": "^2.4.0",
    "tailwindcss-animate": "^1.0.7",
    "web-vitals": "^2.1.4",
    "workbox-window": "^7.1.0"
  },
  "scripts": {
    "start": "react-scripts start",
    "build": "react-scripts build",
    "test": "react-scripts test",
    "eject": "react-scripts eject",
    "sass": "sass src/styles/main.scss src/styles/main.css",
    "sass:watch": "sass src/styles/main.scss src/styles/main.css --watch",
    "generate-sitemap": "node scripts/generate-sitemap.js",
    "storybook": "storybook dev -p 6006",
    "build-storybook": "storybook build"
  },
  "eslintConfig": {
    "extends": [
      "react-app",
      "react-app/jest",
      "plugin:storybook/recommended"
    ]
  },
  "browserslist": {
    "production": [
      ">0.2%",
      "not dead",
      "not op_mini all"
    ],
    "development": [
      "last 1 chrome version",
      "last 1 firefox version",
      "last 1 safari version"
    ]
  },
  "devDependencies": {
    "@chromatic-com/storybook": "^1.6.1",
    "@storybook/addon-essentials": "^8.2.7",
    "@storybook/addon-interactions": "^8.2.7",
    "@storybook/addon-links": "^8.2.7",
    "@storybook/addon-onboarding": "^8.2.7",
    "@storybook/blocks": "^8.2.7",
    "@storybook/preset-create-react-app": "^8.2.7",
    "@storybook/react": "^8.2.7",
    "@storybook/react-webpack5": "^8.2.7",
    "@storybook/test": "^8.2.7",
    "autoprefixer": "^10.4.20",
    "eslint-plugin-storybook": "^0.8.0",
    "postcss": "^8.4.41",
    "prop-types": "^15.8.1",
    "storybook": "^8.2.7",
    "tailwindcss": "^3.4.7",
    "webpack": "^5.93.0",
    "workbox-webpack-plugin": "^7.1.0"
  }
}

```

### postcss.config.js

```js
module.exports = {
  plugins: {
    tailwindcss: {},
    autoprefixer: {},
  },
}

```

##### public

### index.html

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <link rel="icon" href="%PUBLIC_URL%/favicon.ico" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="theme-color" content="#000000" />
    <meta
      name="description"
      content="Web site created using create-react-app"
    />
    <link rel="apple-touch-icon" href="%PUBLIC_URL%/logo192.png" />
    <!--
      manifest.json provides metadata used when your web app is installed on a
      user's mobile device or desktop. See https://developers.google.com/web/fundamentals/web-app-manifest/
    -->
    <link rel="manifest" href="%PUBLIC_URL%/manifest.json" />
    <!--
      Notice the use of %PUBLIC_URL% in the tags above.
      It will be replaced with the URL of the `public` folder during the build.
      Only files inside the `public` folder can be referenced from the HTML.

      Unlike "/favicon.ico" or "favicon.ico", "%PUBLIC_URL%/favicon.ico" will
      work correctly both with client-side routing and a non-root public URL.
      Learn how to configure a non-root public URL by running `npm run build`.
    -->
    <title>React App</title>
    <link rel="manifest" href="%PUBLIC_URL%/manifest.json" />
    <meta name="theme-color" content="#000000" />
  </head>
  <body>
    <noscript>You need to enable JavaScript to run this app.</noscript>
    <div id="root"></div>
    <!--
      This HTML file is a template.
      If you open it directly in the browser, you will see an empty page.

      You can add webfonts, meta tags, or analytics to this file.
      The build step will place the bundled scripts into the <body> tag.

      To begin the development, run `npm start` or `yarn start`.
      To create a production bundle, use `npm run build` or `yarn build`.
    -->
  </body>
</html>

```

###### locales

####### en

### translation.json

```json
{"hello": "Hello", "welcome": "Welcome to our app!"}

```

####### es

### translation.json

```json
{"hello": "Hola", "welcome": "¡Bienvenido a nuestra aplicación!"}

```

### manifest.json

```json
{
  "short_name": "Your App",
  "name": "Your Application Name",
  "icons": [
    {
      "src": "favicon.ico",
      "sizes": "64x64 32x32 24x24 16x16",
      "type": "image/x-icon"
    },
    {
      "src": "logo192.png",
      "type": "image/png",
      "sizes": "192x192"
    },
    {
      "src": "logo512.png",
      "type": "image/png",
      "sizes": "512x512"
    }
  ],
  "start_url": ".",
  "display": "standalone",
  "theme_color": "#000000",
  "background_color": "#ffffff"
}

```

### sitemap.xml

```xml
<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
  
  <url>
    <loc>http://localhost:3000/</loc>
    <lastmod>2024-08-07</lastmod>
    <changefreq>weekly</changefreq>
    <priority>0.8</priority>
  </url>
  
  <url>
    <loc>http://localhost:3000/register</loc>
    <lastmod>2024-08-07</lastmod>
    <changefreq>weekly</changefreq>
    <priority>0.8</priority>
  </url>
  
</urlset>
```

### README.md

```md
# Getting Started with Create React App

This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).

## Available Scripts

In the project directory, you can run:

### `npm start`

Runs the app in the development mode.\
Open [http://localhost:3000](http://localhost:3000) to view it in your browser.

The page will reload when you make changes.\
You may also see any lint errors in the console.

### `npm test`

Launches the test runner in the interactive watch mode.\
See the section about [running tests](https://facebook.github.io/create-react-app/docs/running-tests) for more information.

### `npm run build`

Builds the app for production to the `build` folder.\
It correctly bundles React in production mode and optimizes the build for the best performance.

The build is minified and the filenames include the hashes.\
Your app is ready to be deployed!

See the section about [deployment](https://facebook.github.io/create-react-app/docs/deployment) for more information.

### `npm run eject`

**Note: this is a one-way operation. Once you `eject`, you can't go back!**

If you aren't satisfied with the build tool and configuration choices, you can `eject` at any time. This command will remove the single build dependency from your project.

Instead, it will copy all the configuration files and the transitive dependencies (webpack, Babel, ESLint, etc) right into your project so you have full control over them. All of the commands except `eject` will still work, but they will point to the copied scripts so you can tweak them. At this point you're on your own.

You don't have to ever use `eject`. The curated feature set is suitable for small and middle deployments, and you shouldn't feel obligated to use this feature. However we understand that this tool wouldn't be useful if you couldn't customize it when you are ready for it.

## Learn More

You can learn more in the [Create React App documentation](https://facebook.github.io/create-react-app/docs/getting-started).

To learn React, check out the [React documentation](https://reactjs.org/).

### Code Splitting

This section has moved here: [https://facebook.github.io/create-react-app/docs/code-splitting](https://facebook.github.io/create-react-app/docs/code-splitting)

### Analyzing the Bundle Size

This section has moved here: [https://facebook.github.io/create-react-app/docs/analyzing-the-bundle-size](https://facebook.github.io/create-react-app/docs/analyzing-the-bundle-size)

### Making a Progressive Web App

This section has moved here: [https://facebook.github.io/create-react-app/docs/making-a-progressive-web-app](https://facebook.github.io/create-react-app/docs/making-a-progressive-web-app)

### Advanced Configuration

This section has moved here: [https://facebook.github.io/create-react-app/docs/advanced-configuration](https://facebook.github.io/create-react-app/docs/advanced-configuration)

### Deployment

This section has moved here: [https://facebook.github.io/create-react-app/docs/deployment](https://facebook.github.io/create-react-app/docs/deployment)

### `npm run build` fails to minify

This section has moved here: [https://facebook.github.io/create-react-app/docs/troubleshooting#npm-run-build-fails-to-minify](https://facebook.github.io/create-react-app/docs/troubleshooting#npm-run-build-fails-to-minify)

```

##### scripts

### generate-sitemap.js

```js
const fs = require('fs');
const path = require('path');
require('dotenv').config({ path: path.join(__dirname, '../../.env') });

const baseUrl = process.env.BASE_URL || `http://localhost:${process.env.PORT || 3000}`;
const publicDir = path.join(__dirname, '../public');

const getPages = () => {
  // This is a simplified example. In reality, you'd want to
  // generate this list based on your actual routes.
  return ['', 'register'];
};

const generateSitemap = () => {
  const pages = getPages();
  const sitemap = `<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
  ${pages.map(page => `
  <url>
    <loc>${baseUrl}/${page}</loc>
    <lastmod>${new Date().toISOString().split('T')[0]}</lastmod>
    <changefreq>weekly</changefreq>
    <priority>0.8</priority>
  </url>
  `).join('')}
</urlset>`;

  fs.writeFileSync(path.join(publicDir, 'sitemap.xml'), sitemap);
  console.log('Sitemap generated successfully');

  // Generate robots.txt
  const robotsTxt = `User-agent: *
Allow: /

Sitemap: ${baseUrl}/sitemap.xml
`;
  fs.writeFileSync(path.join(publicDir, 'robots.txt'), robotsTxt);
  console.log('robots.txt generated successfully');
};

generateSitemap();

```

##### src

###### @

####### components

######## ui

### alert.tsx

```tsx
import * as React from "react"
import { cva, VariantProps } from "class-variance-authority"
import { cn } from "@/lib/utils"

const alertVariants = cva(
  "relative w-full rounded-lg border p-4 [&>svg~*]:pl-7 [&>svg+div]:translate-y-[-3px] [&>svg]:absolute [&>svg]:left-4 [&>svg]:top-4 [&>svg]:text-foreground",
  {
    variants: {
      variant: {
        default: "bg-background text-foreground",
        destructive:
          "border-destructive/50 text-destructive dark:border-destructive [&>svg]:text-destructive",
      },
    },
    defaultVariants: {
      variant: "default",
    },
  }
)

const Alert = React.forwardRef<
  HTMLDivElement,
  React.HTMLAttributes<HTMLDivElement> & VariantProps<typeof alertVariants>
>(({ className, variant, ...props }, ref) => (
  <div
    ref={ref}
    role="alert"
    className={cn(alertVariants({ variant }), className)}
    {...props}
  />
))
Alert.displayName = "Alert"

const AlertTitle = React.forwardRef<
  HTMLParagraphElement,
  React.HTMLAttributes<HTMLHeadingElement>
>(({ className, ...props }, ref) => (
  <h5
    ref={ref}
    className={cn("mb-1 font-medium leading-none tracking-tight", className)}
    {...props}
  />
))
AlertTitle.displayName = "AlertTitle"

const AlertDescription = React.forwardRef<
  HTMLParagraphElement,
  React.HTMLAttributes<HTMLParagraphElement>
>(({ className, ...props }, ref) => (
  <div
    ref={ref}
    className={cn("text-sm [&_p]:leading-relaxed", className)}
    {...props}
  />
))
AlertDescription.displayName = "AlertDescription"

export { Alert, AlertTitle, AlertDescription }

```

####### lib

### utils.ts

```ts
import { type ClassValue, clsx } from "clsx"
import { twMerge } from "tailwind-merge"

export function cn(...inputs: ClassValue[]) {
  return twMerge(clsx(inputs))
}

```

### App.css

```css
.App {
  text-align: center;
}

.App-logo {
  height: 40vmin;
  pointer-events: none;
}

@media (prefers-reduced-motion: no-preference) {
  .App-logo {
    animation: App-logo-spin infinite 20s linear;
  }
}

.App-header {
  background-color: #282c34;
  min-height: 100vh;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  font-size: calc(10px + 2vmin);
  color: white;
}

.App-link {
  color: #61dafb;
}

@keyframes App-logo-spin {
  from {
    transform: rotate(0deg);
  }
  to {
    transform: rotate(360deg);
  }
}

```

### App.js

```js
import React from 'react';

const App = () => {
  return (
    <div>
      {/* Your app content here */}
    </div>
  );
};

export default App;

```

### App.test.js

```js
import { render, screen } from '@testing-library/react';
import App from './App';

test('renders learn react link', () => {
  render(<App />);
  const linkElement = screen.getByText(/learn react/i);
  expect(linkElement).toBeInTheDocument();
});

```

###### components

### AnimatedBox.js

```js
import React from 'react';
import { motion } from 'framer-motion';

const AnimatedBox = () => (
  <motion.div
    initial={{ opacity: 0, scale: 0.5 }}
    animate={{ opacity: 1, scale: 1 }}
    transition={{ duration: 0.5 }}
    whileHover={{ scale: 1.1 }}
    whileTap={{ scale: 0.9 }}
    style={{
      width: 100,
      height: 100,
      background: 'blue',
      borderRadius: 10,
    }}
  />
);

export default AnimatedBox;

```

####### Dashboard

### Dashboard.js

```js
import React, { useState, useEffect } from 'react';
import DynamicTable from '../DynamicUI/DynamicTable';

const Dashboard = () => {
  const [dashboardData, setDashboardData] = useState({});

  useEffect(() => {
    // Fetch dashboard data from API
    const fetchDashboardData = async () => {
      // Replace with actual API call
      const response = await fetch('/api/dashboard');
      const data = await response.json();
      setDashboardData(data);
    };

    fetchDashboardData();
  }, []);

  return (
    <div>
      <h1>Dashboard</h1>
      {Object.entries(dashboardData).map(([key, value]) => (
        <div key={key}>
          <h2>{key}</h2>
          {Array.isArray(value) ? (
            <DynamicTable
              data={value}
              columns={Object.keys(value[0]).map(col => ({ key: col, label: col }))}
            />
          ) : (
            <p>{value}</p>
          )}
        </div>
      ))}
    </div>
  );
};

export default Dashboard;

```

### DashboardWidget.js

```js
import React from 'react';

const DashboardWidget = ({ title, value, icon }) => {
  return (
    <div className="dashboard-widget">
      <div className="widget-icon">{icon}</div>
      <div className="widget-content">
        <h3>{title}</h3>
        <p>{value}</p>
      </div>
    </div>
  );
};

export default DashboardWidget;

```

####### DynamicUI

### DynamicForm.js

```js
import React from 'react';
import { useForm } from 'react-hook-form';

const DynamicForm = ({ fields, onSubmit }) => {
  const { register, handleSubmit, formState: { errors } } = useForm();

  const renderField = (field) => {
    switch (field.type) {
      case 'text':
      case 'email':
      case 'number':
        return (
          <input
            type={field.type}
            {...register(field.name, field.validation)}
            placeholder={field.placeholder}
          />
        );
      case 'select':
        return (
          <select {...register(field.name, field.validation)}>
            {field.options.map((option, index) => (
              <option key={index} value={option.value}>
                {option.label}
              </option>
            ))}
          </select>
        );
      case 'textarea':
        return (
          <textarea
            {...register(field.name, field.validation)}
            placeholder={field.placeholder}
          />
        );
      default:
        return null;
    }
  };

  return (
    <form onSubmit={handleSubmit(onSubmit)}>
      {fields.map((field, index) => (
        <div key={index}>
          <label>{field.label}</label>
          {renderField(field)}
          {errors[field.name] && <span>{errors[field.name].message}</span>}
        </div>
      ))}
      <button type="submit">Submit</button>
    </form>
  );
};

export default DynamicForm;

```

### DynamicTable.js

```js
import React from 'react';

const DynamicTable = ({ data, columns }) => {
  return (
    <table>
      <thead>
        <tr>
          {columns.map((column, index) => (
            <th key={index}>{column.label}</th>
          ))}
        </tr>
      </thead>
      <tbody>
        {data.map((row, rowIndex) => (
          <tr key={rowIndex}>
            {columns.map((column, columnIndex) => (
              <td key={columnIndex}>{row[column.key]}</td>
            ))}
          </tr>
        ))}
      </tbody>
    </table>
  );
};

export default DynamicTable;

```

### FocusTrap.js

```js
import React, { useRef, useEffect } from 'react';

const FocusTrap = ({ children }) => {
  const trapRef = useRef(null);

  useEffect(() => {
    const trapElement = trapRef.current;
    const focusableElements = trapElement.querySelectorAll(
      'button, [href], input, select, textarea, [tabindex]:not([tabindex="-1"])'
    );
    const firstElement = focusableElements[0];
    const lastElement = focusableElements[focusableElements.length - 1];

    const handleKeyDown = (e) => {
      if (e.key === 'Tab') {
        if (e.shiftKey && document.activeElement === firstElement) {
          e.preventDefault();
          lastElement.focus();
        } else if (!e.shiftKey && document.activeElement === lastElement) {
          e.preventDefault();
          firstElement.focus();
        }
      }
    };

    trapElement.addEventListener('keydown', handleKeyDown);
    return () => trapElement.removeEventListener('keydown', handleKeyDown);
  }, []);

  return <div ref={trapRef}>{children}</div>;
};

export default FocusTrap;

```

### LanguageSwitcher.js

```js
import React from 'react';
import { useTranslation } from 'react-i18next';

const LanguageSwitcher = () => {
  const { i18n } = useTranslation();

  const changeLanguage = (lng) => {
    i18n.changeLanguage(lng);
  };

  return (
    <div>
      <button onClick={() => changeLanguage('en')}>English</button>
      <button onClick={() => changeLanguage('es')}>Español</button>
    </div>
  );
};

export default LanguageSwitcher;

```

####### Noloco

### Button.js

```js
import styled from 'styled-components';

const Button = styled.button`
  background-color: ${props => props.theme.colors.secondary};
  color: white;
  border: none;
  padding: 10px 20px;
  border-radius: 4px;
  font-weight: 600;
  cursor: pointer;
  transition: background-color 0.3s ease;

  &:hover {
    background-color: ${props => props.theme.colors.primary};
  }
`;

export default Button;

```

### Card.js

```js
import styled from 'styled-components';

const Card = styled.div`
  background-color: white;
  border-radius: 8px;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  padding: 20px;
  margin-bottom: 20px;
`;

export default Card;

```

### Container.js

```js
import styled from 'styled-components';

const Container = styled.div`
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 20px;
`;

export default Container;

```

### ResponsiveGrid.js

```js
import styled from 'styled-components';
import { mediaQueries } from '../styles/breakpoints';

const ResponsiveGrid = styled.div`
  display: grid;
  grid-template-columns: 1fr;
  gap: 1rem;

  ${mediaQueries.tablet} {
    grid-template-columns: repeat(2, 1fr);
  }

  ${mediaQueries.desktop} {
    grid-template-columns: repeat(3, 1fr);
  }

  ${mediaQueries.largeDesktop} {
    grid-template-columns: repeat(4, 1fr);
  }
`;

export default ResponsiveGrid;

```

### SEO.js

```js
import React from 'react';
import { Helmet } from 'react-helmet-async';

const SEO = ({ title, description, keywords, image, url }) => (
  <Helmet>
    <title>{title}</title>
    <meta name="description" content={description} />
    <meta name="keywords" content={keywords} />
    <meta property="og:title" content={title} />
    <meta property="og:description" content={description} />
    <meta property="og:image" content={image} />
    <meta property="og:url" content={url} />
    <meta property="og:type" content="website" />
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:title" content={title} />
    <meta name="twitter:description" content={description} />
    <meta name="twitter:image" content={image} />
    <link rel="canonical" href={url} />
  </Helmet>
);

export default SEO;

```

###### i18n

### i18n.js

```js
import i18n from 'i18next';
import { initReactI18next } from 'react-i18next';
import Backend from 'i18next-http-backend';
import LanguageDetector from 'i18next-browser-languagedetector';

i18n
  .use(Backend)
  .use(LanguageDetector)
  .use(initReactI18next)
  .init({
    fallbackLng: 'en',
    debug: process.env.NODE_ENV !== 'production',
    interpolation: {
      escapeValue: false,
    },
    backend: {
      loadPath: '/locales/{{lng}}/{{ns}}.json',
    },
  });

export default i18n;

```

### index.css

```css
@tailwind base;
@tailwind components;
@tailwind utilities;

@layer base {
  :root {
    --background: 0 0% 100%;
    --foreground: 222.2 84% 4.9%;
    --card: 0 0% 100%;
    --card-foreground: 222.2 84% 4.9%;
    --popover: 0 0% 100%;
    --popover-foreground: 222.2 84% 4.9%;
    --primary: 222.2 47.4% 11.2%;
    --primary-foreground: 210 40% 98%;
    --secondary: 210 40% 96.1%;
    --secondary-foreground: 222.2 47.4% 11.2%;
    --muted: 210 40% 96.1%;
    --muted-foreground: 215.4 16.3% 46.9%;
    --accent: 210 40% 96.1%;
    --accent-foreground: 222.2 47.4% 11.2%;
    --destructive: 0 84.2% 60.2%;
    --destructive-foreground: 210 40% 98%;
    --border: 214.3 31.8% 91.4%;
    --input: 214.3 31.8% 91.4%;
    --ring: 222.2 84% 4.9%;
    --radius: 0.5rem;
    --chart-1: 12 76% 61%;
    --chart-2: 173 58% 39%;
    --chart-3: 197 37% 24%;
    --chart-4: 43 74% 66%;
    --chart-5: 27 87% 67%;
  }

  .dark {
    --background: 222.2 84% 4.9%;
    --foreground: 210 40% 98%;
    --card: 222.2 84% 4.9%;
    --card-foreground: 210 40% 98%;
    --popover: 222.2 84% 4.9%;
    --popover-foreground: 210 40% 98%;
    --primary: 210 40% 98%;
    --primary-foreground: 222.2 47.4% 11.2%;
    --secondary: 217.2 32.6% 17.5%;
    --secondary-foreground: 210 40% 98%;
    --muted: 217.2 32.6% 17.5%;
    --muted-foreground: 215 20.2% 65.1%;
    --accent: 217.2 32.6% 17.5%;
    --accent-foreground: 210 40% 98%;
    --destructive: 0 62.8% 30.6%;
    --destructive-foreground: 210 40% 98%;
    --border: 217.2 32.6% 17.5%;
    --input: 217.2 32.6% 17.5%;
    --ring: 212.7 26.8% 83.9%;
    --chart-1: 220 70% 50%;
    --chart-2: 160 60% 45%;
    --chart-3: 30 80% 55%;
    --chart-4: 280 65% 60%;
    --chart-5: 340 75% 55%;
  }
}

@layer base {
  * {
    @apply border-border;
  }
  body {
    @apply bg-background text-foreground;
  }
}
```

### index.js

```js
import React from 'react';
import ReactDOM from 'react-dom/client';
import { Provider } from 'react-redux';
import store from './redux/store';
import App from './App';
import './index.css';

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <React.StrictMode>
    <Provider store={store}>
      <App />
    </Provider>
  </React.StrictMode>
);

```

###### layouts

### DashboardLayout.js

```js
import React from 'react';
import styled from 'styled-components';

const DashboardWrapper = styled.div`
  display: flex;
  flex-direction: column;
  min-height: 100vh;
`;

const Header = styled.header`
  padding: 1rem;
  background-color: ${({ theme }) => theme.colors.background};
`;

const Main = styled.main`
  flex: 1;
  padding: 1rem;
`;

const Footer = styled.footer`
  padding: 1rem;
  background-color: ${({ theme }) => theme.colors.background};
`;

const DashboardLayout = ({ children }) => (
  <DashboardWrapper>
    <Header>Header</Header>
    <Main>{children}</Main>
    <Footer>Footer</Footer>
  </DashboardWrapper>
);

export default DashboardLayout;

```

###### redux

####### slices

### exampleSlice.js

```js
import { createSlice } from '@reduxjs/toolkit';

const initialState = {
  value: 0,
};

const exampleSlice = createSlice({
  name: 'example',
  initialState,
  reducers: {
    increment: (state) => {
      state.value += 1;
    },
    decrement: (state) => {
      state.value -= 1;
    },
  },
});

export const { increment, decrement } = exampleSlice.actions;
export default exampleSlice.reducer;

```

### index.js

```js
import { combineReducers } from 'redux';
import exampleSlice from './exampleSlice';

const rootReducer = combineReducers({
  example: exampleSlice,
});

export default rootReducer;

```

### store.js

```js
import { configureStore } from '@reduxjs/toolkit';
import rootReducer from './slices';

const store = configureStore({
  reducer: rootReducer,
  devTools: process.env.NODE_ENV !== 'production',
});

export default store;

```

### reportWebVitals.js

```js
const reportWebVitals = onPerfEntry => {
  if (onPerfEntry && onPerfEntry instanceof Function) {
    import('web-vitals').then(({ getCLS, getFID, getFCP, getLCP, getTTFB }) => {
      getCLS(onPerfEntry);
      getFID(onPerfEntry);
      getFCP(onPerfEntry);
      getLCP(onPerfEntry);
      getTTFB(onPerfEntry);
    });
  }
};

export default reportWebVitals;

```

###### services

### apiService.js

```js
import axios from 'axios';

const API_BASE_URL = process.env.REACT_APP_API_BASE_URL || 'http://localhost:3000/api';

const apiService = {
  // Previous methods remain the same

  // Add a new method for handling file uploads
  upload: async (endpoint, file, onUploadProgress) => {
    const formData = new FormData();
    formData.append('file', file);

    try {
      const response = await axios.post(`${API_BASE_URL}/${endpoint}`, formData, {
        headers: {
          'Content-Type': 'multipart/form-data'
        },
        onUploadProgress
      });
      return response.data;
    } catch (error) {
      console.error('Error uploading file:', error);
      throw error;
    }
  },

  // Add a method for cancellable requests
  getCancellable: (endpoint) => {
    const source = axios.CancelToken.source();
    const promise = axios.get(`${API_BASE_URL}/${endpoint}`, {
      cancelToken: source.token
    });
    return { promise, cancel: () => source.cancel('Request cancelled') };
  }
};

export default apiService;

```

### serviceWorkerRegistration.js

```js
import { Workbox } from 'workbox-window';

export function register() {
  if ('serviceWorker' in navigator) {
    const wb = new Workbox('/service-worker.js');

    wb.addEventListener('installed', event => {
      if (event.isUpdate) {
        if (confirm('New content is available! Click OK to refresh.')) {
          window.location.reload();
        }
      }
    });

    wb.register();
  }
}

```

### setupTests.js

```js
// jest-dom adds custom jest matchers for asserting on DOM nodes.
// allows you to do things like:
// expect(element).toHaveTextContent(/react/i)
// learn more: https://github.com/testing-library/jest-dom
import '@testing-library/jest-dom';

```

###### stories

####### assets

### avif-test-image.avif

```avif
    ftypavif    avifmif1miafMA1B   �meta       (hdlr        pict            libavif    pitm        iloc    D          #   (iinf        infe      av01Color    jiprp   Kipco   ispe           pixi       av1C�     colrnclx   �   ipma        �  +mdat 

"!��4 2�L��4Cxp� ���(Zyf�M;��ʾ�$��������r�b�F�s�*t�e�>7��혠�ꪙ3so���Z�r���K���O8\���J������(�6�FՖ��o���P�PDf�]�Tڟ���haS8,��_v�E<�{th0&td�3摞X[��_��r��x��V���H-��p������Ua���*.zy���;�<�M�:��	��s!G	-<�4_y?>�
{�0�_�9ϻ��U(m\V��㳱S�B#�}&�J���&5
6���8Ε�ӹ�&c�<Q<ԗ۴����F�O���:��E��p:�36v��b�����^ŉdv���g@����o�L�4X/���d*
r�OuPgƩ7�^@ƣ�ᥳ"Ǥ�=��{��E���U\z��o�cC���(e��|���Qĥ��\8�S��a� �A}�[lI�N�4�����R��.���Ѽ�	˂����􊪠��������cC�6���O��� ��W����9w�nqcIC_y�
```

### button.css

```css
.storybook-button {
  font-family: 'Nunito Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif;
  font-weight: 700;
  border: 0;
  border-radius: 3em;
  cursor: pointer;
  display: inline-block;
  line-height: 1;
}
.storybook-button--primary {
  color: white;
  background-color: #1ea7fd;
}
.storybook-button--secondary {
  color: #333;
  background-color: transparent;
  box-shadow: rgba(0, 0, 0, 0.15) 0px 0px 0px 1px inset;
}
.storybook-button--small {
  font-size: 12px;
  padding: 10px 16px;
}
.storybook-button--medium {
  font-size: 14px;
  padding: 11px 20px;
}
.storybook-button--large {
  font-size: 16px;
  padding: 12px 24px;
}

```

### Button.jsx

```jsx
import React from 'react';
import PropTypes from 'prop-types';
import './button.css';

/**
 * Primary UI component for user interaction
 */
export const Button = ({ primary, backgroundColor, size, label, ...props }) => {
  const mode = primary ? 'storybook-button--primary' : 'storybook-button--secondary';
  return (
    <button
      type="button"
      className={['storybook-button', `storybook-button--${size}`, mode].join(' ')}
      style={backgroundColor && { backgroundColor }}
      {...props}
    >
      {label}
    </button>
  );
};

Button.propTypes = {
  /**
   * Is this the principal call to action on the page?
   */
  primary: PropTypes.bool,
  /**
   * What background color to use
   */
  backgroundColor: PropTypes.string,
  /**
   * How large should the button be?
   */
  size: PropTypes.oneOf(['small', 'medium', 'large']),
  /**
   * Button contents
   */
  label: PropTypes.string.isRequired,
  /**
   * Optional click handler
   */
  onClick: PropTypes.func,
};

Button.defaultProps = {
  backgroundColor: null,
  primary: false,
  size: 'medium',
  onClick: undefined,
};

```

### Button.stories.js

```js
import { fn } from '@storybook/test';
import { Button } from './Button';

// More on how to set up stories at: https://storybook.js.org/docs/writing-stories#default-export
export default {
  title: 'Example/Button',
  component: Button,
  parameters: {
    // Optional parameter to center the component in the Canvas. More info: https://storybook.js.org/docs/configure/story-layout
    layout: 'centered',
  },
  // This component will have an automatically generated Autodocs entry: https://storybook.js.org/docs/writing-docs/autodocs
  tags: ['autodocs'],
  // More on argTypes: https://storybook.js.org/docs/api/argtypes
  argTypes: {
    backgroundColor: { control: 'color' },
  },
  // Use `fn` to spy on the onClick arg, which will appear in the actions panel once invoked: https://storybook.js.org/docs/essentials/actions#action-args
  args: { onClick: fn() },
};

// More on writing stories with args: https://storybook.js.org/docs/writing-stories/args
export const Primary = {
  args: {
    primary: true,
    label: 'Button',
  },
};

export const Secondary = {
  args: {
    label: 'Button',
  },
};

export const Large = {
  args: {
    size: 'large',
    label: 'Button',
  },
};

export const Small = {
  args: {
    size: 'small',
    label: 'Button',
  },
};

```

### Configure.mdx

```mdx
import { Meta } from "@storybook/blocks";

import Github from "./assets/github.svg";
import Discord from "./assets/discord.svg";
import Youtube from "./assets/youtube.svg";
import Tutorials from "./assets/tutorials.svg";
import Styling from "./assets/styling.png";
import Context from "./assets/context.png";
import Assets from "./assets/assets.png";
import Docs from "./assets/docs.png";
import Share from "./assets/share.png";
import FigmaPlugin from "./assets/figma-plugin.png";
import Testing from "./assets/testing.png";
import Accessibility from "./assets/accessibility.png";
import Theming from "./assets/theming.png";
import AddonLibrary from "./assets/addon-library.png";

export const RightArrow = () => <svg 
    viewBox="0 0 14 14" 
    width="8px" 
    height="14px" 
    style={{ 
      marginLeft: '4px',
      display: 'inline-block',
      shapeRendering: 'inherit',
      verticalAlign: 'middle',
      fill: 'currentColor',
      'path fill': 'currentColor'
    }}
>
  <path d="m11.1 7.35-5.5 5.5a.5.5 0 0 1-.7-.7L10.04 7 4.9 1.85a.5.5 0 1 1 .7-.7l5.5 5.5c.2.2.2.5 0 .7Z" />
</svg>

<Meta title="Configure your project" />

<div className="sb-container">
  <div className='sb-section-title'>
    # Configure your project

    Because Storybook works separately from your app, you'll need to configure it for your specific stack and setup. Below, explore guides for configuring Storybook with popular frameworks and tools. If you get stuck, learn how you can ask for help from our community.
  </div>
  <div className="sb-section">
    <div className="sb-section-item">
      <img
        src={Styling}
        alt="A wall of logos representing different styling technologies"
      />
      <h4 className="sb-section-item-heading">Add styling and CSS</h4>
      <p className="sb-section-item-paragraph">Like with web applications, there are many ways to include CSS within Storybook. Learn more about setting up styling within Storybook.</p>
      <a
        href="https://storybook.js.org/docs/configure/styling-and-css/?renderer=react"
        target="_blank"
      >Learn more<RightArrow /></a>
    </div>
    <div className="sb-section-item">
      <img
        src={Context}
        alt="An abstraction representing the composition of data for a component"
      />
      <h4 className="sb-section-item-heading">Provide context and mocking</h4>
      <p className="sb-section-item-paragraph">Often when a story doesn't render, it's because your component is expecting a specific environment or context (like a theme provider) to be available.</p>
      <a
        href="https://storybook.js.org/docs/writing-stories/decorators/?renderer=react#context-for-mocking"
        target="_blank"
      >Learn more<RightArrow /></a>
    </div>
    <div className="sb-section-item">
      <img src={Assets} alt="A representation of typography and image assets" />
      <div>
        <h4 className="sb-section-item-heading">Load assets and resources</h4>
        <p className="sb-section-item-paragraph">To link static files (like fonts) to your projects and stories, use the
        `staticDirs` configuration option to specify folders to load when
        starting Storybook.</p>
        <a
          href="https://storybook.js.org/docs/configure/images-and-assets/?renderer=react"
          target="_blank"
        >Learn more<RightArrow /></a>
      </div>
    </div>
  </div>
</div>
<div className="sb-container">
  <div className='sb-section-title'>
    # Do more with Storybook

    Now that you know the basics, let's explore other parts of Storybook that will improve your experience. This list is just to get you started. You can customise Storybook in many ways to fit your needs.
  </div>

  <div className="sb-section">
    <div className="sb-features-grid">
      <div className="sb-grid-item">
        <img src={Docs} alt="A screenshot showing the autodocs tag being set, pointing a docs page being generated" />
        <h4 className="sb-section-item-heading">Autodocs</h4>
        <p className="sb-section-item-paragraph">Auto-generate living,
          interactive reference documentation from your components and stories.</p>
        <a
          href="https://storybook.js.org/docs/writing-docs/autodocs/?renderer=react"
          target="_blank"
        >Learn more<RightArrow /></a>
      </div>
      <div className="sb-grid-item">
        <img src={Share} alt="A browser window showing a Storybook being published to a chromatic.com URL" />
        <h4 className="sb-section-item-heading">Publish to Chromatic</h4>
        <p className="sb-section-item-paragraph">Publish your Storybook to review and collaborate with your entire team.</p>
        <a
          href="https://storybook.js.org/docs/sharing/publish-storybook/?renderer=react#publish-storybook-with-chromatic"
          target="_blank"
        >Learn more<RightArrow /></a>
      </div>
      <div className="sb-grid-item">
        <img src={FigmaPlugin} alt="Windows showing the Storybook plugin in Figma" />
        <h4 className="sb-section-item-heading">Figma Plugin</h4>
        <p className="sb-section-item-paragraph">Embed your stories into Figma to cross-reference the design and live
          implementation in one place.</p>
        <a
          href="https://storybook.js.org/docs/sharing/design-integrations/?renderer=react#embed-storybook-in-figma-with-the-plugin"
          target="_blank"
        >Learn more<RightArrow /></a>
      </div>
      <div className="sb-grid-item">
        <img src={Testing} alt="Screenshot of tests passing and failing" />
        <h4 className="sb-section-item-heading">Testing</h4>
        <p className="sb-section-item-paragraph">Use stories to test a component in all its variations, no matter how
          complex.</p>
        <a
          href="https://storybook.js.org/docs/writing-tests/?renderer=react"
          target="_blank"
        >Learn more<RightArrow /></a>
      </div>
      <div className="sb-grid-item">
        <img src={Accessibility} alt="Screenshot of accessibility tests passing and failing" />
        <h4 className="sb-section-item-heading">Accessibility</h4>
        <p className="sb-section-item-paragraph">Automatically test your components for a11y issues as you develop.</p>
        <a
          href="https://storybook.js.org/docs/writing-tests/accessibility-testing/?renderer=react"
          target="_blank"
        >Learn more<RightArrow /></a>
      </div>
      <div className="sb-grid-item">
        <img src={Theming} alt="Screenshot of Storybook in light and dark mode" />
        <h4 className="sb-section-item-heading">Theming</h4>
        <p className="sb-section-item-paragraph">Theme Storybook's UI to personalize it to your project.</p>
        <a
          href="https://storybook.js.org/docs/configure/theming/?renderer=react"
          target="_blank"
        >Learn more<RightArrow /></a>
      </div>
    </div>
  </div>
</div>
<div className='sb-addon'>
  <div className='sb-addon-text'>
    <h4>Addons</h4>
    <p className="sb-section-item-paragraph">Integrate your tools with Storybook to connect workflows.</p>
    <a
        href="https://storybook.js.org/addons/"
        target="_blank"
      >Discover all addons<RightArrow /></a>
  </div>
  <div className='sb-addon-img'>
    <img src={AddonLibrary} alt="Integrate your tools with Storybook to connect workflows." />
  </div>
</div>

<div className="sb-section sb-socials">
    <div className="sb-section-item">
      <img src={Github} alt="Github logo" className="sb-explore-image"/>
      Join our contributors building the future of UI development.

      <a
        href="https://github.com/storybookjs/storybook"
        target="_blank"
      >Star on GitHub<RightArrow /></a>
    </div>
    <div className="sb-section-item">
      <img src={Discord} alt="Discord logo" className="sb-explore-image"/>
      <div>
        Get support and chat with frontend developers.

        <a
          href="https://discord.gg/storybook"
          target="_blank"
        >Join Discord server<RightArrow /></a>
      </div>
    </div>
    <div className="sb-section-item">
      <img src={Youtube} alt="Youtube logo" className="sb-explore-image"/>
      <div>
        Watch tutorials, feature previews and interviews.

        <a
          href="https://www.youtube.com/@chromaticui"
          target="_blank"
        >Watch on YouTube<RightArrow /></a>
      </div>
    </div>
    <div className="sb-section-item">
      <img src={Tutorials} alt="A book" className="sb-explore-image"/>
      <p>Follow guided walkthroughs on for key workflows.</p>

      <a
          href="https://storybook.js.org/tutorials/"
          target="_blank"
        >Discover tutorials<RightArrow /></a>
    </div>
</div>

<style>
  {`
  .sb-container {
    margin-bottom: 48px;
  }

  .sb-section {
    width: 100%;
    display: flex;
    flex-direction: row;
    gap: 20px;
  }

  img {
    object-fit: cover;
  }

  .sb-section-title {
    margin-bottom: 32px;
  }

  .sb-section a:not(h1 a, h2 a, h3 a) {
    font-size: 14px;
  }

  .sb-section-item, .sb-grid-item {
    flex: 1;
    display: flex;
    flex-direction: column;
  }

  .sb-section-item-heading {
    padding-top: 20px !important;
    padding-bottom: 5px !important;
    margin: 0 !important;
  }
  .sb-section-item-paragraph {
    margin: 0;
    padding-bottom: 10px;
  }

  .sb-chevron {
    margin-left: 5px;
  }

  .sb-features-grid {
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    grid-gap: 32px 20px;
  }

  .sb-socials {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
  }

  .sb-socials p {
    margin-bottom: 10px;
  }

  .sb-explore-image {
    max-height: 32px;
    align-self: flex-start;
  }

  .sb-addon {
    width: 100%;
    display: flex;
    align-items: center;
    position: relative;
    background-color: #EEF3F8;
    border-radius: 5px;
    border: 1px solid rgba(0, 0, 0, 0.05);
    background: #EEF3F8;
    height: 180px;
    margin-bottom: 48px;
    overflow: hidden;
  }

  .sb-addon-text {
    padding-left: 48px;
    max-width: 240px;
  }

  .sb-addon-text h4 {
    padding-top: 0px;
  }

  .sb-addon-img {
    position: absolute;
    left: 345px;
    top: 0;
    height: 100%;
    width: 200%;
    overflow: hidden;
  }

  .sb-addon-img img {
    width: 650px;
    transform: rotate(-15deg);
    margin-left: 40px;
    margin-top: -72px;
    box-shadow: 0 0 1px rgba(255, 255, 255, 0);
    backface-visibility: hidden;
  }

  @media screen and (max-width: 800px) {
    .sb-addon-img {
      left: 300px;
    }
  }

  @media screen and (max-width: 600px) {
    .sb-section {
      flex-direction: column;
    }

    .sb-features-grid {
      grid-template-columns: repeat(1, 1fr);
    }

    .sb-socials {
      grid-template-columns: repeat(2, 1fr);
    }

    .sb-addon {
      height: 280px;
      align-items: flex-start;
      padding-top: 32px;
      overflow: hidden;
    }

    .sb-addon-text {
      padding-left: 24px;
    }

    .sb-addon-img {
      right: 0;
      left: 0;
      top: 130px;
      bottom: 0;
      overflow: hidden;
      height: auto;
      width: 124%;
    }

    .sb-addon-img img {
      width: 1200px;
      transform: rotate(-12deg);
      margin-left: 0;
      margin-top: 48px;
      margin-bottom: -40px;
      margin-left: -24px;
    }
  }
  `}
</style>

```

### header.css

```css
.storybook-header {
  font-family: 'Nunito Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif;
  border-bottom: 1px solid rgba(0, 0, 0, 0.1);
  padding: 15px 20px;
  display: flex;
  align-items: center;
  justify-content: space-between;
}

.storybook-header svg {
  display: inline-block;
  vertical-align: top;
}

.storybook-header h1 {
  font-weight: 700;
  font-size: 20px;
  line-height: 1;
  margin: 6px 0 6px 10px;
  display: inline-block;
  vertical-align: top;
}

.storybook-header button + button {
  margin-left: 10px;
}

.storybook-header .welcome {
  color: #333;
  font-size: 14px;
  margin-right: 10px;
}

```

### Header.jsx

```jsx
import React from 'react';
import PropTypes from 'prop-types';

import { Button } from './Button';
import './header.css';

export const Header = ({ user, onLogin, onLogout, onCreateAccount }) => (
  <header>
    <div className="storybook-header">
      <div>
        <svg width="32" height="32" viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg">
          <g fill="none" fillRule="evenodd">
            <path
              d="M10 0h12a10 10 0 0110 10v12a10 10 0 01-10 10H10A10 10 0 010 22V10A10 10 0 0110 0z"
              fill="#FFF"
            />
            <path
              d="M5.3 10.6l10.4 6v11.1l-10.4-6v-11zm11.4-6.2l9.7 5.5-9.7 5.6V4.4z"
              fill="#555AB9"
            />
            <path
              d="M27.2 10.6v11.2l-10.5 6V16.5l10.5-6zM15.7 4.4v11L6 10l9.7-5.5z"
              fill="#91BAF8"
            />
          </g>
        </svg>
        <h1>Acme</h1>
      </div>
      <div>
        {user ? (
          <>
            <span className="welcome">
              Welcome, <b>{user.name}</b>!
            </span>
            <Button size="small" onClick={onLogout} label="Log out" />
          </>
        ) : (
          <>
            <Button size="small" onClick={onLogin} label="Log in" />
            <Button primary size="small" onClick={onCreateAccount} label="Sign up" />
          </>
        )}
      </div>
    </div>
  </header>
);

Header.propTypes = {
  user: PropTypes.shape({
    name: PropTypes.string.isRequired,
  }),
  onLogin: PropTypes.func.isRequired,
  onLogout: PropTypes.func.isRequired,
  onCreateAccount: PropTypes.func.isRequired,
};

Header.defaultProps = {
  user: null,
};

```

### Header.stories.js

```js
import { Header } from './Header';
import { fn } from '@storybook/test';

export default {
  title: 'Example/Header',
  component: Header,
  // This component will have an automatically generated Autodocs entry: https://storybook.js.org/docs/writing-docs/autodocs
  tags: ['autodocs'],
  parameters: {
    // More on how to position stories at: https://storybook.js.org/docs/configure/story-layout
    layout: 'fullscreen',
  },
  args: {
    onLogin: fn(),
    onLogout: fn(),
    onCreateAccount: fn(),
  },
};

export const LoggedIn = {
  args: {
    user: {
      name: 'Jane Doe',
    },
  },
};

export const LoggedOut = {};

```

### page.css

```css
.storybook-page {
  font-family: 'Nunito Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif;
  font-size: 14px;
  line-height: 24px;
  padding: 48px 20px;
  margin: 0 auto;
  max-width: 600px;
  color: #333;
}

.storybook-page h2 {
  font-weight: 700;
  font-size: 32px;
  line-height: 1;
  margin: 0 0 4px;
  display: inline-block;
  vertical-align: top;
}

.storybook-page p {
  margin: 1em 0;
}

.storybook-page a {
  text-decoration: none;
  color: #1ea7fd;
}

.storybook-page ul {
  padding-left: 30px;
  margin: 1em 0;
}

.storybook-page li {
  margin-bottom: 8px;
}

.storybook-page .tip {
  display: inline-block;
  border-radius: 1em;
  font-size: 11px;
  line-height: 12px;
  font-weight: 700;
  background: #e7fdd8;
  color: #66bf3c;
  padding: 4px 12px;
  margin-right: 10px;
  vertical-align: top;
}

.storybook-page .tip-wrapper {
  font-size: 13px;
  line-height: 20px;
  margin-top: 40px;
  margin-bottom: 40px;
}

.storybook-page .tip-wrapper svg {
  display: inline-block;
  height: 12px;
  width: 12px;
  margin-right: 4px;
  vertical-align: top;
  margin-top: 3px;
}

.storybook-page .tip-wrapper svg path {
  fill: #1ea7fd;
}

```

### Page.jsx

```jsx
import React from 'react';

import { Header } from './Header';
import './page.css';

export const Page = () => {
  const [user, setUser] = React.useState();

  return (
    <article>
      <Header
        user={user}
        onLogin={() => setUser({ name: 'Jane Doe' })}
        onLogout={() => setUser(undefined)}
        onCreateAccount={() => setUser({ name: 'Jane Doe' })}
      />

      <section className="storybook-page">
        <h2>Pages in Storybook</h2>
        <p>
          We recommend building UIs with a{' '}
          <a href="https://componentdriven.org" target="_blank" rel="noopener noreferrer">
            <strong>component-driven</strong>
          </a>{' '}
          process starting with atomic components and ending with pages.
        </p>
        <p>
          Render pages with mock data. This makes it easy to build and review page states without
          needing to navigate to them in your app. Here are some handy patterns for managing page
          data in Storybook:
        </p>
        <ul>
          <li>
            Use a higher-level connected component. Storybook helps you compose such data from the
            "args" of child component stories
          </li>
          <li>
            Assemble data in the page component from your services. You can mock these services out
            using Storybook.
          </li>
        </ul>
        <p>
          Get a guided tutorial on component-driven development at{' '}
          <a href="https://storybook.js.org/tutorials/" target="_blank" rel="noopener noreferrer">
            Storybook tutorials
          </a>
          . Read more in the{' '}
          <a href="https://storybook.js.org/docs" target="_blank" rel="noopener noreferrer">
            docs
          </a>
          .
        </p>
        <div className="tip-wrapper">
          <span className="tip">Tip</span> Adjust the width of the canvas with the{' '}
          <svg width="10" height="10" viewBox="0 0 12 12" xmlns="http://www.w3.org/2000/svg">
            <g fill="none" fillRule="evenodd">
              <path
                d="M1.5 5.2h4.8c.3 0 .5.2.5.4v5.1c-.1.2-.3.3-.4.3H1.4a.5.5 0 01-.5-.4V5.7c0-.3.2-.5.5-.5zm0-2.1h6.9c.3 0 .5.2.5.4v7a.5.5 0 01-1 0V4H1.5a.5.5 0 010-1zm0-2.1h9c.3 0 .5.2.5.4v9.1a.5.5 0 01-1 0V2H1.5a.5.5 0 010-1zm4.3 5.2H2V10h3.8V6.2z"
                id="a"
                fill="#999"
              />
            </g>
          </svg>
          Viewports addon in the toolbar
        </div>
      </section>
    </article>
  );
};

```

### Page.stories.js

```js
import { within, userEvent, expect } from '@storybook/test';

import { Page } from './Page';

export default {
  title: 'Example/Page',
  component: Page,
  parameters: {
    // More on how to position stories at: https://storybook.js.org/docs/configure/story-layout
    layout: 'fullscreen',
  },
};

export const LoggedOut = {};

// More on interaction testing: https://storybook.js.org/docs/writing-tests/interaction-testing
export const LoggedIn = {
  play: async ({ canvasElement }) => {
    const canvas = within(canvasElement);
    const loginButton = canvas.getByRole('button', { name: /Log in/i });
    await expect(loginButton).toBeInTheDocument();
    await userEvent.click(loginButton);
    await expect(loginButton).not.toBeInTheDocument();

    const logoutButton = canvas.getByRole('button', { name: /Log out/i });
    await expect(logoutButton).toBeInTheDocument();
  },
};

```

###### styles

####### abstracts

### _mixins.scss

```scss
@mixin flexCenter {
  display: flex;
  justify-content: center;
  align-items: center;
}

```

### _variables.scss

```scss
$primary-color: #0070f3;
$secondary-color: #0070f3;
$font-stack: Arial, sans-serif;

```

####### base

### _reset.scss

```scss
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

```

### breakpoints.js

```js
const sizes = {
  mobile: '576px',
  tablet: '768px',
  desktop: '1024px',
  largeDesktop: '1440px',
};

export const devices = {
  mobile: `(min-width: ${sizes.mobile})`,
  tablet: `(min-width: ${sizes.tablet})`,
  desktop: `(min-width: ${sizes.desktop})`,
  largeDesktop: `(min-width: ${sizes.largeDesktop})`,
};

export const mediaQueries = {
  mobile: `@media ${devices.mobile}`,
  tablet: `@media ${devices.tablet}`,
  desktop: `@media ${devices.desktop}`,
  largeDesktop: `@media ${devices.largeDesktop}`,
};

```

####### components

### GlobalStyle.js

```js
import { createGlobalStyle } from 'styled-components';

const GlobalStyle = createGlobalStyle`
  body {
    margin: 0;
    padding: 0;
    font-family: ${({ theme }) => theme.fonts.body};
    background-color: ${({ theme }) => theme.colors.background};
    color: ${({ theme }) => theme.colors.text};
  }
`;

export default GlobalStyle;

```

####### layout

### main.scss

```scss
@import 'abstracts/variables';
@import 'abstracts/mixins';

@import 'base/reset';
@import 'base/typography';

@import 'components/buttons';
@import 'components/forms';

@import 'layout/header';
@import 'layout/footer';

@import 'pages/home';

```

### NolocoTheme.js

```js
// src/styles/NolocoTheme.js
const NolocoTheme = {
    colors: {
        primary: '#0F172A',
        secondary: '#3B82F6',
        background: '#F8FAFC',
        text: '#1E293B',
    },
    fonts: {
      body: 'Inter, sans-serif',
    },
  };

  export default NolocoTheme;

```

####### pages

### ResponsiveWrapper.js

```js
import styled from 'styled-components';
import { mediaQueries } from './breakpoints';

const ResponsiveWrapper = styled.div`
  padding: 1rem;
  width: 100%;
  max-width: 100%;

  ${mediaQueries.tablet} {
    padding: 2rem;
    max-width: 720px;
    margin: 0 auto;
  }

  ${mediaQueries.desktop} {
    padding: 3rem;
    max-width: 960px;
  }

  ${mediaQueries.largeDesktop} {
    max-width: 1200px;
  }
`;

export default ResponsiveWrapper;

```

### theme.js

```js
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

```

###### utils

### imageOptimization.js

```js
export const getOptimizedImageUrl = (url, width, height) => {
  // This is a placeholder. In a real-world scenario, you'd integrate with
  // an image optimization service like Cloudinary or Imgix.
  return ;
};

```

### useIntersectionObserver.js

```js
import { useState, useEffect } from 'react';

const useIntersectionObserver = (ref, options = {}) => {
  const [isIntersecting, setIsIntersecting] = useState(false);

  useEffect(() => {
    const observer = new IntersectionObserver(([entry]) => {
      setIsIntersecting(entry.isIntersecting);
    }, options);

    if (ref.current) {
      observer.observe(ref.current);
    }

    return () => {
      observer.disconnect();
    };
  }, [ref, options]);

  return isIntersecting;
};

export default useIntersectionObserver;

```

### tailwind.config.js

```js
/** @type {import('tailwindcss').Config} */
module.exports = {
  darkMode: ["class"],
  content: [
    './pages/**/*.{ts,tsx}',
    './components/**/*.{ts,tsx}',
    './app/**/*.{ts,tsx}',
    './src/**/*.{ts,tsx}',
  ],
  prefix: "",
  theme: {
    container: {
      center: true,
      padding: "2rem",
      screens: {
        "2xl": "1400px",
      },
    },
    extend: {
      colors: {
        border: "hsl(var(--border))",
        input: "hsl(var(--input))",
        ring: "hsl(var(--ring))",
        background: "hsl(var(--background))",
        foreground: "hsl(var(--foreground))",
        primary: {
          DEFAULT: "hsl(var(--primary))",
          foreground: "hsl(var(--primary-foreground))",
        },
        secondary: {
          DEFAULT: "hsl(var(--secondary))",
          foreground: "hsl(var(--secondary-foreground))",
        },
        destructive: {
          DEFAULT: "hsl(var(--destructive))",
          foreground: "hsl(var(--destructive-foreground))",
        },
        muted: {
          DEFAULT: "hsl(var(--muted))",
          foreground: "hsl(var(--muted-foreground))",
        },
        accent: {
          DEFAULT: "hsl(var(--accent))",
          foreground: "hsl(var(--accent-foreground))",
        },
        popover: {
          DEFAULT: "hsl(var(--popover))",
          foreground: "hsl(var(--popover-foreground))",
        },
        card: {
          DEFAULT: "hsl(var(--card))",
          foreground: "hsl(var(--card-foreground))",
        },
      },
      borderRadius: {
        lg: "var(--radius)",
        md: "calc(var(--radius) - 2px)",
        sm: "calc(var(--radius) - 4px)",
      },
      keyframes: {
        "accordion-down": {
          from: { height: "0" },
          to: { height: "var(--radix-accordion-content-height)" },
        },
        "accordion-up": {
          from: { height: "var(--radix-accordion-content-height)" },
          to: { height: "0" },
        },
      },
      animation: {
        "accordion-down": "accordion-down 0.2s ease-out",
        "accordion-up": "accordion-up 0.2s ease-out",
      },
    },
  },
  plugins: [require("tailwindcss-animate")],
}
```

### tsconfig.json

```json
{
  "compilerOptions": {
    "target": "es5",
    "lib": ["dom", "dom.iterable", "esnext"],
    "allowJs": true,
    "skipLibCheck": true,
    "esModuleInterop": true,
    "allowSyntheticDefaultImports": true,
    "strict": true,
    "forceConsistentCasingInFileNames": true,
    "module": "esnext",
    "moduleResolution": "node",
    "resolveJsonModule": true,
    "isolatedModules": true,
    "noEmit": true,
    "jsx": "react-jsx",
    "baseUrl": "src"
  },
  "include": ["src"]
}

```

### webpack.config.js

```js
const path = require('path');
const HtmlWebpackPlugin = require('html-webpack-plugin');
const MiniCssExtractPlugin = require('mini-css-extract-plugin');

module.exports = {
  entry: './src/index.js',
  output: {
    path: path.resolve(__dirname, 'dist'),
    filename: '[name].[contenthash].js',
    clean: true,
  },
  module: {
    rules: [
      {
        test: /\.(js|jsx)$/,
        exclude: /node_modules/,
        use: {
          loader: 'babel-loader',
        },
      },
      {
        test: /\.(scss|css)$/,
        use: [MiniCssExtractPlugin.loader, 'css-loader', 'sass-loader'],
      },
    ],
  },
  plugins: [
    new HtmlWebpackPlugin({
      template: './public/index.html',
    }),
    new MiniCssExtractPlugin({
      filename: '[name].[contenthash].css',
    }),
  ],
  devServer: {
    static: path.join(__dirname, 'dist'),
    port: 3000,
    hot: true,
  },
  optimization: {
    moduleIds: 'deterministic',
    runtimeChunk: 'single',
    splitChunks: {
      cacheGroups: {
        vendor: {
          test: /[\/]node_modules[\/]/,
          name: 'vendors',
          chunks: 'all',
        },
      },
    },
  },
};

const WorkboxWebpackPlugin = require('workbox-webpack-plugin');

module.exports.plugins.push(
  new WorkboxWebpackPlugin.GenerateSW({
    clientsClaim: true,
    skipWaiting: true,
    runtimeCaching: [{
      urlPattern: /^https?.*/,
      handler: 'NetworkFirst',
      options: {
        cacheName: 'https-calls',
        networkTimeoutSeconds: 15,
        expiration: {
          maxEntries: 150,
          maxAgeSeconds: 30 * 24 * 60 * 60, // 1 month
        },
        cacheableResponse: {
          statuses: [0, 200],
        },
      },
    }],
  })
);

```

#### docs

### package.json

```json
{
  "dependencies": {
    "bcryptjs": "^2.4.3",
    "jsonwebtoken": "^9.0.2"
  }
}

```

### README.md

```md

```

#### server

### .env

```
PORT=3000
BASE_URL=http://localhost:3000  # Optional, for local development
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
DATABASE_URL=postgres://ultimate_user:postgres@localhost:5432/ultimate
JWT_SECRET=mySecretKey

```

### babel.config.js

```js

```

### jest.config.js

```js
module.exports = {
  testEnvironment: 'node',
  testMatch: ['**/tests/**/*.js', '**/?(*.)+(spec|test).js'],
  collectCoverageFrom: ['src/**/*.js'],
  coveragePathIgnorePatterns: ['/node_modules/', '/tests/'],
  coverageReporters: ['text', 'lcov'],
  setupFilesAfterEnv: ['./jest.setup.js']
};

```

### jest.setup.js

```js
// jest.setup.js

require('dotenv').config();

jest.setTimeout(30000);

expect.extend({
  toBeWithinRange(received, floor, ceiling) {
    const pass = received >= floor && received <= ceiling;
    if (pass) {
      return {
        message: () => `expected ${received} not to be within range ${floor} - ${ceiling}`,
        pass: true,
      };
    } else {
      return {
        message: () => `expected ${received} to be within range ${floor} - ${ceiling}`,
        pass: false,
      };
    }
  },
});

beforeAll(() => {
  console.log('Starting all tests...');
});

afterAll(() => {
  console.log('All tests completed.');
});

if (typeof fetch === 'undefined') {
  global.fetch = require('node-fetch');
}

global.createMockResponse = (data, status = 200) => {
  return new Response(JSON.stringify(data), {
    status,
    headers: { 'Content-Type': 'application/json' },
  });
};

global.wait = (ms) => new Promise(resolve => setTimeout(resolve, ms));

const mockDate = new Date('2024-08-05T12:00:00Z');
global.Date = class extends Date {
  constructor() {
    return mockDate;
  }
};

```

### package.json

```json
{
  "name": "ultimate",
  "version": "1.0.0",
  "description": "Project created with DemTech Master Script Project Setup.",
  "main": "src/index.js",
  "scripts": {
    "start": "node src/index.js",
    "dev": "nodemon src/index.js",
    "test": "jest",
    "test:watch": "jest --watch",
    "test:coverage": "jest --coverage"
  },
  "author": "",
  "license": "ISC",
  "dependencies": {
    "aws-sdk": "^2.1669.0",
    "bcryptjs": "^2.4.3",
    "cors": "^2.8.5",
    "dotenv": "^10.0.0",
    "express": "^4.19.2",
    "handlebars": "^4.7.8",
    "jsonwebtoken": "^9.0.2",
    "multer": "^1.4.5-lts.1",
    "nodemailer": "^6.9.14",
    "pg": "^8.12.0",
    "sequelize": "^6.37.3"
  },
  "devDependencies": {
    "jest": "^27.0.0",
    "nodemon": "^2.0.12",
    "supertest": "^6.1.3"
  }
}

```

### psql_output.log

```log
CREATE DATABASE
CREATE ROLE
GRANT
You are now connected to database "ultimate" as user "postgres".
CREATE EXTENSION

```

##### src

### app.js

```js
const express = require('express');
const { Pool } = require('pg');
const session = require('express-session');
const pgSession = require('connect-pg-simple')(session);
const passport = require('passport');
const cors = require('cors');
const dotenv = require('dotenv');
const path = require('path');
const errorHandler = require('./middleware/error-handling-middleware');

dotenv.config();

const app = express();

// Middleware
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// PostgreSQL Pool
const pool = new Pool({
    connectionString: process.env.DATABASE_URL
});

// Session Management
app.use(session({
    store: new pgSession({
        pool: pool,
        tableName: 'session'
    }),
    secret: process.env.SESSION_SECRET || 'your_secret_key',
    resave: false,
    saveUninitialized: false,
    cookie: { secure: process.env.NODE_ENV === 'production' }
}));

// Passport middleware
app.use(passport.initialize());
app.use(passport.session());

// Passport Config
require('./config/passport')(passport);

// Routes
app.use('/api/models', require('./routes/models'));
// Add other routes as needed

// Serve static files from the React app in production
if (process.env.NODE_ENV === 'production') {
    app.use(express.static(path.join(__dirname, '../../client/build')));

    app.get('*', (req, res) => {
        res.sendFile(path.join(__dirname, '../../client/build', 'index.html'));
    });
}

// Error Handling Middleware
app.use(errorHandler);

module.exports = app;

```

###### config

### database.js

```js
// src/config/database.js
const { Pool } = require('pg');
const { Sequelize } = require('sequelize');
require('dotenv').config();

const sequelize = new Sequelize(process.env.DATABASE_URL, {
  dialect: 'postgres',
  logging: false,
  pool: {
    max: 5,
    min: 0,
    acquire: 30000,
    idle: 10000
  }
});

const pool = new Pool({
  connectionString: process.env.DATABASE_URL,
});

const testConnection = async () => {
  try {
    await sequelize.authenticate();
    console.log('Sequelize connection has been established successfully.');

    const client = await pool.connect();
    console.log('PostgreSQL pool connection has been established successfully.');
    client.release();
  } catch (error) {
    console.error('Unable to connect to the database:', error);
  }
};

testConnection();

module.exports = {
  sequelize,
  Sequelize,
  query: (text, params) => pool.query(text, params),
};

```

### passport.js

```js
module.exports = (passport) => {
    // Add passport strategies and serialization here
    // This is a placeholder and should be expanded based on your auth requirements
};

```

###### controllers

### about.js

```js
const aboutModel = require('../models/about');

exports.getAll = async (req, res) => {
  try {
    const items = await aboutModel.findAll();
    res.json(items);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

exports.create = async (req, res) => {
  try {
    const newItem = await aboutModel.create(req.body);
    res.status(201).json(newItem);
  } catch (error) {
    res.status(400).json({ message: error.message });
  }
};

exports.getById = async (req, res) => {
  try {
    const item = await aboutModel.findByPk(req.params.id);
    if (!item) {
      return res.status(404).json({ message: 'Item not found' });
    }
    res.json(item);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

exports.update = async (req, res) => {
  try {
    const [updated] = await aboutModel.update(req.body, {
      where: { id: req.params.id }
    });
    if (updated) {
      const updatedItem = await aboutModel.findByPk(req.params.id);
      res.json(updatedItem);
    } else {
      res.status(404).json({ message: 'Item not found' });
    }
  } catch (error) {
    res.status(400).json({ message: error.message });
  }
};

exports.delete = async (req, res) => {
  try {
    const deleted = await aboutModel.destroy({
      where: { id: req.params.id }
    });
    if (deleted) {
      res.json({ message: 'Item deleted' });
    } else {
      res.status(404).json({ message: 'Item not found' });
    }
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

```

### contact.js

```js
const contactModel = require('../models/contact');

exports.getAll = async (req, res) => {
  try {
    const items = await contactModel.findAll();
    res.json(items);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

exports.create = async (req, res) => {
  try {
    const newItem = await contactModel.create(req.body);
    res.status(201).json(newItem);
  } catch (error) {
    res.status(400).json({ message: error.message });
  }
};

exports.getById = async (req, res) => {
  try {
    const item = await contactModel.findByPk(req.params.id);
    if (!item) {
      return res.status(404).json({ message: 'Item not found' });
    }
    res.json(item);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

exports.update = async (req, res) => {
  try {
    const [updated] = await contactModel.update(req.body, {
      where: { id: req.params.id }
    });
    if (updated) {
      const updatedItem = await contactModel.findByPk(req.params.id);
      res.json(updatedItem);
    } else {
      res.status(404).json({ message: 'Item not found' });
    }
  } catch (error) {
    res.status(400).json({ message: error.message });
  }
};

exports.delete = async (req, res) => {
  try {
    const deleted = await contactModel.destroy({
      where: { id: req.params.id }
    });
    if (deleted) {
      res.json({ message: 'Item deleted' });
    } else {
      res.status(404).json({ message: 'Item not found' });
    }
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

```

### docs.js

```js
const docsModel = require('../models/docs');

exports.getAll = async (req, res) => {
  try {
    const items = await docsModel.findAll();
    res.json(items);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

exports.create = async (req, res) => {
  try {
    const newItem = await docsModel.create(req.body);
    res.status(201).json(newItem);
  } catch (error) {
    res.status(400).json({ message: error.message });
  }
};

exports.getById = async (req, res) => {
  try {
    const item = await docsModel.findByPk(req.params.id);
    if (!item) {
      return res.status(404).json({ message: 'Item not found' });
    }
    res.json(item);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

exports.update = async (req, res) => {
  try {
    const [updated] = await docsModel.update(req.body, {
      where: { id: req.params.id }
    });
    if (updated) {
      const updatedItem = await docsModel.findByPk(req.params.id);
      res.json(updatedItem);
    } else {
      res.status(404).json({ message: 'Item not found' });
    }
  } catch (error) {
    res.status(400).json({ message: error.message });
  }
};

exports.delete = async (req, res) => {
  try {
    const deleted = await docsModel.destroy({
      where: { id: req.params.id }
    });
    if (deleted) {
      res.json({ message: 'Item deleted' });
    } else {
      res.status(404).json({ message: 'Item not found' });
    }
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

```

### index.js

```js
const app = require(./app);
const express = require('express');
const cors = require('cors');
require('dotenv').config();
const { sequelize } = require('./utils/db');
const modelRoutes = require('./routes/models');
const dynamicApiRoutes = require('./routes/dynamicApiRoutes');

const PORT = process.env.PORT || 3000;

// Middleware

// Routes
app.use('/api/models', modelRoutes);
app.use('/api', dynamicApiRoutes);

app.get('/', (req, res) => {
  res.json({ message: 'Welcome to the API' });
});

// Error handling middleware
app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).send('Something broke!');
});

// Database connection and server start
const startServer = async () => {
  try {
    await sequelize.authenticate();
    console.log('Database connection has been established successfully.');

    app.listen(PORT, () => console.log());
  } catch (error) {
    console.error('Unable to connect to the database:', error);
  }
};

startServer();

```

###### middleware

### auth.js

```js
// projects/grow-tracking-app/server/src/middleware/auth.js
const jwt = require('jsonwebtoken');

module.exports = function (req, res, next) {
  // Get token from header
  const token = req.header('x-auth-token');

  // Check if no token
  if (!token) {
    return res.status(401).json({ msg: 'No token, authorization denied' });
  }

  // Verify token
  try {
    const decoded = jwt.verify(token, process.env.JWT_SECRET);
    req.user = decoded.user;
    next();
  } catch (err) {
    res.status(401).json({ msg: 'Token is not valid' });
  }
};

```

### error-handling-middleware.js

```js
const errorHandler = (err, req, res, next) => {
    console.error(err.stack);
    res.status(500).send('Something broke!');
};

module.exports = errorHandler;

```

### errorHandler.js

```js
const { sendError } = require('../utils/apiResponse');

const errorHandler = (err, req, res, next) => {
  console.error(err.stack);

  const statusCode = err.statusCode || 500;
  const message = err.message || 'Internal Server Error';

  sendError(res, statusCode, message);
};

module.exports = errorHandler;

```

###### middlewares

### rbacMiddleware.js

```js
// src/middlewares/rbacMiddleware.js
const rbacMiddleware = (requiredRole) => {
  return (req, res, next) => {
    if (!req.user || !req.user.role) {
      return res.status(403).json({ message: 'Access denied' });
    }

    if (req.user.role !== requiredRole) {
      return res.status(403).json({ message: 'Insufficient permissions' });
    }

    next();
  };
};

module.exports = rbacMiddleware;

```

###### models

### about.js

```js
const { DataTypes } = require('sequelize');
const sequelize = require('../config/database');

const about = sequelize.define('about', {
  // Define your model fields here
  name: {
    type: DataTypes.STRING,
    allowNull: false
  },
  // Add more fields as needed
});

module.exports = about;

```

### contact.js

```js
const { DataTypes } = require('sequelize');
const sequelize = require('../config/database');

const contact = sequelize.define('contact', {
  // Define your model fields here
  name: {
    type: DataTypes.STRING,
    allowNull: false
  },
  // Add more fields as needed
});

module.exports = contact;

```

### docs.js

```js
const { DataTypes } = require('sequelize');
const sequelize = require('../config/database');

const docs = sequelize.define('docs', {
  // Define your model fields here
  name: {
    type: DataTypes.STRING,
    allowNull: false
  },
  // Add more fields as needed
});

module.exports = docs;

```

### EmailTemplate.js

```js
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

class EmailTemplateModel {
  async saveTemplate(templateData) {
    const query = 'INSERT INTO email_templates(name, subject, body) VALUES($1, $2, $3) RETURNING *';
    const values = [templateData.name, templateData.subject, templateData.body];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getTemplates() {
    const result = await pool.query('SELECT * FROM email_templates');
    return result.rows;
  }

  async getTemplateByName(name) {
    const result = await pool.query('SELECT * FROM email_templates WHERE name = $1', [name]);
    return result.rows[0];
  }
}

module.exports = new EmailTemplateModel();

```

### File.js

```js
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

class FileModel {
  async saveFile(fileData) {
    const query = 'INSERT INTO files(filename, originalname, mimetype, size, url, uploadedby) VALUES($1, $2, $3, $4, $5, $6) RETURNING *';
    const values = [fileData.filename, fileData.originalname, fileData.mimetype, fileData.size, fileData.url, fileData.uploadedby];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getFilesByUser(userId) {
    const query = 'SELECT * FROM files WHERE uploadedby = $1';
    const result = await pool.query(query, [userId]);
    return result.rows;
  }
}

module.exports = new FileModel();

```

### User.js

```js
// src/models/User.js

const { Sequelize, DataTypes } = require('sequelize');
const sequelize = require('../config/database');

const User = sequelize.define('User', {
  name: {
    type: DataTypes.STRING,
    allowNull: false
  },
  email: {
    type: DataTypes.STRING,
    allowNull: false,
    unique: true
  },
  password: {
    type: DataTypes.STRING,
    allowNull: false
  }
});

module.exports = User;

```

### Workflow.js

```js
// src/models/Workflow.js
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

class WorkflowModel {
  async createWorkflow(workflowData) {
    const query = 'INSERT INTO workflows(name, description, trigger, steps) VALUES($1, $2, $3, $4) RETURNING *';
    const values = [workflowData.name, workflowData.description, workflowData.trigger, JSON.stringify(workflowData.steps)];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getWorkflows() {
    const result = await pool.query('SELECT * FROM workflows');
    return result.rows;
  }

  async getWorkflowById(id) {
    const result = await pool.query('SELECT * FROM workflows WHERE id = $1', [id]);
    return result.rows[0];
  }
}

module.exports = new WorkflowModel();

```

###### redux

####### actions

### authActions.js

```js
import axios from 'axios';
import { setAuthToken } from '../../utils/setAuthToken';
import {
  REGISTER_SUCCESS,
  REGISTER_FAIL,
  USER_LOADED,
  AUTH_ERROR,
  LOGIN_SUCCESS,
  LOGIN_FAIL,
  LOGOUT
} from './types';

// Load User
export const loadUser = () => async dispatch => {
  if (localStorage.token) {
    setAuthToken(localStorage.token);
  }

  try {
    const res = await axios.get('/api/auth');
    dispatch({
      type: USER_LOADED,
      payload: res.data
    });
  } catch (err) {
    dispatch({
      type: AUTH_ERROR
    });
  }
};

// Register User
export const register = (formData) => async dispatch => {
  try {
    const res = await axios.post('/api/users', formData);
    dispatch({
      type: REGISTER_SUCCESS,
      payload: res.data
    });
    dispatch(loadUser());
  } catch (err) {
    dispatch({
      type: REGISTER_FAIL,
      payload: err.response.data.msg
    });
  }
};

// Login User
export const login = (email, password) => async dispatch => {
  const config = {
    headers: {
      'Content-Type': 'application/json'
    }
  };

  const body = JSON.stringify({ email, password });

  try {
    const res = await axios.post('/api/auth', body, config);
    dispatch({
      type: LOGIN_SUCCESS,
      payload: res.data
    });
    dispatch(loadUser());
  } catch (err) {
    dispatch({
      type: LOGIN_FAIL,
      payload: err.response.data.msg
    });
  }
};

// Logout
export const logout = () => dispatch => {
  dispatch({ type: LOGOUT });
};

```

### projectActions.js

```js
import axios from 'axios';
import {
  GET_PROJECTS,
  ADD_PROJECT,
  DELETE_PROJECT,
  SET_CURRENT,
  CLEAR_CURRENT,
  PROJECT_ERROR
} from './types';

// Get Projects
export const getProjects = () => async dispatch => {
  try {
    const res = await axios.get('/api/projects');
    dispatch({
      type: GET_PROJECTS,
      payload: res.data
    });
  } catch (err) {
    dispatch({
      type: PROJECT_ERROR,
      payload: err.response.msg
    });
  }
};

// Add Project
export const addProject = (project) => async dispatch => {
  const config = {
    headers: {
      'Content-Type': 'application/json'
    }
  };

  try {
    const res = await axios.post('/api/projects', project, config);
    dispatch({
      type: ADD_PROJECT,
      payload: res.data
    });
  } catch (err) {
    dispatch({
      type: PROJECT_ERROR,
      payload: err.response.msg
    });
  }
};

// Delete Project
export const deleteProject = (id) => async dispatch => {
  try {
    await axios.delete(`/api/projects/${id}`);
    dispatch({
      type: DELETE_PROJECT,
      payload: id
    });
  } catch (err) {
    dispatch({
      type: PROJECT_ERROR,
      payload: err.response.msg
    });
  }
};

// Set Current Project
export const setCurrentProject = (project) => {
  return {
    type: SET_CURRENT,
    payload: project
  };
};

// Clear Current Project
export const clearCurrentProject = () => {
  return { type: CLEAR_CURRENT };
};

```

### taskActions.js

```js
import axios from 'axios';
import {
  GET_TASKS,
  ADD_TASK,
  DELETE_TASK,
  SET_CURRENT,
  CLEAR_CURRENT,
  TASK_ERROR
} from './types';

// Get Tasks
export const getTasks = () => async dispatch => {
  try {
    const res = await axios.get('/api/tasks');
    dispatch({
      type: GET_TASKS,
      payload: res.data
    });
  } catch (err) {
    dispatch({
      type: TASK_ERROR,
      payload: err.response.msg
    });
  }
};

// Add Task
export const addTask = (task) => async dispatch => {
  const config = {
    headers: {
      'Content-Type': 'application/json'
    }
  };

  try {
    const res = await axios.post('/api/tasks', task, config);
    dispatch({
      type: ADD_TASK,
      payload: res.data
    });
  } catch (err) {
    dispatch({
      type: TASK_ERROR,
      payload: err.response.msg
    });
  }
};

// Delete Task
export const deleteTask = (id) => async dispatch => {
  try {
    await axios.delete(`/api/tasks/${id}`);
    dispatch({
      type: DELETE_TASK,
      payload: id
    });
  } catch (err) {
    dispatch({
      type: TASK_ERROR,
      payload: err.response.msg
    });
  }
};

// Set Current Task
export const setCurrentTask = (task) => {
  return {
    type: SET_CURRENT,
    payload: task
  };
};

// Clear Current Task
export const clearCurrentTask = () => {
  return { type: CLEAR_CURRENT };
};

```

###### routes

### about.js

```js
const express = require('express');
const router = express.Router();
const aboutController = require('../controllers/about');

router.get('/', aboutController.getAll);
router.post('/', aboutController.create);
router.get('/:id', aboutController.getById);
router.put('/:id', aboutController.update);
router.delete('/:id', aboutController.delete);

module.exports = router;

```

### auth.js

```js
const express = require('express');
const router = express.Router();
const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');
const User = require('../models/User');
const auth = require('../middleware/auth');
require('dotenv').config();

// @route   POST api/auth/register
// @desc    Register user
// @access  Public
router.post('/register', async (req, res) => {
  const { name, email, password } = req.body;

  try {
    let user = await User.findOne({ email });
    if (user) {
      return res.status(400).json({ msg: 'User already exists' });
    }

    user = new User({
      name,
      email,
      password,
    });

    const salt = await bcrypt.genSalt(10);
    user.password = await bcrypt.hash(password, salt);

    await user.save();

    const payload = {
      user: {
        id: user.id,
      },
    };

    jwt.sign(
      payload,
      process.env.JWT_SECRET,
      { expiresIn: 3600 },
      (err, token) => {
        if (err) throw err;
        res.json({ token });
      }
    );
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Server error');
  }
});

// @route   POST api/auth/login
// @desc    Authenticate user & get token
// @access  Public
router.post('/login', async (req, res) => {
  const { email, password } = req.body;

  try {
    let user = await User.findOne({ email });
    if (!user) {
      return res.status(400).json({ msg: 'Invalid Credentials' });
    }

    const isMatch = await bcrypt.compare(password, user.password);
    if (!isMatch) {
      return res.status(400).json({ msg: 'Invalid Credentials' });
    }

    const payload = {
      user: {
        id: user.id,
      },
    };

    jwt.sign(
      payload,
      process.env.JWT_SECRET,
      { expiresIn: 3600 },
      (err, token) => {
        if (err) throw err;
        res.json({ token });
      }
    );
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Server error');
  }
});

// @route   GET api/auth/user
// @desc    Get logged in user
// @access  Private
router.get('/user', auth, async (req, res) => {
  try {
    const user = await User.findById(req.user.id).select('-password');
    res.json(user);
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Server Error');
  }
});

module.exports = router;

```

### authRoutes.js

```js
// src/routes/authRoutes.js
const express = require('express');
const jwt = require('jsonwebtoken');
const UserService = require('../models/User');
const rbacMiddleware = require('../middlewares/rbacMiddleware');

const router = express.Router();

router.post('/register', async (req, res) => {
  try {
    const { username, email, password, role } = req.body;
    const user = await UserService.createUser({ username, email, password, role });
    res.status(201).json({ message: 'User registered successfully', user });
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

router.post('/login', async (req, res) => {
  try {
    const { email, password } = req.body;
    const user = await UserService.findUserByEmail(email);
    if (!user || !(await UserService.comparePassword(password, user.password))) {
      return res.status(401).json({ message: 'Invalid credentials' });
    }
    const token = jwt.sign({ userId: user.id, role: user.role }, process.env.JWT_SECRET, { expiresIn: '1d' });
    res.json({ token });
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

// Example of a protected route using RBAC
router.get('/admin-only', rbacMiddleware('admin'), (req, res) => {
  res.json({ message: 'Welcome, admin!' });
});

module.exports = router;

```

### contact.js

```js
const express = require('express');
const router = express.Router();
const contactController = require('../controllers/contact');

router.get('/', contactController.getAll);
router.post('/', contactController.create);
router.get('/:id', contactController.getById);
router.put('/:id', contactController.update);
router.delete('/:id', contactController.delete);

module.exports = router;

```

### docs.js

```js
const express = require('express');
const router = express.Router();
const docsController = require('../controllers/docs');

router.get('/', docsController.getAll);
router.post('/', docsController.create);
router.get('/:id', docsController.getById);
router.put('/:id', docsController.update);
router.delete('/:id', docsController.delete);

module.exports = router;

```

### dynamicApiRoutes.js

```js
// src/routes/dynamicApiRoutes.js
const express = require('express');
const apiGenerationService = require('../services/apiGenerationService');
const dataModelingService = require('../services/dataModelingService');

const router = express.Router();

// Function to set up dynamic routes
const setupDynamicRoutes = async () => {
  try {
    const models = await dataModelingService.getModels();
    models.forEach(model => {
      router.use(`/${model.name.toLowerCase()}`, apiGenerationService.generateAPI(model.name, model.fields));
    });
    console.log('Dynamic API routes set up successfully');
  } catch (error) {
    console.error('Error setting up dynamic API routes:', error);
  }
};

// Set up routes immediately and export the router
setupDynamicRoutes();

module.exports = router;

```

### emailTemplateRoutes.js

```js
const express = require('express');
const EmailService = require('../services/emailService');
const router = express.Router();

router.post('/', async (req, res) => {
  try {
    const template = await EmailService.saveTemplate(req.body);
    res.status(201).json(template);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

router.get('/', async (req, res) => {
  try {
    const templates = await EmailService.getTemplates();
    res.json(templates);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

router.post('/send', async (req, res) => {
  try {
    const { templateName, to, context } = req.body;
    const template = await EmailService.getTemplateByName(templateName);
    if (!template) {
      return res.status(404).json({ message: 'Template not found' });
    }
    await EmailService.sendEmail(to, template.subject, template.body, context);
    res.json({ message: 'Email sent successfully' });
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

module.exports = router;

```

### fileRoutes.js

```js
const express = require('express');
const { upload, FileService } = require('../services/fileService');
const router = express.Router();

router.post('/upload', upload.single('file'), async (req, res) => {
  try {
    const fileData = {
      filename: req.file.key,
      originalname: req.file.originalname,
      mimetype: req.file.mimetype,
      size: req.file.size,
      url: req.file.location,
      uploadedby: req.user.id
    };
    const file = await FileService.saveFile(fileData);
    res.status(201).json(file);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

router.get('/', async (req, res) => {
  try {
    const files = await FileService.getFilesByUser(req.user.id);
    res.json(files);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

module.exports = router;

```

### models.js

```js
const express = require('express');
const router = express.Router();
const DataModelingService = require('../services/dataModelingService');

router.post('/models', async (req, res, next) => {
  try {
    const { name, fields } = req.body;
    await DataModelingService.saveModel({ name, fields });
    res.status(201).json({ message: 'Model saved successfully' });
  } catch (error) {
    next(error);
  }
});

router.get('/models', async (req, res, next) => {
  try {
    const models = await DataModelingService.getModels();
    res.json(models);
  } catch (error) {
    next(error);
  }
});

module.exports = router;

```

### workflowRoutes.js

```js
// src/routes/workflowRoutes.js
const express = require('express');
const WorkflowModel = require('../models/Workflow');
const WorkflowService = require('../services/workflowService');

const router = express.Router();

router.post('/', async (req, res) => {
  try {
    const workflow = await WorkflowModel.createWorkflow(req.body);
    res.status(201).json(workflow);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

router.get('/', async (req, res) => {
  try {
    const workflows = await WorkflowModel.getWorkflows();
    res.json(workflows);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

router.post('/:id/execute', async (req, res) => {
  try {
    const workflow = await WorkflowModel.getWorkflowById(req.params.id);
    if (!workflow) {
      return res.status(404).json({ message: 'Workflow not found' });
    }
    const result = await WorkflowService.executeWorkflow(workflow, req.body);
    res.json(result);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

module.exports = router;

```

###### services

### apiGenerationService.js

```js
// src/services/apiGenerationService.js
const express = require('express');
const { query } = require('../utils/db');

class APIGenerationService {
  generateAPI(modelName, fields) {
    const router = express.Router();

    // Create
    router.post('/', async (req, res) => {
      try {
        const keys = Object.keys(req.body);
        const values = Object.values(req.body);
        const sqlQuery = `INSERT INTO ${modelName} (${keys.join(', ')}) VALUES (${values.map((_, i) => '$' + (i + 1)).join(', ')}) RETURNING *`;
        const result = await query(sqlQuery, values);
        res.status(201).json(result.rows[0]);
      } catch (error) {
        res.status(400).json({ error: error.message });
      }
    });

    // Read all
    router.get('/', async (req, res) => {
      try {
        const result = await query(`SELECT * FROM ${modelName}`);
        res.json(result.rows);
      } catch (error) {
        res.status(500).json({ error: error.message });
      }
    });

    // Read one
    router.get('/:id', async (req, res) => {
      try {
        const result = await query(`SELECT * FROM ${modelName} WHERE id = $1`, [req.params.id]);
        if (result.rows.length === 0) return res.status(404).json({ message: 'Document not found' });
        res.json(result.rows[0]);
      } catch (error) {
        res.status(500).json({ error: error.message });
      }
    });

    // Update
    router.put('/:id', async (req, res) => {
      try {
        const keys = Object.keys(req.body);
        const values = Object.values(req.body);
        const sqlQuery = `UPDATE ${modelName} SET ${keys.map((key, i) => `${key} = $${i + 1}`).join(', ')} WHERE id = $${keys.length + 1} RETURNING *`;
        const result = await query(sqlQuery, [...values, req.params.id]);
        if (result.rows.length === 0) return res.status(404).json({ message: 'Document not found' });
        res.json(result.rows[0]);
      } catch (error) {
        res.status(400).json({ error: error.message });
      }
    });

    // Delete
    router.delete('/:id', async (req, res) => {
      try {
        const result = await query(`DELETE FROM ${modelName} WHERE id = $1 RETURNING *`, [req.params.id]);
        if (result.rows.length === 0) return res.status(404).json({ message: 'Document not found' });
        res.json({ message: 'Document deleted successfully' });
      } catch (error) {
        res.status(500).json({ error: error.message });
      }
    });

    return router;
  }
}

module.exports = new APIGenerationService();

```

### emailService.js

```js
const nodemailer = require('nodemailer');
const handlebars = require('handlebars');
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

class EmailService {
  constructor() {
    this.transporter = nodemailer.createTransport({
      host: process.env.SMTP_HOST,
      port: process.env.SMTP_PORT,
      auth: {
        user: process.env.SMTP_USER,
        pass: process.env.SMTP_PASS
      }
    });
  }

  async sendEmail(to, subject, template, context) {
    const compiledTemplate = handlebars.compile(template);
    const html = compiledTemplate(context);

    const mailOptions = {
      from: process.env.EMAIL_FROM,
      to,
      subject,
      html
    };

    await this.transporter.sendMail(mailOptions);
  }

  async saveTemplate(templateData) {
    const query = 'INSERT INTO email_templates(name, subject, body) VALUES($1, $2, $3) RETURNING *';
    const values = [templateData.name, templateData.subject, templateData.body];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getTemplates() {
    const result = await pool.query('SELECT * FROM email_templates');
    return result.rows;
  }

  async getTemplateByName(name) {
    const result = await pool.query('SELECT * FROM email_templates WHERE name = $1', [name]);
    return result.rows[0];
  }
}

module.exports = new EmailService();

```

### fileService.js

```js
const aws = require('aws-sdk');
const multer = require('multer');
const multerS3 = require('multer-s3');
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

aws.config.update({
  secretAccessKey: process.env.AWS_SECRET_ACCESS_KEY,
  accessKeyId: process.env.AWS_ACCESS_KEY_ID,
  region: process.env.AWS_REGION
});

const s3 = new aws.S3();

const upload = multer({
  storage: multerS3({
    s3: s3,
    bucket: process.env.S3_BUCKET,
    acl: 'public-read',
    metadata: function (req, file, cb) {
      cb(null, {fieldName: file.fieldname});
    },
    key: function (req, file, cb) {
      cb(null, Date.now().toString() + '-' + file.originalname)
    }
  })
});

class FileService {
  async saveFile(fileData) {
    const query = 'INSERT INTO files(filename, originalname, mimetype, size, url, uploadedby) VALUES($1, $2, $3, $4, $5, $6) RETURNING *';
    const values = [fileData.filename, fileData.originalname, fileData.mimetype, fileData.size, fileData.url, fileData.uploadedby];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getFilesByUser(userId) {
    const query = 'SELECT * FROM files WHERE uploadedby = $1';
    const result = await pool.query(query, [userId]);
    return result.rows;
  }
}

module.exports = { upload, FileService: new FileService() };

```

### workflowService.js

```js
// src/services/workflowService.js
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});
const axios = require('axios');

class WorkflowService {
  async executeWorkflow(workflowDefinition, triggerData) {
    let currentData = triggerData;

    for (const step of workflowDefinition.steps) {
      currentData = await this.executeStep(step, currentData);
    }

    return currentData;
  }

  async executeStep(step, data) {
    switch (step.type) {
      case 'transform':
        return this.transformData(step.transformation, data);
      case 'apiCall':
        return this.makeAPICall(step.apiDetails, data);
      case 'condition':
        return this.evaluateCondition(step.condition, data) ? data : null;
      default:
        throw new Error(`Unknown step type: ${step.type}`);
    }
  }

  transformData(transformation, data) {
    const result = {};
    for (const [key, value] of Object.entries(transformation)) {
      result[key] = value.split('.').reduce((o, i) => o[i], data);
    }
    return result;
  }

  async makeAPICall(apiDetails, data) {
    const { url, method, body } = apiDetails;
    const response = await axios({ method, url, data: body });
    return response.data;
  }

  evaluateCondition(condition, data) {
    const { left, operator, right } = condition;
    const leftValue = left.split('.').reduce((o, i) => o[i], data);
    switch (operator) {
      case '==':
        return leftValue == right;
      case '!=':
        return leftValue != right;
      case '>':
        return leftValue > right;
      case '<':
        return leftValue < right;
      default:
        throw new Error(`Unknown operator: ${operator}`);
    }
  }
}

module.exports = new WorkflowService();

```

###### utils

### apiResponse.js

```js
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

```

##### tests

###### integration

### api.test.js

```js
const request = require('supertest');
const app = require('../../src/app');

describe('API Tests', () => {
  it('should return 200 OK for GET /', async () => {
    const res = await request(app).get('/');
    expect(res.statusCode).toBe(200);
  });
});

```

###### unit

### sample.test.js

```js
describe('Sample Test', () => {
  it('should pass', () => {
    expect(true).toBe(true);
  });
});

```

### README.md

```md
## docs
```
```
## git

### Node

### LICENSE

```
MIT License

Copyright (c) 2024 Haris Babic

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

```

## projects

### ultimate

### .env

```

```

#### .github

### .gitignore

```
node_modules/
.env
*.log
build/

```

#### client

### .babelrc

```
{
  "presets": [
    ["@babel/preset-env", {
      "targets": {
        "browsers": [">0.25%", "not ie 11", "not op_mini all"]
      }
    }],
    "@babel/preset-react"
  ],
  "plugins": [
    "@babel/plugin-proposal-class-properties",
    "@babel/plugin-transform-runtime"
  ]
}

```

### .gitignore

```
# See https://help.github.com/articles/ignoring-files/ for more about ignoring files.

# dependencies
/node_modules
/.pnp
.pnp.js

# testing
/coverage

# production
/build

# misc
.DS_Store
.env.local
.env.development.local
.env.test.local
.env.production.local

npm-debug.log*
yarn-debug.log*
yarn-error.log*

*storybook.log
```

##### .storybook

### main.js

```js
/** @type { import('@storybook/react-webpack5').StorybookConfig } */
const config = {
  stories: ["../src/**/*.mdx", "../src/**/*.stories.@(js|jsx|mjs|ts|tsx)"],
  addons: [
    "@storybook/preset-create-react-app",
    "@storybook/addon-onboarding",
    "@storybook/addon-links",
    "@storybook/addon-essentials",
    "@chromatic-com/storybook",
    "@storybook/addon-interactions",
  ],
  framework: {
    name: "@storybook/react-webpack5",
    options: {},
  },
  staticDirs: ["..\\public"],
};
export default config;

```

### preview.js

```js
/** @type { import('@storybook/react').Preview } */
const preview = {
  parameters: {
    controls: {
      matchers: {
        color: /(background|color)$/i,
        date: /Date$/i,
      },
    },
  },
};

export default preview;

```

### components.json

```json
{
  "style": "new-york",
  "rsc": false,
  "tsx": true,
  "tailwind": {
    "config": "tailwind.config.js",
    "css": "src/index.css",
    "baseColor": "slate",
    "cssVariables": true
  },
  "aliases": {
    "components": "@/components",
    "utils": "@/lib/utils"
  }
}
```

### package.json

```json
{
  "name": "client",
  "version": "0.1.0",
  "private": true,
  "dependencies": {
    "@radix-ui/react-icons": "^1.3.0",
    "@reduxjs/toolkit": "^2.2.7",
    "@testing-library/jest-dom": "^5.17.0",
    "@testing-library/react": "^13.4.0",
    "@testing-library/user-event": "^13.5.0",
    "axios": "^1.7.3",
    "class-variance-authority": "^0.7.0",
    "clsx": "^2.1.1",
    "framer-motion": "^11.3.21",
    "i18next": "^23.12.2",
    "i18next-browser-languagedetector": "^8.0.0",
    "i18next-http-backend": "^2.5.2",
    "react": "^18.3.1",
    "react-dom": "^18.3.1",
    "react-helmet-async": "^2.0.5",
    "react-i18next": "^15.0.0",
    "react-icons": "^4.12.0",
    "react-redux": "^9.1.2",
    "react-router-dom": "^6.26.0",
    "react-scripts": "5.0.1",
    "redux": "^5.0.1",
    "sass": "^1.77.8",
    "styled-components": "^5.3.11",
    "tailwind-merge": "^2.4.0",
    "tailwindcss-animate": "^1.0.7",
    "web-vitals": "^2.1.4",
    "workbox-window": "^7.1.0"
  },
  "scripts": {
    "start": "react-scripts start",
    "build": "react-scripts build",
    "test": "react-scripts test",
    "eject": "react-scripts eject",
    "sass": "sass src/styles/main.scss src/styles/main.css",
    "sass:watch": "sass src/styles/main.scss src/styles/main.css --watch",
    "generate-sitemap": "node scripts/generate-sitemap.js",
    "storybook": "storybook dev -p 6006",
    "build-storybook": "storybook build"
  },
  "eslintConfig": {
    "extends": [
      "react-app",
      "react-app/jest",
      "plugin:storybook/recommended"
    ]
  },
  "browserslist": {
    "production": [
      ">0.2%",
      "not dead",
      "not op_mini all"
    ],
    "development": [
      "last 1 chrome version",
      "last 1 firefox version",
      "last 1 safari version"
    ]
  },
  "devDependencies": {
    "@chromatic-com/storybook": "^1.6.1",
    "@storybook/addon-essentials": "^8.2.7",
    "@storybook/addon-interactions": "^8.2.7",
    "@storybook/addon-links": "^8.2.7",
    "@storybook/addon-onboarding": "^8.2.7",
    "@storybook/blocks": "^8.2.7",
    "@storybook/preset-create-react-app": "^8.2.7",
    "@storybook/react": "^8.2.7",
    "@storybook/react-webpack5": "^8.2.7",
    "@storybook/test": "^8.2.7",
    "autoprefixer": "^10.4.20",
    "eslint-plugin-storybook": "^0.8.0",
    "postcss": "^8.4.41",
    "prop-types": "^15.8.1",
    "storybook": "^8.2.7",
    "tailwindcss": "^3.4.7",
    "webpack": "^5.93.0",
    "workbox-webpack-plugin": "^7.1.0"
  }
}

```

### postcss.config.js

```js
module.exports = {
  plugins: {
    tailwindcss: {},
    autoprefixer: {},
  },
}

```

##### public

### index.html

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <link rel="icon" href="%PUBLIC_URL%/favicon.ico" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="theme-color" content="#000000" />
    <meta
      name="description"
      content="Web site created using create-react-app"
    />
    <link rel="apple-touch-icon" href="%PUBLIC_URL%/logo192.png" />
    <!--
      manifest.json provides metadata used when your web app is installed on a
      user's mobile device or desktop. See https://developers.google.com/web/fundamentals/web-app-manifest/
    -->
    <link rel="manifest" href="%PUBLIC_URL%/manifest.json" />
    <!--
      Notice the use of %PUBLIC_URL% in the tags above.
      It will be replaced with the URL of the `public` folder during the build.
      Only files inside the `public` folder can be referenced from the HTML.

      Unlike "/favicon.ico" or "favicon.ico", "%PUBLIC_URL%/favicon.ico" will
      work correctly both with client-side routing and a non-root public URL.
      Learn how to configure a non-root public URL by running `npm run build`.
    -->
    <title>React App</title>
    <link rel="manifest" href="%PUBLIC_URL%/manifest.json" />
    <meta name="theme-color" content="#000000" />
  </head>
  <body>
    <noscript>You need to enable JavaScript to run this app.</noscript>
    <div id="root"></div>
    <!--
      This HTML file is a template.
      If you open it directly in the browser, you will see an empty page.

      You can add webfonts, meta tags, or analytics to this file.
      The build step will place the bundled scripts into the <body> tag.

      To begin the development, run `npm start` or `yarn start`.
      To create a production bundle, use `npm run build` or `yarn build`.
    -->
  </body>
</html>

```

###### locales

####### en

### translation.json

```json
{"hello": "Hello", "welcome": "Welcome to our app!"}

```

####### es

### translation.json

```json
{"hello": "Hola", "welcome": "¡Bienvenido a nuestra aplicación!"}

```

### manifest.json

```json
{
  "short_name": "Your App",
  "name": "Your Application Name",
  "icons": [
    {
      "src": "favicon.ico",
      "sizes": "64x64 32x32 24x24 16x16",
      "type": "image/x-icon"
    },
    {
      "src": "logo192.png",
      "type": "image/png",
      "sizes": "192x192"
    },
    {
      "src": "logo512.png",
      "type": "image/png",
      "sizes": "512x512"
    }
  ],
  "start_url": ".",
  "display": "standalone",
  "theme_color": "#000000",
  "background_color": "#ffffff"
}

```

### sitemap.xml

```xml
<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">

  <url>
    <loc>http://localhost:3000/</loc>
    <lastmod>2024-08-07</lastmod>
    <changefreq>weekly</changefreq>
    <priority>0.8</priority>
  </url>

  <url>
    <loc>http://localhost:3000/register</loc>
    <lastmod>2024-08-07</lastmod>
    <changefreq>weekly</changefreq>
    <priority>0.8</priority>
  </url>

</urlset>
```

### README.md

```md
# Getting Started with Create React App

This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).

## Available Scripts

In the project directory, you can run:

### `npm start`

Runs the app in the development mode.\
Open [http://localhost:3000](http://localhost:3000) to view it in your browser.

The page will reload when you make changes.\
You may also see any lint errors in the console.

### `npm test`

Launches the test runner in the interactive watch mode.\
See the section about [running tests](https://facebook.github.io/create-react-app/docs/running-tests) for more information.

### `npm run build`

Builds the app for production to the `build` folder.\
It correctly bundles React in production mode and optimizes the build for the best performance.

The build is minified and the filenames include the hashes.\
Your app is ready to be deployed!

See the section about [deployment](https://facebook.github.io/create-react-app/docs/deployment) for more information.

### `npm run eject`

**Note: this is a one-way operation. Once you `eject`, you can't go back!**

If you aren't satisfied with the build tool and configuration choices, you can `eject` at any time. This command will remove the single build dependency from your project.

Instead, it will copy all the configuration files and the transitive dependencies (webpack, Babel, ESLint, etc) right into your project so you have full control over them. All of the commands except `eject` will still work, but they will point to the copied scripts so you can tweak them. At this point you're on your own.

You don't have to ever use `eject`. The curated feature set is suitable for small and middle deployments, and you shouldn't feel obligated to use this feature. However we understand that this tool wouldn't be useful if you couldn't customize it when you are ready for it.

## Learn More

You can learn more in the [Create React App documentation](https://facebook.github.io/create-react-app/docs/getting-started).

To learn React, check out the [React documentation](https://reactjs.org/).

### Code Splitting

This section has moved here: [https://facebook.github.io/create-react-app/docs/code-splitting](https://facebook.github.io/create-react-app/docs/code-splitting)

### Analyzing the Bundle Size

This section has moved here: [https://facebook.github.io/create-react-app/docs/analyzing-the-bundle-size](https://facebook.github.io/create-react-app/docs/analyzing-the-bundle-size)

### Making a Progressive Web App

This section has moved here: [https://facebook.github.io/create-react-app/docs/making-a-progressive-web-app](https://facebook.github.io/create-react-app/docs/making-a-progressive-web-app)

### Advanced Configuration

This section has moved here: [https://facebook.github.io/create-react-app/docs/advanced-configuration](https://facebook.github.io/create-react-app/docs/advanced-configuration)

### Deployment

This section has moved here: [https://facebook.github.io/create-react-app/docs/deployment](https://facebook.github.io/create-react-app/docs/deployment)

### `npm run build` fails to minify

This section has moved here: [https://facebook.github.io/create-react-app/docs/troubleshooting#npm-run-build-fails-to-minify](https://facebook.github.io/create-react-app/docs/troubleshooting#npm-run-build-fails-to-minify)

```

##### scripts

### generate-sitemap.js

```js
const fs = require('fs');
const path = require('path');
require('dotenv').config({ path: path.join(__dirname, '../../.env') });

const baseUrl = process.env.BASE_URL || `http://localhost:${process.env.PORT || 3000}`;
const publicDir = path.join(__dirname, '../public');

const getPages = () => {
  // This is a simplified example. In reality, you'd want to
  // generate this list based on your actual routes.
  return ['', 'register'];
};

const generateSitemap = () => {
  const pages = getPages();
  const sitemap = `<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
  ${pages.map(page => `
  <url>
    <loc>${baseUrl}/${page}</loc>
    <lastmod>${new Date().toISOString().split('T')[0]}</lastmod>
    <changefreq>weekly</changefreq>
    <priority>0.8</priority>
  </url>
  `).join('')}
</urlset>`;

  fs.writeFileSync(path.join(publicDir, 'sitemap.xml'), sitemap);
  console.log('Sitemap generated successfully');

  // Generate robots.txt
  const robotsTxt = `User-agent: *
Allow: /

Sitemap: ${baseUrl}/sitemap.xml
`;
  fs.writeFileSync(path.join(publicDir, 'robots.txt'), robotsTxt);
  console.log('robots.txt generated successfully');
};

generateSitemap();

```

##### src

###### @

####### components

######## ui

### alert.tsx

```tsx
import * as React from "react"
import { cva, VariantProps } from "class-variance-authority"
import { cn } from "@/lib/utils"

const alertVariants = cva(
  "relative w-full rounded-lg border p-4 [&>svg~*]:pl-7 [&>svg+div]:translate-y-[-3px] [&>svg]:absolute [&>svg]:left-4 [&>svg]:top-4 [&>svg]:text-foreground",
  {
    variants: {
      variant: {
        default: "bg-background text-foreground",
        destructive:
          "border-destructive/50 text-destructive dark:border-destructive [&>svg]:text-destructive",
      },
    },
    defaultVariants: {
      variant: "default",
    },
  }
)

const Alert = React.forwardRef<
  HTMLDivElement,
  React.HTMLAttributes<HTMLDivElement> & VariantProps<typeof alertVariants>
>(({ className, variant, ...props }, ref) => (
  <div
    ref={ref}
    role="alert"
    className={cn(alertVariants({ variant }), className)}
    {...props}
  />
))
Alert.displayName = "Alert"

const AlertTitle = React.forwardRef<
  HTMLParagraphElement,
  React.HTMLAttributes<HTMLHeadingElement>
>(({ className, ...props }, ref) => (
  <h5
    ref={ref}
    className={cn("mb-1 font-medium leading-none tracking-tight", className)}
    {...props}
  />
))
AlertTitle.displayName = "AlertTitle"

const AlertDescription = React.forwardRef<
  HTMLParagraphElement,
  React.HTMLAttributes<HTMLParagraphElement>
>(({ className, ...props }, ref) => (
  <div
    ref={ref}
    className={cn("text-sm [&_p]:leading-relaxed", className)}
    {...props}
  />
))
AlertDescription.displayName = "AlertDescription"

export { Alert, AlertTitle, AlertDescription }

```

####### lib

### utils.ts

```ts
import { type ClassValue, clsx } from "clsx"
import { twMerge } from "tailwind-merge"

export function cn(...inputs: ClassValue[]) {
  return twMerge(clsx(inputs))
}

```

### App.css

```css
.App {
  text-align: center;
}

.App-logo {
  height: 40vmin;
  pointer-events: none;
}

@media (prefers-reduced-motion: no-preference) {
  .App-logo {
    animation: App-logo-spin infinite 20s linear;
  }
}

.App-header {
  background-color: #282c34;
  min-height: 100vh;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  font-size: calc(10px + 2vmin);
  color: white;
}

.App-link {
  color: #61dafb;
}

@keyframes App-logo-spin {
  from {
    transform: rotate(0deg);
  }
  to {
    transform: rotate(360deg);
  }
}

```

### App.js

```js
import React from 'react';

const App = () => {
  return (
    <div>
      {/* Your app content here */}
    </div>
  );
};

export default App;

```

### App.test.js

```js
import { render, screen } from '@testing-library/react';
import App from './App';

test('renders learn react link', () => {
  render(<App />);
  const linkElement = screen.getByText(/learn react/i);
  expect(linkElement).toBeInTheDocument();
});

```

###### components

### AnimatedBox.js

```js
import React from 'react';
import { motion } from 'framer-motion';

const AnimatedBox = () => (
  <motion.div
    initial={{ opacity: 0, scale: 0.5 }}
    animate={{ opacity: 1, scale: 1 }}
    transition={{ duration: 0.5 }}
    whileHover={{ scale: 1.1 }}
    whileTap={{ scale: 0.9 }}
    style={{
      width: 100,
      height: 100,
      background: 'blue',
      borderRadius: 10,
    }}
  />
);

export default AnimatedBox;

```

####### Dashboard

### Dashboard.js

```js
import React, { useState, useEffect } from 'react';
import DynamicTable from '../DynamicUI/DynamicTable';

const Dashboard = () => {
  const [dashboardData, setDashboardData] = useState({});

  useEffect(() => {
    // Fetch dashboard data from API
    const fetchDashboardData = async () => {
      // Replace with actual API call
      const response = await fetch('/api/dashboard');
      const data = await response.json();
      setDashboardData(data);
    };

    fetchDashboardData();
  }, []);

  return (
    <div>
      <h1>Dashboard</h1>
      {Object.entries(dashboardData).map(([key, value]) => (
        <div key={key}>
          <h2>{key}</h2>
          {Array.isArray(value) ? (
            <DynamicTable
              data={value}
              columns={Object.keys(value[0]).map(col => ({ key: col, label: col }))}
            />
          ) : (
            <p>{value}</p>
          )}
        </div>
      ))}
    </div>
  );
};

export default Dashboard;

```

### DashboardWidget.js

```js
import React from 'react';

const DashboardWidget = ({ title, value, icon }) => {
  return (
    <div className="dashboard-widget">
      <div className="widget-icon">{icon}</div>
      <div className="widget-content">
        <h3>{title}</h3>
        <p>{value}</p>
      </div>
    </div>
  );
};

export default DashboardWidget;

```

####### DynamicUI

### DynamicForm.js

```js
import React from 'react';
import { useForm } from 'react-hook-form';

const DynamicForm = ({ fields, onSubmit }) => {
  const { register, handleSubmit, formState: { errors } } = useForm();

  const renderField = (field) => {
    switch (field.type) {
      case 'text':
      case 'email':
      case 'number':
        return (
          <input
            type={field.type}
            {...register(field.name, field.validation)}
            placeholder={field.placeholder}
          />
        );
      case 'select':
        return (
          <select {...register(field.name, field.validation)}>
            {field.options.map((option, index) => (
              <option key={index} value={option.value}>
                {option.label}
              </option>
            ))}
          </select>
        );
      case 'textarea':
        return (
          <textarea
            {...register(field.name, field.validation)}
            placeholder={field.placeholder}
          />
        );
      default:
        return null;
    }
  };

  return (
    <form onSubmit={handleSubmit(onSubmit)}>
      {fields.map((field, index) => (
        <div key={index}>
          <label>{field.label}</label>
          {renderField(field)}
          {errors[field.name] && <span>{errors[field.name].message}</span>}
        </div>
      ))}
      <button type="submit">Submit</button>
    </form>
  );
};

export default DynamicForm;

```

### DynamicTable.js

```js
import React from 'react';

const DynamicTable = ({ data, columns }) => {
  return (
    <table>
      <thead>
        <tr>
          {columns.map((column, index) => (
            <th key={index}>{column.label}</th>
          ))}
        </tr>
      </thead>
      <tbody>
        {data.map((row, rowIndex) => (
          <tr key={rowIndex}>
            {columns.map((column, columnIndex) => (
              <td key={columnIndex}>{row[column.key]}</td>
            ))}
          </tr>
        ))}
      </tbody>
    </table>
  );
};

export default DynamicTable;

```

### FocusTrap.js

```js
import React, { useRef, useEffect } from 'react';

const FocusTrap = ({ children }) => {
  const trapRef = useRef(null);

  useEffect(() => {
    const trapElement = trapRef.current;
    const focusableElements = trapElement.querySelectorAll(
      'button, [href], input, select, textarea, [tabindex]:not([tabindex="-1"])'
    );
    const firstElement = focusableElements[0];
    const lastElement = focusableElements[focusableElements.length - 1];

    const handleKeyDown = (e) => {
      if (e.key === 'Tab') {
        if (e.shiftKey && document.activeElement === firstElement) {
          e.preventDefault();
          lastElement.focus();
        } else if (!e.shiftKey && document.activeElement === lastElement) {
          e.preventDefault();
          firstElement.focus();
        }
      }
    };

    trapElement.addEventListener('keydown', handleKeyDown);
    return () => trapElement.removeEventListener('keydown', handleKeyDown);
  }, []);

  return <div ref={trapRef}>{children}</div>;
};

export default FocusTrap;

```

### LanguageSwitcher.js

```js
import React from 'react';
import { useTranslation } from 'react-i18next';

const LanguageSwitcher = () => {
  const { i18n } = useTranslation();

  const changeLanguage = (lng) => {
    i18n.changeLanguage(lng);
  };

  return (
    <div>
      <button onClick={() => changeLanguage('en')}>English</button>
      <button onClick={() => changeLanguage('es')}>Español</button>
    </div>
  );
};

export default LanguageSwitcher;

```

####### Noloco

### Button.js

```js
import styled from 'styled-components';

const Button = styled.button`
  background-color: ${props => props.theme.colors.secondary};
  color: white;
  border: none;
  padding: 10px 20px;
  border-radius: 4px;
  font-weight: 600;
  cursor: pointer;
  transition: background-color 0.3s ease;

  &:hover {
    background-color: ${props => props.theme.colors.primary};
  }
`;

export default Button;

```

### Card.js

```js
import styled from 'styled-components';

const Card = styled.div`
  background-color: white;
  border-radius: 8px;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  padding: 20px;
  margin-bottom: 20px;
`;

export default Card;

```

### Container.js

```js
import styled from 'styled-components';

const Container = styled.div`
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 20px;
`;

export default Container;

```

### ResponsiveGrid.js

```js
import styled from 'styled-components';
import { mediaQueries } from '../styles/breakpoints';

const ResponsiveGrid = styled.div`
  display: grid;
  grid-template-columns: 1fr;
  gap: 1rem;

  ${mediaQueries.tablet} {
    grid-template-columns: repeat(2, 1fr);
  }

  ${mediaQueries.desktop} {
    grid-template-columns: repeat(3, 1fr);
  }

  ${mediaQueries.largeDesktop} {
    grid-template-columns: repeat(4, 1fr);
  }
`;

export default ResponsiveGrid;

```

### SEO.js

```js
import React from 'react';
import { Helmet } from 'react-helmet-async';

const SEO = ({ title, description, keywords, image, url }) => (
  <Helmet>
    <title>{title}</title>
    <meta name="description" content={description} />
    <meta name="keywords" content={keywords} />
    <meta property="og:title" content={title} />
    <meta property="og:description" content={description} />
    <meta property="og:image" content={image} />
    <meta property="og:url" content={url} />
    <meta property="og:type" content="website" />
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:title" content={title} />
    <meta name="twitter:description" content={description} />
    <meta name="twitter:image" content={image} />
    <link rel="canonical" href={url} />
  </Helmet>
);

export default SEO;

```

###### i18n

### i18n.js

```js
import i18n from 'i18next';
import { initReactI18next } from 'react-i18next';
import Backend from 'i18next-http-backend';
import LanguageDetector from 'i18next-browser-languagedetector';

i18n
  .use(Backend)
  .use(LanguageDetector)
  .use(initReactI18next)
  .init({
    fallbackLng: 'en',
    debug: process.env.NODE_ENV !== 'production',
    interpolation: {
      escapeValue: false,
    },
    backend: {
      loadPath: '/locales/{{lng}}/{{ns}}.json',
    },
  });

export default i18n;

```

### index.css

```css
@tailwind base;
@tailwind components;
@tailwind utilities;

@layer base {
  :root {
    --background: 0 0% 100%;
    --foreground: 222.2 84% 4.9%;
    --card: 0 0% 100%;
    --card-foreground: 222.2 84% 4.9%;
    --popover: 0 0% 100%;
    --popover-foreground: 222.2 84% 4.9%;
    --primary: 222.2 47.4% 11.2%;
    --primary-foreground: 210 40% 98%;
    --secondary: 210 40% 96.1%;
    --secondary-foreground: 222.2 47.4% 11.2%;
    --muted: 210 40% 96.1%;
    --muted-foreground: 215.4 16.3% 46.9%;
    --accent: 210 40% 96.1%;
    --accent-foreground: 222.2 47.4% 11.2%;
    --destructive: 0 84.2% 60.2%;
    --destructive-foreground: 210 40% 98%;
    --border: 214.3 31.8% 91.4%;
    --input: 214.3 31.8% 91.4%;
    --ring: 222.2 84% 4.9%;
    --radius: 0.5rem;
    --chart-1: 12 76% 61%;
    --chart-2: 173 58% 39%;
    --chart-3: 197 37% 24%;
    --chart-4: 43 74% 66%;
    --chart-5: 27 87% 67%;
  }

  .dark {
    --background: 222.2 84% 4.9%;
    --foreground: 210 40% 98%;
    --card: 222.2 84% 4.9%;
    --card-foreground: 210 40% 98%;
    --popover: 222.2 84% 4.9%;
    --popover-foreground: 210 40% 98%;
    --primary: 210 40% 98%;
    --primary-foreground: 222.2 47.4% 11.2%;
    --secondary: 217.2 32.6% 17.5%;
    --secondary-foreground: 210 40% 98%;
    --muted: 217.2 32.6% 17.5%;
    --muted-foreground: 215 20.2% 65.1%;
    --accent: 217.2 32.6% 17.5%;
    --accent-foreground: 210 40% 98%;
    --destructive: 0 62.8% 30.6%;
    --destructive-foreground: 210 40% 98%;
    --border: 217.2 32.6% 17.5%;
    --input: 217.2 32.6% 17.5%;
    --ring: 212.7 26.8% 83.9%;
    --chart-1: 220 70% 50%;
    --chart-2: 160 60% 45%;
    --chart-3: 30 80% 55%;
    --chart-4: 280 65% 60%;
    --chart-5: 340 75% 55%;
  }
}

@layer base {
  * {
    @apply border-border;
  }
  body {
    @apply bg-background text-foreground;
  }
}
```

### index.js

```js
import React from 'react';
import ReactDOM from 'react-dom/client';
import { Provider } from 'react-redux';
import store from './redux/store';
import App from './App';
import './index.css';

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <React.StrictMode>
    <Provider store={store}>
      <App />
    </Provider>
  </React.StrictMode>
);

```

###### layouts

### DashboardLayout.js

```js
import React from 'react';
import styled from 'styled-components';

const DashboardWrapper = styled.div`
  display: flex;
  flex-direction: column;
  min-height: 100vh;
`;

const Header = styled.header`
  padding: 1rem;
  background-color: ${({ theme }) => theme.colors.background};
`;

const Main = styled.main`
  flex: 1;
  padding: 1rem;
`;

const Footer = styled.footer`
  padding: 1rem;
  background-color: ${({ theme }) => theme.colors.background};
`;

const DashboardLayout = ({ children }) => (
  <DashboardWrapper>
    <Header>Header</Header>
    <Main>{children}</Main>
    <Footer>Footer</Footer>
  </DashboardWrapper>
);

export default DashboardLayout;

```

###### redux

####### slices

### exampleSlice.js

```js
import { createSlice } from '@reduxjs/toolkit';

const initialState = {
  value: 0,
};

const exampleSlice = createSlice({
  name: 'example',
  initialState,
  reducers: {
    increment: (state) => {
      state.value += 1;
    },
    decrement: (state) => {
      state.value -= 1;
    },
  },
});

export const { increment, decrement } = exampleSlice.actions;
export default exampleSlice.reducer;

```

### index.js

```js
import { combineReducers } from 'redux';
import exampleSlice from './exampleSlice';

const rootReducer = combineReducers({
  example: exampleSlice,
});

export default rootReducer;

```

### store.js

```js
import { configureStore } from '@reduxjs/toolkit';
import rootReducer from './slices';

const store = configureStore({
  reducer: rootReducer,
  devTools: process.env.NODE_ENV !== 'production',
});

export default store;

```

### reportWebVitals.js

```js
const reportWebVitals = onPerfEntry => {
  if (onPerfEntry && onPerfEntry instanceof Function) {
    import('web-vitals').then(({ getCLS, getFID, getFCP, getLCP, getTTFB }) => {
      getCLS(onPerfEntry);
      getFID(onPerfEntry);
      getFCP(onPerfEntry);
      getLCP(onPerfEntry);
      getTTFB(onPerfEntry);
    });
  }
};

export default reportWebVitals;

```

###### services

### apiService.js

```js
import axios from 'axios';

const API_BASE_URL = process.env.REACT_APP_API_BASE_URL || 'http://localhost:3000/api';

const apiService = {
  // Previous methods remain the same

  // Add a new method for handling file uploads
  upload: async (endpoint, file, onUploadProgress) => {
    const formData = new FormData();
    formData.append('file', file);

    try {
      const response = await axios.post(`${API_BASE_URL}/${endpoint}`, formData, {
        headers: {
          'Content-Type': 'multipart/form-data'
        },
        onUploadProgress
      });
      return response.data;
    } catch (error) {
      console.error('Error uploading file:', error);
      throw error;
    }
  },

  // Add a method for cancellable requests
  getCancellable: (endpoint) => {
    const source = axios.CancelToken.source();
    const promise = axios.get(`${API_BASE_URL}/${endpoint}`, {
      cancelToken: source.token
    });
    return { promise, cancel: () => source.cancel('Request cancelled') };
  }
};

export default apiService;

```

### serviceWorkerRegistration.js

```js
import { Workbox } from 'workbox-window';

export function register() {
  if ('serviceWorker' in navigator) {
    const wb = new Workbox('/service-worker.js');

    wb.addEventListener('installed', event => {
      if (event.isUpdate) {
        if (confirm('New content is available! Click OK to refresh.')) {
          window.location.reload();
        }
      }
    });

    wb.register();
  }
}

```

### setupTests.js

```js
// jest-dom adds custom jest matchers for asserting on DOM nodes.
// allows you to do things like:
// expect(element).toHaveTextContent(/react/i)
// learn more: https://github.com/testing-library/jest-dom
import '@testing-library/jest-dom';

```

###### stories

####### assets

### avif-test-image.avif

```avif
    ftypavif    avifmif1miafMA1B   �meta       (hdlr        pict            libavif    pitm        iloc    D          #   (iinf        infe      av01Color    jiprp   Kipco   ispe           pixi       av1C�     colrnclx   �   ipma        �  +mdat 

"!��4 2�L��4Cxp� ���(Zyf�M;��ʾ�$��������r�b�F�s�*t�e�>7��혠�ꪙ3so���Z�r���K���O8\���J������(�6�FՖ��o���P�PDf�]�Tڟ���haS8,��_v�E<�{th0&td�3摞X[��_��r��x��V���H-��p������Ua���*.zy���;�<�M�:��	��s!G	-
<�4_y?>�
{�0�_�9ϻ��U(m\V��㳱S�B#�}&�J���&5
6���8Ε�ӹ�&c�<Q<ԗ۴����F�O���:��E��p:�36v��b�����^ŉdv���g@����o�L�4X/���d*
r�OuPgƩ7�^@ƣ�ᥳ"Ǥ�=��{��E���U\z��o�cC���(e��|���Qĥ��\8�S��a� �A}�[lI�N�4�����R��.���Ѽ�	˂����􊪠��������cC�6���O��� ��W����9w�nqcIC_y�
```

### button.css

```css
.storybook-button {
  font-family: 'Nunito Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif;
  font-weight: 700;
  border: 0;
  border-radius: 3em;
  cursor: pointer;
  display: inline-block;
  line-height: 1;
}
.storybook-button--primary {
  color: white;
  background-color: #1ea7fd;
}
.storybook-button--secondary {
  color: #333;
  background-color: transparent;
  box-shadow: rgba(0, 0, 0, 0.15) 0px 0px 0px 1px inset;
}
.storybook-button--small {
  font-size: 12px;
  padding: 10px 16px;
}
.storybook-button--medium {
  font-size: 14px;
  padding: 11px 20px;
}
.storybook-button--large {
  font-size: 16px;
  padding: 12px 24px;
}

```

### Button.jsx

```jsx
import React from 'react';
import PropTypes from 'prop-types';
import './button.css';

/**
 * Primary UI component for user interaction
 */
export const Button = ({ primary, backgroundColor, size, label, ...props }) => {
  const mode = primary ? 'storybook-button--primary' : 'storybook-button--secondary';
  return (
    <button
      type="button"
      className={['storybook-button', `storybook-button--${size}`, mode].join(' ')}
      style={backgroundColor && { backgroundColor }}
      {...props}
    >
      {label}
    </button>
  );
};

Button.propTypes = {
  /**
   * Is this the principal call to action on the page?
   */
  primary: PropTypes.bool,
  /**
   * What background color to use
   */
  backgroundColor: PropTypes.string,
  /**
   * How large should the button be?
   */
  size: PropTypes.oneOf(['small', 'medium', 'large']),
  /**
   * Button contents
   */
  label: PropTypes.string.isRequired,
  /**
   * Optional click handler
   */
  onClick: PropTypes.func,
};

Button.defaultProps = {
  backgroundColor: null,
  primary: false,
  size: 'medium',
  onClick: undefined,
};

```

### Button.stories.js

```js
import { fn } from '@storybook/test';
import { Button } from './Button';

// More on how to set up stories at: https://storybook.js.org/docs/writing-stories#default-export
export default {
  title: 'Example/Button',
  component: Button,
  parameters: {
    // Optional parameter to center the component in the Canvas. More info: https://storybook.js.org/docs/configure/story-layout
    layout: 'centered',
  },
  // This component will have an automatically generated Autodocs entry: https://storybook.js.org/docs/writing-docs/autodocs
  tags: ['autodocs'],
  // More on argTypes: https://storybook.js.org/docs/api/argtypes
  argTypes: {
    backgroundColor: { control: 'color' },
  },
  // Use `fn` to spy on the onClick arg, which will appear in the actions panel once invoked: https://storybook.js.org/docs/essentials/actions#action-args
  args: { onClick: fn() },
};

// More on writing stories with args: https://storybook.js.org/docs/writing-stories/args
export const Primary = {
  args: {
    primary: true,
    label: 'Button',
  },
};

export const Secondary = {
  args: {
    label: 'Button',
  },
};

export const Large = {
  args: {
    size: 'large',
    label: 'Button',
  },
};

export const Small = {
  args: {
    size: 'small',
    label: 'Button',
  },
};

```

### Configure.mdx

```mdx
import { Meta } from "@storybook/blocks";

import Github from "./assets/github.svg";
import Discord from "./assets/discord.svg";
import Youtube from "./assets/youtube.svg";
import Tutorials from "./assets/tutorials.svg";
import Styling from "./assets/styling.png";
import Context from "./assets/context.png";
import Assets from "./assets/assets.png";
import Docs from "./assets/docs.png";
import Share from "./assets/share.png";
import FigmaPlugin from "./assets/figma-plugin.png";
import Testing from "./assets/testing.png";
import Accessibility from "./assets/accessibility.png";
import Theming from "./assets/theming.png";
import AddonLibrary from "./assets/addon-library.png";

export const RightArrow = () => <svg
    viewBox="0 0 14 14"
    width="8px"
    height="14px"
    style={{
      marginLeft: '4px',
      display: 'inline-block',
      shapeRendering: 'inherit',
      verticalAlign: 'middle',
      fill: 'currentColor',
      'path fill': 'currentColor'
    }}
>
  <path d="m11.1 7.35-5.5 5.5a.5.5 0 0 1-.7-.7L10.04 7 4.9 1.85a.5.5 0 1 1 .7-.7l5.5 5.5c.2.2.2.5 0 .7Z" />
</svg>

<Meta title="Configure your project" />

<div className="sb-container">
  <div className='sb-section-title'>
    # Configure your project

    Because Storybook works separately from your app, you'll need to configure it for your specific stack and setup. Below, explore guides for configuring Storybook with popular frameworks and tools. If you get stuck, learn how you can ask for help from our community.
  </div>
  <div className="sb-section">
    <div className="sb-section-item">
      <img
        src={Styling}
        alt="A wall of logos representing different styling technologies"
      />
      <h4 className="sb-section-item-heading">Add styling and CSS</h4>
      <p className="sb-section-item-paragraph">Like with web applications, there are many ways to include CSS within Storybook. Learn more about setting up styling within Storybook.</p>
      <a
        href="https://storybook.js.org/docs/configure/styling-and-css/?renderer=react"
        target="_blank"
      >Learn more<RightArrow /></a>
    </div>
    <div className="sb-section-item">
      <img
        src={Context}
        alt="An abstraction representing the composition of data for a component"
      />
      <h4 className="sb-section-item-heading">Provide context and mocking</h4>
      <p className="sb-section-item-paragraph">Often when a story doesn't render, it's because your component is expecting a specific environment or context (like a theme provider) to be available.</p>
      <a
        href="https://storybook.js.org/docs/writing-stories/decorators/?renderer=react#context-for-mocking"
        target="_blank"
      >Learn more<RightArrow /></a>
    </div>
    <div className="sb-section-item">
      <img src={Assets} alt="A representation of typography and image assets" />
      <div>
        <h4 className="sb-section-item-heading">Load assets and resources</h4>
        <p className="sb-section-item-paragraph">To link static files (like fonts) to your projects and stories, use the
        `staticDirs` configuration option to specify folders to load when
        starting Storybook.</p>
        <a
          href="https://storybook.js.org/docs/configure/images-and-assets/?renderer=react"
          target="_blank"
        >Learn more<RightArrow /></a>
      </div>
    </div>
  </div>
</div>
<div className="sb-container">
  <div className='sb-section-title'>
    # Do more with Storybook

    Now that you know the basics, let's explore other parts of Storybook that will improve your experience. This list is just to get you started. You can customise Storybook in many ways to fit your needs.
  </div>

  <div className="sb-section">
    <div className="sb-features-grid">
      <div className="sb-grid-item">
        <img src={Docs} alt="A screenshot showing the autodocs tag being set, pointing a docs page being generated" />
        <h4 className="sb-section-item-heading">Autodocs</h4>
        <p className="sb-section-item-paragraph">Auto-generate living,
          interactive reference documentation from your components and stories.</p>
        <a
          href="https://storybook.js.org/docs/writing-docs/autodocs/?renderer=react"
          target="_blank"
        >Learn more<RightArrow /></a>
      </div>
      <div className="sb-grid-item">
        <img src={Share} alt="A browser window showing a Storybook being published to a chromatic.com URL" />
        <h4 className="sb-section-item-heading">Publish to Chromatic</h4>
        <p className="sb-section-item-paragraph">Publish your Storybook to review and collaborate with your entire team.</p>
        <a
          href="https://storybook.js.org/docs/sharing/publish-storybook/?renderer=react#publish-storybook-with-chromatic"
          target="_blank"
        >Learn more<RightArrow /></a>
      </div>
      <div className="sb-grid-item">
        <img src={FigmaPlugin} alt="Windows showing the Storybook plugin in Figma" />
        <h4 className="sb-section-item-heading">Figma Plugin</h4>
        <p className="sb-section-item-paragraph">Embed your stories into Figma to cross-reference the design and live
          implementation in one place.</p>
        <a
          href="https://storybook.js.org/docs/sharing/design-integrations/?renderer=react#embed-storybook-in-figma-with-the-plugin"
          target="_blank"
        >Learn more<RightArrow /></a>
      </div>
      <div className="sb-grid-item">
        <img src={Testing} alt="Screenshot of tests passing and failing" />
        <h4 className="sb-section-item-heading">Testing</h4>
        <p className="sb-section-item-paragraph">Use stories to test a component in all its variations, no matter how
          complex.</p>
        <a
          href="https://storybook.js.org/docs/writing-tests/?renderer=react"
          target="_blank"
        >Learn more<RightArrow /></a>
      </div>
      <div className="sb-grid-item">
        <img src={Accessibility} alt="Screenshot of accessibility tests passing and failing" />
        <h4 className="sb-section-item-heading">Accessibility</h4>
        <p className="sb-section-item-paragraph">Automatically test your components for a11y issues as you develop.</p>
        <a
          href="https://storybook.js.org/docs/writing-tests/accessibility-testing/?renderer=react"
          target="_blank"
        >Learn more<RightArrow /></a>
      </div>
      <div className="sb-grid-item">
        <img src={Theming} alt="Screenshot of Storybook in light and dark mode" />
        <h4 className="sb-section-item-heading">Theming</h4>
        <p className="sb-section-item-paragraph">Theme Storybook's UI to personalize it to your project.</p>
        <a
          href="https://storybook.js.org/docs/configure/theming/?renderer=react"
          target="_blank"
        >Learn more<RightArrow /></a>
      </div>
    </div>
  </div>
</div>
<div className='sb-addon'>
  <div className='sb-addon-text'>
    <h4>Addons</h4>
    <p className="sb-section-item-paragraph">Integrate your tools with Storybook to connect workflows.</p>
    <a
        href="https://storybook.js.org/addons/"
        target="_blank"
      >Discover all addons<RightArrow /></a>
  </div>
  <div className='sb-addon-img'>
    <img src={AddonLibrary} alt="Integrate your tools with Storybook to connect workflows." />
  </div>
</div>

<div className="sb-section sb-socials">
    <div className="sb-section-item">
      <img src={Github} alt="Github logo" className="sb-explore-image"/>
      Join our contributors building the future of UI development.

      <a
        href="https://github.com/storybookjs/storybook"
        target="_blank"
      >Star on GitHub<RightArrow /></a>
    </div>
    <div className="sb-section-item">
      <img src={Discord} alt="Discord logo" className="sb-explore-image"/>
      <div>
        Get support and chat with frontend developers.

        <a
          href="https://discord.gg/storybook"
          target="_blank"
        >Join Discord server<RightArrow /></a>
      </div>
    </div>
    <div className="sb-section-item">
      <img src={Youtube} alt="Youtube logo" className="sb-explore-image"/>
      <div>
        Watch tutorials, feature previews and interviews.

        <a
          href="https://www.youtube.com/@chromaticui"
          target="_blank"
        >Watch on YouTube<RightArrow /></a>
      </div>
    </div>
    <div className="sb-section-item">
      <img src={Tutorials} alt="A book" className="sb-explore-image"/>
      <p>Follow guided walkthroughs on for key workflows.</p>

      <a
          href="https://storybook.js.org/tutorials/"
          target="_blank"
        >Discover tutorials<RightArrow /></a>
    </div>
</div>

<style>
  {`
  .sb-container {
    margin-bottom: 48px;
  }

  .sb-section {
    width: 100%;
    display: flex;
    flex-direction: row;
    gap: 20px;
  }

  img {
    object-fit: cover;
  }

  .sb-section-title {
    margin-bottom: 32px;
  }

  .sb-section a:not(h1 a, h2 a, h3 a) {
    font-size: 14px;
  }

  .sb-section-item, .sb-grid-item {
    flex: 1;
    display: flex;
    flex-direction: column;
  }

  .sb-section-item-heading {
    padding-top: 20px !important;
    padding-bottom: 5px !important;
    margin: 0 !important;
  }
  .sb-section-item-paragraph {
    margin: 0;
    padding-bottom: 10px;
  }

  .sb-chevron {
    margin-left: 5px;
  }

  .sb-features-grid {
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    grid-gap: 32px 20px;
  }

  .sb-socials {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
  }

  .sb-socials p {
    margin-bottom: 10px;
  }

  .sb-explore-image {
    max-height: 32px;
    align-self: flex-start;
  }

  .sb-addon {
    width: 100%;
    display: flex;
    align-items: center;
    position: relative;
    background-color: #EEF3F8;
    border-radius: 5px;
    border: 1px solid rgba(0, 0, 0, 0.05);
    background: #EEF3F8;
    height: 180px;
    margin-bottom: 48px;
    overflow: hidden;
  }

  .sb-addon-text {
    padding-left: 48px;
    max-width: 240px;
  }

  .sb-addon-text h4 {
    padding-top: 0px;
  }

  .sb-addon-img {
    position: absolute;
    left: 345px;
    top: 0;
    height: 100%;
    width: 200%;
    overflow: hidden;
  }

  .sb-addon-img img {
    width: 650px;
    transform: rotate(-15deg);
    margin-left: 40px;
    margin-top: -72px;
    box-shadow: 0 0 1px rgba(255, 255, 255, 0);
    backface-visibility: hidden;
  }

  @media screen and (max-width: 800px) {
    .sb-addon-img {
      left: 300px;
    }
  }

  @media screen and (max-width: 600px) {
    .sb-section {
      flex-direction: column;
    }

    .sb-features-grid {
      grid-template-columns: repeat(1, 1fr);
    }

    .sb-socials {
      grid-template-columns: repeat(2, 1fr);
    }

    .sb-addon {
      height: 280px;
      align-items: flex-start;
      padding-top: 32px;
      overflow: hidden;
    }

    .sb-addon-text {
      padding-left: 24px;
    }

    .sb-addon-img {
      right: 0;
      left: 0;
      top: 130px;
      bottom: 0;
      overflow: hidden;
      height: auto;
      width: 124%;
    }

    .sb-addon-img img {
      width: 1200px;
      transform: rotate(-12deg);
      margin-left: 0;
      margin-top: 48px;
      margin-bottom: -40px;
      margin-left: -24px;
    }
  }
  `}
</style>

```

### header.css

```css
.storybook-header {
  font-family: 'Nunito Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif;
  border-bottom: 1px solid rgba(0, 0, 0, 0.1);
  padding: 15px 20px;
  display: flex;
  align-items: center;
  justify-content: space-between;
}

.storybook-header svg {
  display: inline-block;
  vertical-align: top;
}

.storybook-header h1 {
  font-weight: 700;
  font-size: 20px;
  line-height: 1;
  margin: 6px 0 6px 10px;
  display: inline-block;
  vertical-align: top;
}

.storybook-header button + button {
  margin-left: 10px;
}

.storybook-header .welcome {
  color: #333;
  font-size: 14px;
  margin-right: 10px;
}

```

### Header.jsx

```jsx
import React from 'react';
import PropTypes from 'prop-types';

import { Button } from './Button';
import './header.css';

export const Header = ({ user, onLogin, onLogout, onCreateAccount }) => (
  <header>
    <div className="storybook-header">
      <div>
        <svg width="32" height="32" viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg">
          <g fill="none" fillRule="evenodd">
            <path
              d="M10 0h12a10 10 0 0110 10v12a10 10 0 01-10 10H10A10 10 0 010 22V10A10 10 0 0110 0z"
              fill="#FFF"
            />
            <path
              d="M5.3 10.6l10.4 6v11.1l-10.4-6v-11zm11.4-6.2l9.7 5.5-9.7 5.6V4.4z"
              fill="#555AB9"
            />
            <path
              d="M27.2 10.6v11.2l-10.5 6V16.5l10.5-6zM15.7 4.4v11L6 10l9.7-5.5z"
              fill="#91BAF8"
            />
          </g>
        </svg>
        <h1>Acme</h1>
      </div>
      <div>
        {user ? (
          <>
            <span className="welcome">
              Welcome, <b>{user.name}</b>!
            </span>
            <Button size="small" onClick={onLogout} label="Log out" />
          </>
        ) : (
          <>
            <Button size="small" onClick={onLogin} label="Log in" />
            <Button primary size="small" onClick={onCreateAccount} label="Sign up" />
          </>
        )}
      </div>
    </div>
  </header>
);

Header.propTypes = {
  user: PropTypes.shape({
    name: PropTypes.string.isRequired,
  }),
  onLogin: PropTypes.func.isRequired,
  onLogout: PropTypes.func.isRequired,
  onCreateAccount: PropTypes.func.isRequired,
};

Header.defaultProps = {
  user: null,
};

```

### Header.stories.js

```js
import { Header } from './Header';
import { fn } from '@storybook/test';

export default {
  title: 'Example/Header',
  component: Header,
  // This component will have an automatically generated Autodocs entry: https://storybook.js.org/docs/writing-docs/autodocs
  tags: ['autodocs'],
  parameters: {
    // More on how to position stories at: https://storybook.js.org/docs/configure/story-layout
    layout: 'fullscreen',
  },
  args: {
    onLogin: fn(),
    onLogout: fn(),
    onCreateAccount: fn(),
  },
};

export const LoggedIn = {
  args: {
    user: {
      name: 'Jane Doe',
    },
  },
};

export const LoggedOut = {};

```

### page.css

```css
.storybook-page {
  font-family: 'Nunito Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif;
  font-size: 14px;
  line-height: 24px;
  padding: 48px 20px;
  margin: 0 auto;
  max-width: 600px;
  color: #333;
}

.storybook-page h2 {
  font-weight: 700;
  font-size: 32px;
  line-height: 1;
  margin: 0 0 4px;
  display: inline-block;
  vertical-align: top;
}

.storybook-page p {
  margin: 1em 0;
}

.storybook-page a {
  text-decoration: none;
  color: #1ea7fd;
}

.storybook-page ul {
  padding-left: 30px;
  margin: 1em 0;
}

.storybook-page li {
  margin-bottom: 8px;
}

.storybook-page .tip {
  display: inline-block;
  border-radius: 1em;
  font-size: 11px;
  line-height: 12px;
  font-weight: 700;
  background: #e7fdd8;
  color: #66bf3c;
  padding: 4px 12px;
  margin-right: 10px;
  vertical-align: top;
}

.storybook-page .tip-wrapper {
  font-size: 13px;
  line-height: 20px;
  margin-top: 40px;
  margin-bottom: 40px;
}

.storybook-page .tip-wrapper svg {
  display: inline-block;
  height: 12px;
  width: 12px;
  margin-right: 4px;
  vertical-align: top;
  margin-top: 3px;
}

.storybook-page .tip-wrapper svg path {
  fill: #1ea7fd;
}

```

### Page.jsx

```jsx
import React from 'react';

import { Header } from './Header';
import './page.css';

export const Page = () => {
  const [user, setUser] = React.useState();

  return (
    <article>
      <Header
        user={user}
        onLogin={() => setUser({ name: 'Jane Doe' })}
        onLogout={() => setUser(undefined)}
        onCreateAccount={() => setUser({ name: 'Jane Doe' })}
      />

      <section className="storybook-page">
        <h2>Pages in Storybook</h2>
        <p>
          We recommend building UIs with a{' '}
          <a href="https://componentdriven.org" target="_blank" rel="noopener noreferrer">
            <strong>component-driven</strong>
          </a>{' '}
          process starting with atomic components and ending with pages.
        </p>
        <p>
          Render pages with mock data. This makes it easy to build and review page states without
          needing to navigate to them in your app. Here are some handy patterns for managing page
          data in Storybook:
        </p>
        <ul>
          <li>
            Use a higher-level connected component. Storybook helps you compose such data from the
            "args" of child component stories
          </li>
          <li>
            Assemble data in the page component from your services. You can mock these services out
            using Storybook.
          </li>
        </ul>
        <p>
          Get a guided tutorial on component-driven development at{' '}
          <a href="https://storybook.js.org/tutorials/" target="_blank" rel="noopener noreferrer">
            Storybook tutorials
          </a>
          . Read more in the{' '}
          <a href="https://storybook.js.org/docs" target="_blank" rel="noopener noreferrer">
            docs
          </a>
          .
        </p>
        <div className="tip-wrapper">
          <span className="tip">Tip</span> Adjust the width of the canvas with the{' '}
          <svg width="10" height="10" viewBox="0 0 12 12" xmlns="http://www.w3.org/2000/svg">
            <g fill="none" fillRule="evenodd">
              <path
                d="M1.5 5.2h4.8c.3 0 .5.2.5.4v5.1c-.1.2-.3.3-.4.3H1.4a.5.5 0 01-.5-.4V5.7c0-.3.2-.5.5-.5zm0-2.1h6.9c.3 0 .5.2.5.4v7a.5.5 0 01-1 0V4H1.5a.5.5 0 010-1zm0-2.1h9c.3 0 .5.2.5.4v9.1a.5.5 0 01-1 0V2H1.5a.5.5 0 010-1zm4.3 5.2H2V10h3.8V6.2z"
                id="a"
                fill="#999"
              />
            </g>
          </svg>
          Viewports addon in the toolbar
        </div>
      </section>
    </article>
  );
};

```

### Page.stories.js

```js
import { within, userEvent, expect } from '@storybook/test';

import { Page } from './Page';

export default {
  title: 'Example/Page',
  component: Page,
  parameters: {
    // More on how to position stories at: https://storybook.js.org/docs/configure/story-layout
    layout: 'fullscreen',
  },
};

export const LoggedOut = {};

// More on interaction testing: https://storybook.js.org/docs/writing-tests/interaction-testing
export const LoggedIn = {
  play: async ({ canvasElement }) => {
    const canvas = within(canvasElement);
    const loginButton = canvas.getByRole('button', { name: /Log in/i });
    await expect(loginButton).toBeInTheDocument();
    await userEvent.click(loginButton);
    await expect(loginButton).not.toBeInTheDocument();

    const logoutButton = canvas.getByRole('button', { name: /Log out/i });
    await expect(logoutButton).toBeInTheDocument();
  },
};

```

###### styles

####### abstracts

### _mixins.scss

```scss
@mixin flexCenter {
  display: flex;
  justify-content: center;
  align-items: center;
}

```

### _variables.scss

```scss
$primary-color: #0070f3;
$secondary-color: #0070f3;
$font-stack: Arial, sans-serif;

```

####### base

### _reset.scss

```scss
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

```

### breakpoints.js

```js
const sizes = {
  mobile: '576px',
  tablet: '768px',
  desktop: '1024px',
  largeDesktop: '1440px',
};

export const devices = {
  mobile: `(min-width: ${sizes.mobile})`,
  tablet: `(min-width: ${sizes.tablet})`,
  desktop: `(min-width: ${sizes.desktop})`,
  largeDesktop: `(min-width: ${sizes.largeDesktop})`,
};

export const mediaQueries = {
  mobile: `@media ${devices.mobile}`,
  tablet: `@media ${devices.tablet}`,
  desktop: `@media ${devices.desktop}`,
  largeDesktop: `@media ${devices.largeDesktop}`,
};

```

####### components

### GlobalStyle.js

```js
import { createGlobalStyle } from 'styled-components';

const GlobalStyle = createGlobalStyle`
  body {
    margin: 0;
    padding: 0;
    font-family: ${({ theme }) => theme.fonts.body};
    background-color: ${({ theme }) => theme.colors.background};
    color: ${({ theme }) => theme.colors.text};
  }
`;

export default GlobalStyle;

```

####### layout

### main.scss

```scss
@import 'abstracts/variables';
@import 'abstracts/mixins';

@import 'base/reset';
@import 'base/typography';

@import 'components/buttons';
@import 'components/forms';

@import 'layout/header';
@import 'layout/footer';

@import 'pages/home';

```

### NolocoTheme.js

```js
// src/styles/NolocoTheme.js
const NolocoTheme = {
    colors: {
        primary: '#0F172A',
        secondary: '#3B82F6',
        background: '#F8FAFC',
        text: '#1E293B',
    },
    fonts: {
      body: 'Inter, sans-serif',
    },
  };

  export default NolocoTheme;

```

####### pages

### ResponsiveWrapper.js

```js
import styled from 'styled-components';
import { mediaQueries } from './breakpoints';

const ResponsiveWrapper = styled.div`
  padding: 1rem;
  width: 100%;
  max-width: 100%;

  ${mediaQueries.tablet} {
    padding: 2rem;
    max-width: 720px;
    margin: 0 auto;
  }

  ${mediaQueries.desktop} {
    padding: 3rem;
    max-width: 960px;
  }

  ${mediaQueries.largeDesktop} {
    max-width: 1200px;
  }
`;

export default ResponsiveWrapper;

```

### theme.js

```js
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

```

###### utils

### imageOptimization.js

```js
export const getOptimizedImageUrl = (url, width, height) => {
  // This is a placeholder. In a real-world scenario, you'd integrate with
  // an image optimization service like Cloudinary or Imgix.
  return ;
};

```

### useIntersectionObserver.js

```js
import { useState, useEffect } from 'react';

const useIntersectionObserver = (ref, options = {}) => {
  const [isIntersecting, setIsIntersecting] = useState(false);

  useEffect(() => {
    const observer = new IntersectionObserver(([entry]) => {
      setIsIntersecting(entry.isIntersecting);
    }, options);

    if (ref.current) {
      observer.observe(ref.current);
    }

    return () => {
      observer.disconnect();
    };
  }, [ref, options]);

  return isIntersecting;
};

export default useIntersectionObserver;

```

### tailwind.config.js

```js
/** @type {import('tailwindcss').Config} */
module.exports = {
  darkMode: ["class"],
  content: [
    './pages/**/*.{ts,tsx}',
    './components/**/*.{ts,tsx}',
    './app/**/*.{ts,tsx}',
    './src/**/*.{ts,tsx}',
  ],
  prefix: "",
  theme: {
    container: {
      center: true,
      padding: "2rem",
      screens: {
        "2xl": "1400px",
      },
    },
    extend: {
      colors: {
        border: "hsl(var(--border))",
        input: "hsl(var(--input))",
        ring: "hsl(var(--ring))",
        background: "hsl(var(--background))",
        foreground: "hsl(var(--foreground))",
        primary: {
          DEFAULT: "hsl(var(--primary))",
          foreground: "hsl(var(--primary-foreground))",
        },
        secondary: {
          DEFAULT: "hsl(var(--secondary))",
          foreground: "hsl(var(--secondary-foreground))",
        },
        destructive: {
          DEFAULT: "hsl(var(--destructive))",
          foreground: "hsl(var(--destructive-foreground))",
        },
        muted: {
          DEFAULT: "hsl(var(--muted))",
          foreground: "hsl(var(--muted-foreground))",
        },
        accent: {
          DEFAULT: "hsl(var(--accent))",
          foreground: "hsl(var(--accent-foreground))",
        },
        popover: {
          DEFAULT: "hsl(var(--popover))",
          foreground: "hsl(var(--popover-foreground))",
        },
        card: {
          DEFAULT: "hsl(var(--card))",
          foreground: "hsl(var(--card-foreground))",
        },
      },
      borderRadius: {
        lg: "var(--radius)",
        md: "calc(var(--radius) - 2px)",
        sm: "calc(var(--radius) - 4px)",
      },
      keyframes: {
        "accordion-down": {
          from: { height: "0" },
          to: { height: "var(--radix-accordion-content-height)" },
        },
        "accordion-up": {
          from: { height: "var(--radix-accordion-content-height)" },
          to: { height: "0" },
        },
      },
      animation: {
        "accordion-down": "accordion-down 0.2s ease-out",
        "accordion-up": "accordion-up 0.2s ease-out",
      },
    },
  },
  plugins: [require("tailwindcss-animate")],
}
```

### tsconfig.json

```json
{
  "compilerOptions": {
    "target": "es5",
    "lib": ["dom", "dom.iterable", "esnext"],
    "allowJs": true,
    "skipLibCheck": true,
    "esModuleInterop": true,
    "allowSyntheticDefaultImports": true,
    "strict": true,
    "forceConsistentCasingInFileNames": true,
    "module": "esnext",
    "moduleResolution": "node",
    "resolveJsonModule": true,
    "isolatedModules": true,
    "noEmit": true,
    "jsx": "react-jsx",
    "baseUrl": "src"
  },
  "include": ["src"]
}

```

### webpack.config.js

```js
const path = require('path');
const HtmlWebpackPlugin = require('html-webpack-plugin');
const MiniCssExtractPlugin = require('mini-css-extract-plugin');

module.exports = {
  entry: './src/index.js',
  output: {
    path: path.resolve(__dirname, 'dist'),
    filename: '[name].[contenthash].js',
    clean: true,
  },
  module: {
    rules: [
      {
        test: /\.(js|jsx)$/,
        exclude: /node_modules/,
        use: {
          loader: 'babel-loader',
        },
      },
      {
        test: /\.(scss|css)$/,
        use: [MiniCssExtractPlugin.loader, 'css-loader', 'sass-loader'],
      },
    ],
  },
  plugins: [
    new HtmlWebpackPlugin({
      template: './public/index.html',
    }),
    new MiniCssExtractPlugin({
      filename: '[name].[contenthash].css',
    }),
  ],
  devServer: {
    static: path.join(__dirname, 'dist'),
    port: 3000,
    hot: true,
  },
  optimization: {
    moduleIds: 'deterministic',
    runtimeChunk: 'single',
    splitChunks: {
      cacheGroups: {
        vendor: {
          test: /[\/]node_modules[\/]/,
          name: 'vendors',
          chunks: 'all',
        },
      },
    },
  },
};

const WorkboxWebpackPlugin = require('workbox-webpack-plugin');

module.exports.plugins.push(
  new WorkboxWebpackPlugin.GenerateSW({
    clientsClaim: true,
    skipWaiting: true,
    runtimeCaching: [{
      urlPattern: /^https?.*/,
      handler: 'NetworkFirst',
      options: {
        cacheName: 'https-calls',
        networkTimeoutSeconds: 15,
        expiration: {
          maxEntries: 150,
          maxAgeSeconds: 30 * 24 * 60 * 60, // 1 month
        },
        cacheableResponse: {
          statuses: [0, 200],
        },
      },
    }],
  })
);

```

#### docs

### package.json

```json
{
  "dependencies": {
    "bcryptjs": "^2.4.3",
    "jsonwebtoken": "^9.0.2"
  }
}

```

### README.md

```md

```

#### server

### .env

```
PORT=3000
BASE_URL=http://localhost:3000  # Optional, for local development
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
DATABASE_URL=postgres://ultimate_user:postgres@localhost:5432/ultimate
JWT_SECRET=mySecretKey

```

### babel.config.js

```js

```

### jest.config.js

```js
module.exports = {
  testEnvironment: 'node',
  testMatch: ['**/tests/**/*.js', '**/?(*.)+(spec|test).js'],
  collectCoverageFrom: ['src/**/*.js'],
  coveragePathIgnorePatterns: ['/node_modules/', '/tests/'],
  coverageReporters: ['text', 'lcov'],
  setupFilesAfterEnv: ['./jest.setup.js']
};

```

### jest.setup.js

```js
// jest.setup.js

require('dotenv').config();

jest.setTimeout(30000);

expect.extend({
  toBeWithinRange(received, floor, ceiling) {
    const pass = received >= floor && received <= ceiling;
    if (pass) {
      return {
        message: () => `expected ${received} not to be within range ${floor} - ${ceiling}`,
        pass: true,
      };
    } else {
      return {
        message: () => `expected ${received} to be within range ${floor} - ${ceiling}`,
        pass: false,
      };
    }
  },
});

beforeAll(() => {
  console.log('Starting all tests...');
});

afterAll(() => {
  console.log('All tests completed.');
});

if (typeof fetch === 'undefined') {
  global.fetch = require('node-fetch');
}

global.createMockResponse = (data, status = 200) => {
  return new Response(JSON.stringify(data), {
    status,
    headers: { 'Content-Type': 'application/json' },
  });
};

global.wait = (ms) => new Promise(resolve => setTimeout(resolve, ms));

const mockDate = new Date('2024-08-05T12:00:00Z');
global.Date = class extends Date {
  constructor() {
    return mockDate;
  }
};

```

### package.json

```json
{
  "name": "ultimate",
  "version": "1.0.0",
  "description": "Project created with DemTech Master Script Project Setup.",
  "main": "src/index.js",
  "scripts": {
    "start": "node src/index.js",
    "dev": "nodemon src/index.js",
    "test": "jest",
    "test:watch": "jest --watch",
    "test:coverage": "jest --coverage"
  },
  "author": "",
  "license": "ISC",
  "dependencies": {
    "aws-sdk": "^2.1669.0",
    "bcryptjs": "^2.4.3",
    "cors": "^2.8.5",
    "dotenv": "^10.0.0",
    "express": "^4.19.2",
    "handlebars": "^4.7.8",
    "jsonwebtoken": "^9.0.2",
    "multer": "^1.4.5-lts.1",
    "nodemailer": "^6.9.14",
    "pg": "^8.12.0",
    "sequelize": "^6.37.3"
  },
  "devDependencies": {
    "jest": "^27.0.0",
    "nodemon": "^2.0.12",
    "supertest": "^6.1.3"
  }
}

```

### psql_output.log

```log
CREATE DATABASE
CREATE ROLE
GRANT
You are now connected to database "ultimate" as user "postgres".
CREATE EXTENSION

```

##### src

### app.js

```js
const express = require('express');
const { Pool } = require('pg');
const session = require('express-session');
const pgSession = require('connect-pg-simple')(session);
const passport = require('passport');
const cors = require('cors');
const dotenv = require('dotenv');
const path = require('path');
const errorHandler = require('./middleware/error-handling-middleware');

dotenv.config();

const app = express();

// Middleware
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// PostgreSQL Pool
const pool = new Pool({
    connectionString: process.env.DATABASE_URL
});

// Session Management
app.use(session({
    store: new pgSession({
        pool: pool,
        tableName: 'session'
    }),
    secret: process.env.SESSION_SECRET || 'your_secret_key',
    resave: false,
    saveUninitialized: false,
    cookie: { secure: process.env.NODE_ENV === 'production' }
}));

// Passport middleware
app.use(passport.initialize());
app.use(passport.session());

// Passport Config
require('./config/passport')(passport);

// Routes
app.use('/api/models', require('./routes/models'));
// Add other routes as needed

// Serve static files from the React app in production
if (process.env.NODE_ENV === 'production') {
    app.use(express.static(path.join(__dirname, '../../client/build')));

    app.get('*', (req, res) => {
        res.sendFile(path.join(__dirname, '../../client/build', 'index.html'));
    });
}

// Error Handling Middleware
app.use(errorHandler);

module.exports = app;

```

###### config

### database.js

```js
// src/config/database.js
const { Pool } = require('pg');
const { Sequelize } = require('sequelize');
require('dotenv').config();

const sequelize = new Sequelize(process.env.DATABASE_URL, {
  dialect: 'postgres',
  logging: false,
  pool: {
    max: 5,
    min: 0,
    acquire: 30000,
    idle: 10000
  }
});

const pool = new Pool({
  connectionString: process.env.DATABASE_URL,
});

const testConnection = async () => {
  try {
    await sequelize.authenticate();
    console.log('Sequelize connection has been established successfully.');

    const client = await pool.connect();
    console.log('PostgreSQL pool connection has been established successfully.');
    client.release();
  } catch (error) {
    console.error('Unable to connect to the database:', error);
  }
};

testConnection();

module.exports = {
  sequelize,
  Sequelize,
  query: (text, params) => pool.query(text, params),
};

```

### passport.js

```js
module.exports = (passport) => {
    // Add passport strategies and serialization here
    // This is a placeholder and should be expanded based on your auth requirements
};

```

###### controllers

### about.js

```js
const aboutModel = require('../models/about');

exports.getAll = async (req, res) => {
  try {
    const items = await aboutModel.findAll();
    res.json(items);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

exports.create = async (req, res) => {
  try {
    const newItem = await aboutModel.create(req.body);
    res.status(201).json(newItem);
  } catch (error) {
    res.status(400).json({ message: error.message });
  }
};

exports.getById = async (req, res) => {
  try {
    const item = await aboutModel.findByPk(req.params.id);
    if (!item) {
      return res.status(404).json({ message: 'Item not found' });
    }
    res.json(item);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

exports.update = async (req, res) => {
  try {
    const [updated] = await aboutModel.update(req.body, {
      where: { id: req.params.id }
    });
    if (updated) {
      const updatedItem = await aboutModel.findByPk(req.params.id);
      res.json(updatedItem);
    } else {
      res.status(404).json({ message: 'Item not found' });
    }
  } catch (error) {
    res.status(400).json({ message: error.message });
  }
};

exports.delete = async (req, res) => {
  try {
    const deleted = await aboutModel.destroy({
      where: { id: req.params.id }
    });
    if (deleted) {
      res.json({ message: 'Item deleted' });
    } else {
      res.status(404).json({ message: 'Item not found' });
    }
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

```

### contact.js

```js
const contactModel = require('../models/contact');

exports.getAll = async (req, res) => {
  try {
    const items = await contactModel.findAll();
    res.json(items);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

exports.create = async (req, res) => {
  try {
    const newItem = await contactModel.create(req.body);
    res.status(201).json(newItem);
  } catch (error) {
    res.status(400).json({ message: error.message });
  }
};

exports.getById = async (req, res) => {
  try {
    const item = await contactModel.findByPk(req.params.id);
    if (!item) {
      return res.status(404).json({ message: 'Item not found' });
    }
    res.json(item);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

exports.update = async (req, res) => {
  try {
    const [updated] = await contactModel.update(req.body, {
      where: { id: req.params.id }
    });
    if (updated) {
      const updatedItem = await contactModel.findByPk(req.params.id);
      res.json(updatedItem);
    } else {
      res.status(404).json({ message: 'Item not found' });
    }
  } catch (error) {
    res.status(400).json({ message: error.message });
  }
};

exports.delete = async (req, res) => {
  try {
    const deleted = await contactModel.destroy({
      where: { id: req.params.id }
    });
    if (deleted) {
      res.json({ message: 'Item deleted' });
    } else {
      res.status(404).json({ message: 'Item not found' });
    }
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

```

### docs.js

```js
const docsModel = require('../models/docs');

exports.getAll = async (req, res) => {
  try {
    const items = await docsModel.findAll();
    res.json(items);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

exports.create = async (req, res) => {
  try {
    const newItem = await docsModel.create(req.body);
    res.status(201).json(newItem);
  } catch (error) {
    res.status(400).json({ message: error.message });
  }
};

exports.getById = async (req, res) => {
  try {
    const item = await docsModel.findByPk(req.params.id);
    if (!item) {
      return res.status(404).json({ message: 'Item not found' });
    }
    res.json(item);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

exports.update = async (req, res) => {
  try {
    const [updated] = await docsModel.update(req.body, {
      where: { id: req.params.id }
    });
    if (updated) {
      const updatedItem = await docsModel.findByPk(req.params.id);
      res.json(updatedItem);
    } else {
      res.status(404).json({ message: 'Item not found' });
    }
  } catch (error) {
    res.status(400).json({ message: error.message });
  }
};

exports.delete = async (req, res) => {
  try {
    const deleted = await docsModel.destroy({
      where: { id: req.params.id }
    });
    if (deleted) {
      res.json({ message: 'Item deleted' });
    } else {
      res.status(404).json({ message: 'Item not found' });
    }
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

```

### index.js

```js
const app = require(./app);
const express = require('express');
const cors = require('cors');
require('dotenv').config();
const { sequelize } = require('./utils/db');
const modelRoutes = require('./routes/models');
const dynamicApiRoutes = require('./routes/dynamicApiRoutes');

const PORT = process.env.PORT || 3000;

// Middleware

// Routes
app.use('/api/models', modelRoutes);
app.use('/api', dynamicApiRoutes);

app.get('/', (req, res) => {
  res.json({ message: 'Welcome to the API' });
});

// Error handling middleware
app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).send('Something broke!');
});

// Database connection and server start
const startServer = async () => {
  try {
    await sequelize.authenticate();
    console.log('Database connection has been established successfully.');

    app.listen(PORT, () => console.log());
  } catch (error) {
    console.error('Unable to connect to the database:', error);
  }
};

startServer();

```

###### middleware

### auth.js

```js
// projects/grow-tracking-app/server/src/middleware/auth.js
const jwt = require('jsonwebtoken');

module.exports = function (req, res, next) {
  // Get token from header
  const token = req.header('x-auth-token');

  // Check if no token
  if (!token) {
    return res.status(401).json({ msg: 'No token, authorization denied' });
  }

  // Verify token
  try {
    const decoded = jwt.verify(token, process.env.JWT_SECRET);
    req.user = decoded.user;
    next();
  } catch (err) {
    res.status(401).json({ msg: 'Token is not valid' });
  }
};

```

### error-handling-middleware.js

```js
const errorHandler = (err, req, res, next) => {
    console.error(err.stack);
    res.status(500).send('Something broke!');
};

module.exports = errorHandler;

```

### errorHandler.js

```js
const { sendError } = require('../utils/apiResponse');

const errorHandler = (err, req, res, next) => {
  console.error(err.stack);

  const statusCode = err.statusCode || 500;
  const message = err.message || 'Internal Server Error';

  sendError(res, statusCode, message);
};

module.exports = errorHandler;

```

###### middlewares

### rbacMiddleware.js

```js
// src/middlewares/rbacMiddleware.js
const rbacMiddleware = (requiredRole) => {
  return (req, res, next) => {
    if (!req.user || !req.user.role) {
      return res.status(403).json({ message: 'Access denied' });
    }

    if (req.user.role !== requiredRole) {
      return res.status(403).json({ message: 'Insufficient permissions' });
    }

    next();
  };
};

module.exports = rbacMiddleware;

```

###### models

### about.js

```js
const { DataTypes } = require('sequelize');
const sequelize = require('../config/database');

const about = sequelize.define('about', {
  // Define your model fields here
  name: {
    type: DataTypes.STRING,
    allowNull: false
  },
  // Add more fields as needed
});

module.exports = about;

```

### contact.js

```js
const { DataTypes } = require('sequelize');
const sequelize = require('../config/database');

const contact = sequelize.define('contact', {
  // Define your model fields here
  name: {
    type: DataTypes.STRING,
    allowNull: false
  },
  // Add more fields as needed
});

module.exports = contact;

```

### docs.js

```js
const { DataTypes } = require('sequelize');
const sequelize = require('../config/database');

const docs = sequelize.define('docs', {
  // Define your model fields here
  name: {
    type: DataTypes.STRING,
    allowNull: false
  },
  // Add more fields as needed
});

module.exports = docs;

```

### EmailTemplate.js

```js
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

class EmailTemplateModel {
  async saveTemplate(templateData) {
    const query = 'INSERT INTO email_templates(name, subject, body) VALUES($1, $2, $3) RETURNING *';
    const values = [templateData.name, templateData.subject, templateData.body];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getTemplates() {
    const result = await pool.query('SELECT * FROM email_templates');
    return result.rows;
  }

  async getTemplateByName(name) {
    const result = await pool.query('SELECT * FROM email_templates WHERE name = $1', [name]);
    return result.rows[0];
  }
}

module.exports = new EmailTemplateModel();

```

### File.js

```js
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

class FileModel {
  async saveFile(fileData) {
    const query = 'INSERT INTO files(filename, originalname, mimetype, size, url, uploadedby) VALUES($1, $2, $3, $4, $5, $6) RETURNING *';
    const values = [fileData.filename, fileData.originalname, fileData.mimetype, fileData.size, fileData.url, fileData.uploadedby];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getFilesByUser(userId) {
    const query = 'SELECT * FROM files WHERE uploadedby = $1';
    const result = await pool.query(query, [userId]);
    return result.rows;
  }
}

module.exports = new FileModel();

```

### User.js

```js
// src/models/User.js

const { Sequelize, DataTypes } = require('sequelize');
const sequelize = require('../config/database');

const User = sequelize.define('User', {
  name: {
    type: DataTypes.STRING,
    allowNull: false
  },
  email: {
    type: DataTypes.STRING,
    allowNull: false,
    unique: true
  },
  password: {
    type: DataTypes.STRING,
    allowNull: false
  }
});

module.exports = User;

```

### Workflow.js

```js
// src/models/Workflow.js
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

class WorkflowModel {
  async createWorkflow(workflowData) {
    const query = 'INSERT INTO workflows(name, description, trigger, steps) VALUES($1, $2, $3, $4) RETURNING *';
    const values = [workflowData.name, workflowData.description, workflowData.trigger, JSON.stringify(workflowData.steps)];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getWorkflows() {
    const result = await pool.query('SELECT * FROM workflows');
    return result.rows;
  }

  async getWorkflowById(id) {
    const result = await pool.query('SELECT * FROM workflows WHERE id = $1', [id]);
    return result.rows[0];
  }
}

module.exports = new WorkflowModel();

```

###### redux

####### actions

### authActions.js

```js
import axios from 'axios';
import { setAuthToken } from '../../utils/setAuthToken';
import {
  REGISTER_SUCCESS,
  REGISTER_FAIL,
  USER_LOADED,
  AUTH_ERROR,
  LOGIN_SUCCESS,
  LOGIN_FAIL,
  LOGOUT
} from './types';

// Load User
export const loadUser = () => async dispatch => {
  if (localStorage.token) {
    setAuthToken(localStorage.token);
  }

  try {
    const res = await axios.get('/api/auth');
    dispatch({
      type: USER_LOADED,
      payload: res.data
    });
  } catch (err) {
    dispatch({
      type: AUTH_ERROR
    });
  }
};

// Register User
export const register = (formData) => async dispatch => {
  try {
    const res = await axios.post('/api/users', formData);
    dispatch({
      type: REGISTER_SUCCESS,
      payload: res.data
    });
    dispatch(loadUser());
  } catch (err) {
    dispatch({
      type: REGISTER_FAIL,
      payload: err.response.data.msg
    });
  }
};

// Login User
export const login = (email, password) => async dispatch => {
  const config = {
    headers: {
      'Content-Type': 'application/json'
    }
  };

  const body = JSON.stringify({ email, password });

  try {
    const res = await axios.post('/api/auth', body, config);
    dispatch({
      type: LOGIN_SUCCESS,
      payload: res.data
    });
    dispatch(loadUser());
  } catch (err) {
    dispatch({
      type: LOGIN_FAIL,
      payload: err.response.data.msg
    });
  }
};

// Logout
export const logout = () => dispatch => {
  dispatch({ type: LOGOUT });
};

```

### projectActions.js

```js
import axios from 'axios';
import {
  GET_PROJECTS,
  ADD_PROJECT,
  DELETE_PROJECT,
  SET_CURRENT,
  CLEAR_CURRENT,
  PROJECT_ERROR
} from './types';

// Get Projects
export const getProjects = () => async dispatch => {
  try {
    const res = await axios.get('/api/projects');
    dispatch({
      type: GET_PROJECTS,
      payload: res.data
    });
  } catch (err) {
    dispatch({
      type: PROJECT_ERROR,
      payload: err.response.msg
    });
  }
};

// Add Project
export const addProject = (project) => async dispatch => {
  const config = {
    headers: {
      'Content-Type': 'application/json'
    }
  };

  try {
    const res = await axios.post('/api/projects', project, config);
    dispatch({
      type: ADD_PROJECT,
      payload: res.data
    });
  } catch (err) {
    dispatch({
      type: PROJECT_ERROR,
      payload: err.response.msg
    });
  }
};

// Delete Project
export const deleteProject = (id) => async dispatch => {
  try {
    await axios.delete(`/api/projects/${id}`);
    dispatch({
      type: DELETE_PROJECT,
      payload: id
    });
  } catch (err) {
    dispatch({
      type: PROJECT_ERROR,
      payload: err.response.msg
    });
  }
};

// Set Current Project
export const setCurrentProject = (project) => {
  return {
    type: SET_CURRENT,
    payload: project
  };
};

// Clear Current Project
export const clearCurrentProject = () => {
  return { type: CLEAR_CURRENT };
};

```

### taskActions.js

```js
import axios from 'axios';
import {
  GET_TASKS,
  ADD_TASK,
  DELETE_TASK,
  SET_CURRENT,
  CLEAR_CURRENT,
  TASK_ERROR
} from './types';

// Get Tasks
export const getTasks = () => async dispatch => {
  try {
    const res = await axios.get('/api/tasks');
    dispatch({
      type: GET_TASKS,
      payload: res.data
    });
  } catch (err) {
    dispatch({
      type: TASK_ERROR,
      payload: err.response.msg
    });
  }
};

// Add Task
export const addTask = (task) => async dispatch => {
  const config = {
    headers: {
      'Content-Type': 'application/json'
    }
  };

  try {
    const res = await axios.post('/api/tasks', task, config);
    dispatch({
      type: ADD_TASK,
      payload: res.data
    });
  } catch (err) {
    dispatch({
      type: TASK_ERROR,
      payload: err.response.msg
    });
  }
};

// Delete Task
export const deleteTask = (id) => async dispatch => {
  try {
    await axios.delete(`/api/tasks/${id}`);
    dispatch({
      type: DELETE_TASK,
      payload: id
    });
  } catch (err) {
    dispatch({
      type: TASK_ERROR,
      payload: err.response.msg
    });
  }
};

// Set Current Task
export const setCurrentTask = (task) => {
  return {
    type: SET_CURRENT,
    payload: task
  };
};

// Clear Current Task
export const clearCurrentTask = () => {
  return { type: CLEAR_CURRENT };
};

```

###### routes

### about.js

```js
const express = require('express');
const router = express.Router();
const aboutController = require('../controllers/about');

router.get('/', aboutController.getAll);
router.post('/', aboutController.create);
router.get('/:id', aboutController.getById);
router.put('/:id', aboutController.update);
router.delete('/:id', aboutController.delete);

module.exports = router;

```

### auth.js

```js
const express = require('express');
const router = express.Router();
const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');
const User = require('../models/User');
const auth = require('../middleware/auth');
require('dotenv').config();

// @route   POST api/auth/register
// @desc    Register user
// @access  Public
router.post('/register', async (req, res) => {
  const { name, email, password } = req.body;

  try {
    let user = await User.findOne({ email });
    if (user) {
      return res.status(400).json({ msg: 'User already exists' });
    }

    user = new User({
      name,
      email,
      password,
    });

    const salt = await bcrypt.genSalt(10);
    user.password = await bcrypt.hash(password, salt);

    await user.save();

    const payload = {
      user: {
        id: user.id,
      },
    };

    jwt.sign(
      payload,
      process.env.JWT_SECRET,
      { expiresIn: 3600 },
      (err, token) => {
        if (err) throw err;
        res.json({ token });
      }
    );
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Server error');
  }
});

// @route   POST api/auth/login
// @desc    Authenticate user & get token
// @access  Public
router.post('/login', async (req, res) => {
  const { email, password } = req.body;

  try {
    let user = await User.findOne({ email });
    if (!user) {
      return res.status(400).json({ msg: 'Invalid Credentials' });
    }

    const isMatch = await bcrypt.compare(password, user.password);
    if (!isMatch) {
      return res.status(400).json({ msg: 'Invalid Credentials' });
    }

    const payload = {
      user: {
        id: user.id,
      },
    };

    jwt.sign(
      payload,
      process.env.JWT_SECRET,
      { expiresIn: 3600 },
      (err, token) => {
        if (err) throw err;
        res.json({ token });
      }
    );
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Server error');
  }
});

// @route   GET api/auth/user
// @desc    Get logged in user
// @access  Private
router.get('/user', auth, async (req, res) => {
  try {
    const user = await User.findById(req.user.id).select('-password');
    res.json(user);
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Server Error');
  }
});

module.exports = router;

```

### authRoutes.js

```js
// src/routes/authRoutes.js
const express = require('express');
const jwt = require('jsonwebtoken');
const UserService = require('../models/User');
const rbacMiddleware = require('../middlewares/rbacMiddleware');

const router = express.Router();

router.post('/register', async (req, res) => {
  try {
    const { username, email, password, role } = req.body;
    const user = await UserService.createUser({ username, email, password, role });
    res.status(201).json({ message: 'User registered successfully', user });
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

router.post('/login', async (req, res) => {
  try {
    const { email, password } = req.body;
    const user = await UserService.findUserByEmail(email);
    if (!user || !(await UserService.comparePassword(password, user.password))) {
      return res.status(401).json({ message: 'Invalid credentials' });
    }
    const token = jwt.sign({ userId: user.id, role: user.role }, process.env.JWT_SECRET, { expiresIn: '1d' });
    res.json({ token });
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

// Example of a protected route using RBAC
router.get('/admin-only', rbacMiddleware('admin'), (req, res) => {
  res.json({ message: 'Welcome, admin!' });
});

module.exports = router;

```

### contact.js

```js
const express = require('express');
const router = express.Router();
const contactController = require('../controllers/contact');

router.get('/', contactController.getAll);
router.post('/', contactController.create);
router.get('/:id', contactController.getById);
router.put('/:id', contactController.update);
router.delete('/:id', contactController.delete);

module.exports = router;

```

### docs.js

```js
const express = require('express');
const router = express.Router();
const docsController = require('../controllers/docs');

router.get('/', docsController.getAll);
router.post('/', docsController.create);
router.get('/:id', docsController.getById);
router.put('/:id', docsController.update);
router.delete('/:id', docsController.delete);

module.exports = router;

```

### dynamicApiRoutes.js

```js
// src/routes/dynamicApiRoutes.js
const express = require('express');
const apiGenerationService = require('../services/apiGenerationService');
const dataModelingService = require('../services/dataModelingService');

const router = express.Router();

// Function to set up dynamic routes
const setupDynamicRoutes = async () => {
  try {
    const models = await dataModelingService.getModels();
    models.forEach(model => {
      router.use(`/${model.name.toLowerCase()}`, apiGenerationService.generateAPI(model.name, model.fields));
    });
    console.log('Dynamic API routes set up successfully');
  } catch (error) {
    console.error('Error setting up dynamic API routes:', error);
  }
};

// Set up routes immediately and export the router
setupDynamicRoutes();

module.exports = router;

```

### emailTemplateRoutes.js

```js
const express = require('express');
const EmailService = require('../services/emailService');
const router = express.Router();

router.post('/', async (req, res) => {
  try {
    const template = await EmailService.saveTemplate(req.body);
    res.status(201).json(template);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

router.get('/', async (req, res) => {
  try {
    const templates = await EmailService.getTemplates();
    res.json(templates);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

router.post('/send', async (req, res) => {
  try {
    const { templateName, to, context } = req.body;
    const template = await EmailService.getTemplateByName(templateName);
    if (!template) {
      return res.status(404).json({ message: 'Template not found' });
    }
    await EmailService.sendEmail(to, template.subject, template.body, context);
    res.json({ message: 'Email sent successfully' });
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

module.exports = router;

```

### fileRoutes.js

```js
const express = require('express');
const { upload, FileService } = require('../services/fileService');
const router = express.Router();

router.post('/upload', upload.single('file'), async (req, res) => {
  try {
    const fileData = {
      filename: req.file.key,
      originalname: req.file.originalname,
      mimetype: req.file.mimetype,
      size: req.file.size,
      url: req.file.location,
      uploadedby: req.user.id
    };
    const file = await FileService.saveFile(fileData);
    res.status(201).json(file);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

router.get('/', async (req, res) => {
  try {
    const files = await FileService.getFilesByUser(req.user.id);
    res.json(files);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

module.exports = router;

```

### models.js

```js
const express = require('express');
const router = express.Router();
const DataModelingService = require('../services/dataModelingService');

router.post('/models', async (req, res, next) => {
  try {
    const { name, fields } = req.body;
    await DataModelingService.saveModel({ name, fields });
    res.status(201).json({ message: 'Model saved successfully' });
  } catch (error) {
    next(error);
  }
});

router.get('/models', async (req, res, next) => {
  try {
    const models = await DataModelingService.getModels();
    res.json(models);
  } catch (error) {
    next(error);
  }
});

module.exports = router;

```

### workflowRoutes.js

```js
// src/routes/workflowRoutes.js
const express = require('express');
const WorkflowModel = require('../models/Workflow');
const WorkflowService = require('../services/workflowService');

const router = express.Router();

router.post('/', async (req, res) => {
  try {
    const workflow = await WorkflowModel.createWorkflow(req.body);
    res.status(201).json(workflow);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

router.get('/', async (req, res) => {
  try {
    const workflows = await WorkflowModel.getWorkflows();
    res.json(workflows);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

router.post('/:id/execute', async (req, res) => {
  try {
    const workflow = await WorkflowModel.getWorkflowById(req.params.id);
    if (!workflow) {
      return res.status(404).json({ message: 'Workflow not found' });
    }
    const result = await WorkflowService.executeWorkflow(workflow, req.body);
    res.json(result);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

module.exports = router;

```

###### services

### apiGenerationService.js

```js
// src/services/apiGenerationService.js
const express = require('express');
const { query } = require('../utils/db');

class APIGenerationService {
  generateAPI(modelName, fields) {
    const router = express.Router();

    // Create
    router.post('/', async (req, res) => {
      try {
        const keys = Object.keys(req.body);
        const values = Object.values(req.body);
        const sqlQuery = `INSERT INTO ${modelName} (${keys.join(', ')}) VALUES (${values.map((_, i) => '$' + (i + 1)).join(', ')}) RETURNING *`;
        const result = await query(sqlQuery, values);
        res.status(201).json(result.rows[0]);
      } catch (error) {
        res.status(400).json({ error: error.message });
      }
    });

    // Read all
    router.get('/', async (req, res) => {
      try {
        const result = await query(`SELECT * FROM ${modelName}`);
        res.json(result.rows);
      } catch (error) {
        res.status(500).json({ error: error.message });
      }
    });

    // Read one
    router.get('/:id', async (req, res) => {
      try {
        const result = await query(`SELECT * FROM ${modelName} WHERE id = $1`, [req.params.id]);
        if (result.rows.length === 0) return res.status(404).json({ message: 'Document not found' });
        res.json(result.rows[0]);
      } catch (error) {
        res.status(500).json({ error: error.message });
      }
    });

    // Update
    router.put('/:id', async (req, res) => {
      try {
        const keys = Object.keys(req.body);
        const values = Object.values(req.body);
        const sqlQuery = `UPDATE ${modelName} SET ${keys.map((key, i) => `${key} = $${i + 1}`).join(', ')} WHERE id = $${keys.length + 1} RETURNING *`;
        const result = await query(sqlQuery, [...values, req.params.id]);
        if (result.rows.length === 0) return res.status(404).json({ message: 'Document not found' });
        res.json(result.rows[0]);
      } catch (error) {
        res.status(400).json({ error: error.message });
      }
    });

    // Delete
    router.delete('/:id', async (req, res) => {
      try {
        const result = await query(`DELETE FROM ${modelName} WHERE id = $1 RETURNING *`, [req.params.id]);
        if (result.rows.length === 0) return res.status(404).json({ message: 'Document not found' });
        res.json({ message: 'Document deleted successfully' });
      } catch (error) {
        res.status(500).json({ error: error.message });
      }
    });

    return router;
  }
}

module.exports = new APIGenerationService();

```

### emailService.js

```js
const nodemailer = require('nodemailer');
const handlebars = require('handlebars');
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

class EmailService {
  constructor() {
    this.transporter = nodemailer.createTransport({
      host: process.env.SMTP_HOST,
      port: process.env.SMTP_PORT,
      auth: {
        user: process.env.SMTP_USER,
        pass: process.env.SMTP_PASS
      }
    });
  }

  async sendEmail(to, subject, template, context) {
    const compiledTemplate = handlebars.compile(template);
    const html = compiledTemplate(context);

    const mailOptions = {
      from: process.env.EMAIL_FROM,
      to,
      subject,
      html
    };

    await this.transporter.sendMail(mailOptions);
  }

  async saveTemplate(templateData) {
    const query = 'INSERT INTO email_templates(name, subject, body) VALUES($1, $2, $3) RETURNING *';
    const values = [templateData.name, templateData.subject, templateData.body];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getTemplates() {
    const result = await pool.query('SELECT * FROM email_templates');
    return result.rows;
  }

  async getTemplateByName(name) {
    const result = await pool.query('SELECT * FROM email_templates WHERE name = $1', [name]);
    return result.rows[0];
  }
}

module.exports = new EmailService();

```

### fileService.js

```js
const aws = require('aws-sdk');
const multer = require('multer');
const multerS3 = require('multer-s3');
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

aws.config.update({
  secretAccessKey: process.env.AWS_SECRET_ACCESS_KEY,
  accessKeyId: process.env.AWS_ACCESS_KEY_ID,
  region: process.env.AWS_REGION
});

const s3 = new aws.S3();

const upload = multer({
  storage: multerS3({
    s3: s3,
    bucket: process.env.S3_BUCKET,
    acl: 'public-read',
    metadata: function (req, file, cb) {
      cb(null, {fieldName: file.fieldname});
    },
    key: function (req, file, cb) {
      cb(null, Date.now().toString() + '-' + file.originalname)
    }
  })
});

class FileService {
  async saveFile(fileData) {
    const query = 'INSERT INTO files(filename, originalname, mimetype, size, url, uploadedby) VALUES($1, $2, $3, $4, $5, $6) RETURNING *';
    const values = [fileData.filename, fileData.originalname, fileData.mimetype, fileData.size, fileData.url, fileData.uploadedby];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getFilesByUser(userId) {
    const query = 'SELECT * FROM files WHERE uploadedby = $1';
    const result = await pool.query(query, [userId]);
    return result.rows;
  }
}

module.exports = { upload, FileService: new FileService() };

```

### workflowService.js

```js
// src/services/workflowService.js
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});
const axios = require('axios');

class WorkflowService {
  async executeWorkflow(workflowDefinition, triggerData) {
    let currentData = triggerData;

    for (const step of workflowDefinition.steps) {
      currentData = await this.executeStep(step, currentData);
    }

    return currentData;
  }

  async executeStep(step, data) {
    switch (step.type) {
      case 'transform':
        return this.transformData(step.transformation, data);
      case 'apiCall':
        return this.makeAPICall(step.apiDetails, data);
      case 'condition':
        return this.evaluateCondition(step.condition, data) ? data : null;
      default:
        throw new Error(`Unknown step type: ${step.type}`);
    }
  }

  transformData(transformation, data) {
    const result = {};
    for (const [key, value] of Object.entries(transformation)) {
      result[key] = value.split('.').reduce((o, i) => o[i], data);
    }
    return result;
  }

  async makeAPICall(apiDetails, data) {
    const { url, method, body } = apiDetails;
    const response = await axios({ method, url, data: body });
    return response.data;
  }

  evaluateCondition(condition, data) {
    const { left, operator, right } = condition;
    const leftValue = left.split('.').reduce((o, i) => o[i], data);
    switch (operator) {
      case '==':
        return leftValue == right;
      case '!=':
        return leftValue != right;
      case '>':
        return leftValue > right;
      case '<':
        return leftValue < right;
      default:
        throw new Error(`Unknown operator: ${operator}`);
    }
  }
}

module.exports = new WorkflowService();

```

###### utils

### apiResponse.js

```js
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

```

##### tests

###### integration

### api.test.js

```js
const request = require('supertest');
const app = require('../../src/app');

describe('API Tests', () => {
  it('should return 200 OK for GET /', async () => {
    const res = await request(app).get('/');
    expect(res.statusCode).toBe(200);
  });
});

```

###### unit

### sample.test.js

```js
describe('Sample Test', () => {
  it('should pass', () => {
    expect(true).toBe(true);
  });
});

```

## shared-utils

### generate-ai-tools.js

```js
// generate-ai-tools.js
const generateAITools = () => {
    const aiTools = [
      {
        name: 'SmartContractGenerator',
        description: 'AI-powered contract generation based on project details'
      },
      {
        name: 'AutomaticTimeTracker',
        description: 'AI-driven time tracking using computer vision and activity monitoring'
      },
      {
        name: 'IntelligentInvoicing',
        description: 'Automated invoice creation with smart line item suggestions'
      },
      {
        name: 'PredictiveAnalytics',
        description: 'AI-powered forecasting for project timelines and budgets'
      },
      {
        name: 'ClientInsightEngine',
        description: 'AI analysis of client interactions for relationship management'
      },
      {
        name: 'NLPFormProcessor',
        description: 'Natural Language Processing for form creation and analysis'
      },
      {
        name: 'AutomatedBookkeeper',
        description: 'AI-driven categorization and reconciliation of financial transactions'
      },
      {
        name: 'TaskPrioritizer',
        description: 'AI-powered task prioritization and scheduling optimization'
      },
      {
        name: 'ProjectOptimizer',
        description: 'Machine learning-based project timeline and resource allocation'
      },
      {
        name: 'SentimentAnalyzer',
        description: 'AI-driven analysis of client communication for sentiment insights'
      }
    ];

    aiTools.forEach(tool => {
      generateAIToolFile(tool.name, tool.description);
    });
  };

  const generateAIToolFile = (name, description) => {
    // Generate AI tool integration file
    // Include necessary API calls and data processing logic
    // Save to appropriate directory
  };

  generateAITools();

```

### generate-charts.js

```js
// generate-charts.js
const generateCharts = () => {
    const charts = [
      {
        name: 'RevenueOverTime',
        type: 'LineChart',
        data: 'invoices'
      },
      {
        name: 'ProjectStatus',
        type: 'PieChart',
        data: 'projects'
      },
      {
        name: 'TimeAllocation',
        type: 'BarChart',
        data: 'timeEntries'
      },
      {
        name: 'ExpenseCategories',
        type: 'DoughnutChart',
        data: 'expenses'
      },
      {
        name: 'ClientAcquisition',
        type: 'FunnelChart',
        data: 'clients'
      },
      {
        name: 'TaskCompletion',
        type: 'GanttChart',
        data: 'tasks'
      }
    ];

    charts.forEach(chart => {
      generateChartComponent(chart.name, chart.type, chart.data);
    });
  };

  const generateChartComponent = (name, type, data) => {
    // Generate React component for the chart
    // Include data fetching and processing logic
    // Integrate with a charting library (e.g., Chart.js, D3.js)
    // Save to appropriate directory
  };

  generateCharts();

```

### generate-components.js

```js
// generate-components.js
const generateComponents = () => {
    const components = [
      'Dashboard',
      'ProjectList',
      'ProjectDetails',
      'TaskBoard',
      'TimeTracker',
      'InvoiceGenerator',
      'ProposalBuilder',
      'ContractEditor',
      'ClientPortal',
      'FormBuilder',
      'ExpenseTracker',
      'ReportingDashboard',
      'AIInsights'
    ];

    components.forEach(component => {
      generateComponentFile(component);
    });
  };

  const generateComponentFile = (name) => {
    // Generate React component with basic structure
    // Include AI integration where applicable
    // Save to appropriate directory
  };

  generateComponents();

```

### generate-forms-templates.js

```js
// generate-forms-templates.js
const generateFormsAndTemplates = () => {
    const items = [
      {
        type: 'form',
        name: 'ClientOnboarding'
      },
      {
        type: 'form',
        name: 'ProjectFeedback'
      },
      {
        type: 'template',
        name: 'InvoiceTemplate'
      },
      {
        type: 'template',
        name: 'ProposalTemplate'
      },
      {
        type: 'template',
        name: 'ContractTemplate'
      },
      {
        type: 'template',
        name: 'ProjectBrief'
      }
    ];

    items.forEach(item => {
      if (item.type === 'form') {
        generateFormBuilder(item.name);
      } else {
        generateTemplateBuilder(item.name);
      }
    });
  };

  const generateFormBuilder = (name) => {
    // Generate dynamic form builder component
    // Include drag-and-drop functionality
    // Save to appropriate directory
  };

  const generateTemplateBuilder = (name) => {
    // Generate template builder with customizable sections
    // Include placeholder system for dynamic content
    // Save to appropriate directory
  };

  generateFormsAndTemplates();

```

### generate-mock-data.js

```js
// generate-mock-data.js
const fs = require('fs');
const path = require('path');

function generateMockData(projectName, dataType, count) {
  const projectDir = path.join('/d/Node/projects', projectName, 'server/src/mockData');

  if (!fs.existsSync(projectDir)) {
    fs.mkdirSync(projectDir, { recursive: true });
  }

  let data;

  switch (dataType) {
    case 'users':
      data = generateUsers(count);
      break;
    case 'products':
      data = generateProducts(count);
      break;
    case 'orders':
      data = generateOrders(count);
      break;
    default:
      console.error('Invalid data type');
      return;
  }

  fs.writeFileSync(path.join(projectDir, `${dataType}.json`), JSON.stringify(data, null, 2));
  console.log(`Mock ${dataType} data generated successfully.`);
}

function generateUsers(count) {
  return Array.from({ length: count }, (_, i) => ({
    id: i + 1,
    name: `User ${i + 1}`,
    email: `user${i + 1}@example.com`,
    age: Math.floor(Math.random() * 50) + 18
  }));
}

function generateProducts(count) {
  return Array.from({ length: count }, (_, i) => ({
    id: i + 1,
    name: `Product ${i + 1}`,
    price: parseFloat((Math.random() * 100).toFixed(2)),
    category: ['Electronics', 'Clothing', 'Books', 'Food'][Math.floor(Math.random() * 4)]
  }));
}

function generateOrders(count) {
  return Array.from({ length: count }, (_, i) => ({
    id: i + 1,
    userId: Math.floor(Math.random() * 100) + 1,
    products: Array.from({ length: Math.floor(Math.random() * 5) + 1 }, () => ({
      productId: Math.floor(Math.random() * 100) + 1,
      quantity: Math.floor(Math.random() * 5) + 1
    })),
    totalAmount: parseFloat((Math.random() * 500).toFixed(2)),
    date: new Date(Date.now() - Math.floor(Math.random() * 10000000000)).toISOString()
  }));
}

// Usage
const [,, projectName, dataType, count] = process.argv;
generateMockData(projectName, dataType, parseInt(count) || 10);

```

### generate-models.js

```js
// generate-models.js
const generateModels = () => {
    const models = [
      {
        name: 'User',
        fields: ['name', 'email', 'password', 'role']
      },
      {
        name: 'Client',
        fields: ['name', 'email', 'company', 'projects']
      },
      {
        name: 'Project',
        fields: ['name', 'description', 'client', 'tasks', 'timeline', 'budget']
      },
      {
        name: 'Task',
        fields: ['name', 'description', 'project', 'assignee', 'status', 'dueDate']
      },
      {
        name: 'TimeEntry',
        fields: ['user', 'project', 'task', 'duration', 'date']
      },
      {
        name: 'Invoice',
        fields: ['client', 'project', 'items', 'total', 'status', 'dueDate']
      },
      {
        name: 'Proposal',
        fields: ['client', 'project', 'content', 'status', 'expiryDate']
      },
      {
        name: 'Contract',
        fields: ['client', 'project', 'content', 'status', 'signatureDate']
      },
      {
        name: 'Form',
        fields: ['name', 'fields', 'responses']
      },
      {
        name: 'Expense',
        fields: ['user', 'project', 'amount', 'category', 'date']
      }
    ];

    models.forEach(model => {
      generateModelFile(model.name, model.fields);
    });
  };

  const generateModelFile = (name, fields) => {
    // Generate Mongoose schema and model
    // Save to appropriate directory
  };

  generateModels();

```

### generate-project-readme.js

```js
// utils/generate-project-readme.js
const fs = require('fs');
const path = require('path');

const excludeExtensions = ['.pkl', '.png', '.jpg', '.jpeg', '.svg', '.ico', '.txt'];
const excludeDirectories = ['node_modules', '.git', '.vscode', 'venv', '.bak'];
const excludeFiles = ['package-lock.json'];

function log(message) {
    console.log(`[DEBUG]: ${message}`);
}

function generateReadmeForDirectory(directoryPath, directoryName, depth = 0) {
    let readmeContent = `${'#'.repeat(depth + 1)} ${directoryName}\n\n`;

    const files = fs.readdirSync(directoryPath);
    files.forEach(file => {
        const filePath = path.join(directoryPath, file);
        const stat = fs.statSync(filePath);

        if (stat.isDirectory()) {
            if (!excludeDirectories.includes(file)) {
                log(`Including directory: ${file}`);
                readmeContent += generateReadmeForDirectory(filePath, file, depth + 1);
            } else {
                log(`Excluding directory: ${file}`);
            }
        } else if (stat.isFile()) {
            if (file === 'package.json' || (!excludeFiles.includes(file) && !excludeExtensions.includes(path.extname(file)))) {
                log(`Including file: ${file}`);
                readmeContent += `### ${file}\n\n`;
                readmeContent += '```' + path.extname(file).slice(1) + '\n';
                readmeContent += fs.readFileSync(filePath, 'utf-8') + '\n';
                readmeContent += '```\n\n';
            } else {
                log(`Excluding file: ${file}`);
            }
        }
    });

    return readmeContent;
}

const rootDirs = ['/Node'];
let fullReadmeContent = '# Project Documentation\n\n';

rootDirs.forEach(dir => {
    fullReadmeContent += generateReadmeForDirectory(dir, path.basename(dir));
});

fs.writeFileSync(path.join('/Node', 'README.md'), fullReadmeContent);
console.log('/Node/README.md generated successfully.');

```

### generate-routes.js

```js
// generate-routes.js
const generateRoutes = () => {
    const routes = [
      { path: '/api/users', methods: ['GET', 'POST', 'PUT', 'DELETE'] },
      { path: '/api/clients', methods: ['GET', 'POST', 'PUT', 'DELETE'] },
      { path: '/api/projects', methods: ['GET', 'POST', 'PUT', 'DELETE'] },
      { path: '/api/tasks', methods: ['GET', 'POST', 'PUT', 'DELETE'] },
      { path: '/api/time-entries', methods: ['GET', 'POST', 'PUT', 'DELETE'] },
      { path: '/api/invoices', methods: ['GET', 'POST', 'PUT', 'DELETE'] },
      { path: '/api/proposals', methods: ['GET', 'POST', 'PUT', 'DELETE'] },
      { path: '/api/contracts', methods: ['GET', 'POST', 'PUT', 'DELETE'] },
      { path: '/api/forms', methods: ['GET', 'POST', 'PUT', 'DELETE'] },
      { path: '/api/expenses', methods: ['GET', 'POST', 'PUT', 'DELETE'] },
      { path: '/api/reports', methods: ['GET'] },
      { path: '/api/ai-insights', methods: ['GET'] }
    ];

    routes.forEach(route => {
      generateRouteFile(route.path, route.methods);
    });
  };

  const generateRouteFile = (path, methods) => {
    // Generate Express.js route file with CRUD operations
    // Include input validation and error handling
    // Save to appropriate directory
  };

  generateRoutes();

```

### generate-structure.js

```js
// generate-structure.js
const fs = require('fs');
const path = require('path');

const outputFile = '/Node/PROJECT_STRUCTURE.txt';
const excludeDirs = ['node_modules', '.git', '.vscode', 'venv', '.github', '.bak'];
const rootDirs = ['/Node'];

function generateStructure(dirPath, prefix = '') {
    const files = fs.readdirSync(dirPath);
    let treeContent = '';
    files.forEach((file, index) => {
        const filePath = path.join(dirPath, file);
        const stats = fs.statSync(filePath);
        const isLast = index === files.length - 1;
        const newPrefix = prefix + (isLast ? '└── ' : '├── ');

        if (!excludeDirs.includes(file)) {
            treeContent += `${prefix}${newPrefix}${file}\n`;
            if (stats.isDirectory()) {
                treeContent += generateStructure(filePath, prefix + (isLast ? '    ' : '│   '));
            }
        }
    });
    return treeContent;
}

let fullTreeContent = 'Project Structure:\n';

rootDirs.forEach(dir => {
    fullTreeContent += `\n${path.basename(dir)}/\n`;
    fullTreeContent += generateStructure(dir);
});

fs.writeFileSync(outputFile, fullTreeContent);
console.log(`${outputFile} generated successfully.`);

```

### package.json

```json
{
  "name": "shared-utils",
  "version": "1.0.0",
  "main": "generate-project-readme.js",
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "keywords": [],
  "author": "",
  "license": "ISC",
  "description": ""
}

```

## utils

### continue-master-setup.sh

```sh
#!/bin/bash
# continue-master-setup.sh

set -euo pipefail

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

project_name=$1
log "$project_name"

# Parse command line options
verbose=false
while getopts "v" opt; do
  case $opt in
    v) verbose=true ;;
    *) echo "Usage: $0 [-v] <project-name>"; exit 1 ;;
  esac
done
shift $((OPTIND-1))

if $verbose; then
  set -x
fi

if [ -z "$project_name" ]; then
  echo "Usage: $0 [-v] <project-name>"
  exit 1
fi

project_dir="/d/Node/projects/$project_name"
utils_dir="/d/Node/utils"

run_script() {
  local script=$1
  shift
  log "Running $script..."
  if [ -f "$utils_dir/$script" ]; then
    if ! "$utils_dir/$script" "$@"; then
      error_exit "Script $script failed. Stopping setup."
    fi
  else
    log "Warning: $script not found. Skipping..."
  fi
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

cleanup() {
  log "Setup interrupted. Cleaning up..."
  # Add cleanup actions here
  # For example, you might want to remove partially created directories
  # rm -rf "$project_dir"
}

trap cleanup EXIT

# Client setup
run_script setup-redux.sh "$project_dir"
# Server setup
read -s -p "Enter PostgreSQL password for ${project_name}_user: " db_password
echo
run_script setup-postgresql.sh "$project_name" "${project_name}_user" "$db_password"
run_script setup-auth.sh "$project_name"
run_script run-migrations.sh "$project_name" "${project_name}_user" "$db_password"
run_script enhance-error-handling.sh "$project_name"

# API Route setup
read -p "Do you want to create an API route? (y/n) " create_route
if [[ $create_route =~ ^[Yy]$ ]]; then
  read -p "Enter the route name: " route_name
  run_script create-api-route.sh "$project_name" "$route_name"
fi

# Noloco-like functionality setup
read -p "Do you want to set up Noloco-like functionalities? (y/n) " setup_noloco
if [[ $setup_noloco =~ ^[Yy]$ ]]; then
  run_script setup-data-modeling.sh "$project_dir"
  run_script setup-api-generation.sh "$project_dir"
  run_script setup-rbac.sh "$project_dir"
  run_script setup-workflows.sh "$project_dir"
  run_script setup-dynamic-ui.sh "$project_dir"
  run_script setup-file-management.sh "$project_dir"
  run_script setup-email-templates.sh "$project_dir"
  run_script setup-dashboard.sh "$project_dir"
  run_script setup-noloco-theme.sh "$project_dir" "both"
fi

log "Project setup complete."
echo "Project $project_name has been set up successfully!"

# Remove the trap before exiting normally
trap - EXIT

```

### create-api-route.sh

```sh
#!/bin/bash

# create-api-route.sh
# Usage: create-api-route.sh <project-name> <route-name>
# Description: Creates a new API route with controller and model for PostgreSQL

set -euo pipefail

if [ $# -ne 2 ]; then
    echo "Usage: $0 <project-name> <route-name>"
    exit 1
fi

project_name=$1
route_name=$2

project_dir="/d/Node/projects/$project_name"
src_dir="$project_dir/server/src"
routes_dir="$src_dir/routes"
controllers_dir="$src_dir/controllers"
models_dir="$src_dir/models"

# Ensure directories exist
mkdir -p "$routes_dir" "$controllers_dir" "$models_dir"

# Create route file
cat << EOF > "$routes_dir/${route_name}.js"
const express = require('express');
const router = express.Router();
const ${route_name}Controller = require('../controllers/${route_name}');

router.get('/', ${route_name}Controller.getAll);
router.post('/', ${route_name}Controller.create);
router.get('/:id', ${route_name}Controller.getById);
router.put('/:id', ${route_name}Controller.update);
router.delete('/:id', ${route_name}Controller.delete);

module.exports = router;
EOF

# Create controller file
cat << EOF > "$controllers_dir/${route_name}.js"
const ${route_name}Model = require('../models/${route_name}');

exports.getAll = async (req, res) => {
  try {
    const items = await ${route_name}Model.findAll();
    res.json(items);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

exports.create = async (req, res) => {
  try {
    const newItem = await ${route_name}Model.create(req.body);
    res.status(201).json(newItem);
  } catch (error) {
    res.status(400).json({ message: error.message });
  }
};

exports.getById = async (req, res) => {
  try {
    const item = await ${route_name}Model.findByPk(req.params.id);
    if (!item) {
      return res.status(404).json({ message: 'Item not found' });
    }
    res.json(item);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

exports.update = async (req, res) => {
  try {
    const [updated] = await ${route_name}Model.update(req.body, {
      where: { id: req.params.id }
    });
    if (updated) {
      const updatedItem = await ${route_name}Model.findByPk(req.params.id);
      res.json(updatedItem);
    } else {
      res.status(404).json({ message: 'Item not found' });
    }
  } catch (error) {
    res.status(400).json({ message: error.message });
  }
};

exports.delete = async (req, res) => {
  try {
    const deleted = await ${route_name}Model.destroy({
      where: { id: req.params.id }
    });
    if (deleted) {
      res.json({ message: 'Item deleted' });
    } else {
      res.status(404).json({ message: 'Item not found' });
    }
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};
EOF

# Create model file
cat << EOF > "$models_dir/${route_name}.js"
const { DataTypes } = require('sequelize');
const sequelize = require('../config/database');

const ${route_name} = sequelize.define('${route_name}', {
  // Define your model fields here
  name: {
    type: DataTypes.STRING,
    allowNull: false
  },
  // Add more fields as needed
});

module.exports = ${route_name};
EOF

echo "API route, controller, and model for $route_name created successfully in $project_name"

```

### FULL_README.md

```md
# Project Documentation

# Node

## git

### Node

### LICENSE

```
MIT License

Copyright (c) 2024 Haris Babic

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

```

## projects

### ultimate

### .env

```

```

### .gitignore

```
node_modules/
.env
*.log
build/

```

#### client

### .babelrc

```
{
  "presets": [
    ["@babel/preset-env", {
      "targets": {
        "browsers": [">0.25%", "not ie 11", "not op_mini all"]
      }
    }],
    "@babel/preset-react"
  ],
  "plugins": [
    "@babel/plugin-proposal-class-properties",
    "@babel/plugin-transform-runtime"
  ]
}

```

### .gitignore

```
# See https://help.github.com/articles/ignoring-files/ for more about ignoring files.

# dependencies
/node_modules
/.pnp
.pnp.js

# testing
/coverage

# production
/build

# misc
.DS_Store
.env.local
.env.development.local
.env.test.local
.env.production.local

npm-debug.log*
yarn-debug.log*
yarn-error.log*

*storybook.log
```

##### .storybook

### main.js

```js
/** @type { import('@storybook/react-webpack5').StorybookConfig } */
const config = {
  stories: ["../src/**/*.mdx", "../src/**/*.stories.@(js|jsx|mjs|ts|tsx)"],
  addons: [
    "@storybook/preset-create-react-app",
    "@storybook/addon-onboarding",
    "@storybook/addon-links",
    "@storybook/addon-essentials",
    "@chromatic-com/storybook",
    "@storybook/addon-interactions",
  ],
  framework: {
    name: "@storybook/react-webpack5",
    options: {},
  },
  staticDirs: ["..\\public"],
};
export default config;

```

### preview.js

```js
/** @type { import('@storybook/react').Preview } */
const preview = {
  parameters: {
    controls: {
      matchers: {
        color: /(background|color)$/i,
        date: /Date$/i,
      },
    },
  },
};

export default preview;

```

### components.json

```json
{
  "style": "new-york",
  "rsc": false,
  "tsx": true,
  "tailwind": {
    "config": "tailwind.config.js",
    "css": "src/index.css",
    "baseColor": "slate",
    "cssVariables": true
  },
  "aliases": {
    "components": "@/components",
    "utils": "@/lib/utils"
  }
}
```

### package.json

```json
{
  "name": "client",
  "version": "0.1.0",
  "private": true,
  "dependencies": {
    "@radix-ui/react-icons": "^1.3.0",
    "@reduxjs/toolkit": "^2.2.7",
    "@testing-library/jest-dom": "^5.17.0",
    "@testing-library/react": "^13.4.0",
    "@testing-library/user-event": "^13.5.0",
    "axios": "^1.7.3",
    "class-variance-authority": "^0.7.0",
    "clsx": "^2.1.1",
    "framer-motion": "^11.3.21",
    "i18next": "^23.12.2",
    "i18next-browser-languagedetector": "^8.0.0",
    "i18next-http-backend": "^2.5.2",
    "react": "^18.3.1",
    "react-dom": "^18.3.1",
    "react-helmet-async": "^2.0.5",
    "react-i18next": "^15.0.0",
    "react-icons": "^4.12.0",
    "react-redux": "^9.1.2",
    "react-router-dom": "^6.26.0",
    "react-scripts": "5.0.1",
    "redux": "^5.0.1",
    "sass": "^1.77.8",
    "styled-components": "^5.3.11",
    "tailwind-merge": "^2.4.0",
    "tailwindcss-animate": "^1.0.7",
    "web-vitals": "^2.1.4",
    "workbox-window": "^7.1.0"
  },
  "scripts": {
    "start": "react-scripts start",
    "build": "react-scripts build",
    "test": "react-scripts test",
    "eject": "react-scripts eject",
    "sass": "sass src/styles/main.scss src/styles/main.css",
    "sass:watch": "sass src/styles/main.scss src/styles/main.css --watch",
    "generate-sitemap": "node scripts/generate-sitemap.js",
    "storybook": "storybook dev -p 6006",
    "build-storybook": "storybook build"
  },
  "eslintConfig": {
    "extends": [
      "react-app",
      "react-app/jest",
      "plugin:storybook/recommended"
    ]
  },
  "browserslist": {
    "production": [
      ">0.2%",
      "not dead",
      "not op_mini all"
    ],
    "development": [
      "last 1 chrome version",
      "last 1 firefox version",
      "last 1 safari version"
    ]
  },
  "devDependencies": {
    "@chromatic-com/storybook": "^1.6.1",
    "@storybook/addon-essentials": "^8.2.7",
    "@storybook/addon-interactions": "^8.2.7",
    "@storybook/addon-links": "^8.2.7",
    "@storybook/addon-onboarding": "^8.2.7",
    "@storybook/blocks": "^8.2.7",
    "@storybook/preset-create-react-app": "^8.2.7",
    "@storybook/react": "^8.2.7",
    "@storybook/react-webpack5": "^8.2.7",
    "@storybook/test": "^8.2.7",
    "autoprefixer": "^10.4.20",
    "eslint-plugin-storybook": "^0.8.0",
    "postcss": "^8.4.41",
    "prop-types": "^15.8.1",
    "storybook": "^8.2.7",
    "tailwindcss": "^3.4.7",
    "webpack": "^5.93.0",
    "workbox-webpack-plugin": "^7.1.0"
  }
}

```

### postcss.config.js

```js
module.exports = {
  plugins: {
    tailwindcss: {},
    autoprefixer: {},
  },
}

```

##### public

### index.html

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <link rel="icon" href="%PUBLIC_URL%/favicon.ico" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="theme-color" content="#000000" />
    <meta
      name="description"
      content="Web site created using create-react-app"
    />
    <link rel="apple-touch-icon" href="%PUBLIC_URL%/logo192.png" />
    <!--
      manifest.json provides metadata used when your web app is installed on a
      user's mobile device or desktop. See https://developers.google.com/web/fundamentals/web-app-manifest/
    -->
    <link rel="manifest" href="%PUBLIC_URL%/manifest.json" />
    <!--
      Notice the use of %PUBLIC_URL% in the tags above.
      It will be replaced with the URL of the `public` folder during the build.
      Only files inside the `public` folder can be referenced from the HTML.

      Unlike "/favicon.ico" or "favicon.ico", "%PUBLIC_URL%/favicon.ico" will
      work correctly both with client-side routing and a non-root public URL.
      Learn how to configure a non-root public URL by running `npm run build`.
    -->
    <title>React App</title>
    <link rel="manifest" href="%PUBLIC_URL%/manifest.json" />
    <meta name="theme-color" content="#000000" />
  </head>
  <body>
    <noscript>You need to enable JavaScript to run this app.</noscript>
    <div id="root"></div>
    <!--
      This HTML file is a template.
      If you open it directly in the browser, you will see an empty page.

      You can add webfonts, meta tags, or analytics to this file.
      The build step will place the bundled scripts into the <body> tag.

      To begin the development, run `npm start` or `yarn start`.
      To create a production bundle, use `npm run build` or `yarn build`.
    -->
  </body>
</html>

```

###### locales

####### en

### translation.json

```json
{"hello": "Hello", "welcome": "Welcome to our app!"}

```

####### es

### translation.json

```json
{"hello": "Hola", "welcome": "¡Bienvenido a nuestra aplicación!"}

```

### manifest.json

```json
{
  "short_name": "Your App",
  "name": "Your Application Name",
  "icons": [
    {
      "src": "favicon.ico",
      "sizes": "64x64 32x32 24x24 16x16",
      "type": "image/x-icon"
    },
    {
      "src": "logo192.png",
      "type": "image/png",
      "sizes": "192x192"
    },
    {
      "src": "logo512.png",
      "type": "image/png",
      "sizes": "512x512"
    }
  ],
  "start_url": ".",
  "display": "standalone",
  "theme_color": "#000000",
  "background_color": "#ffffff"
}

```

### sitemap.xml

```xml
<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">

  <url>
    <loc>http://localhost:3000/</loc>
    <lastmod>2024-08-07</lastmod>
    <changefreq>weekly</changefreq>
    <priority>0.8</priority>
  </url>

  <url>
    <loc>http://localhost:3000/register</loc>
    <lastmod>2024-08-07</lastmod>
    <changefreq>weekly</changefreq>
    <priority>0.8</priority>
  </url>

</urlset>
```

### README.md

```md
# Getting Started with Create React App

This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).

## Available Scripts

In the project directory, you can run:

### `npm start`

Runs the app in the development mode.\
Open [http://localhost:3000](http://localhost:3000) to view it in your browser.

The page will reload when you make changes.\
You may also see any lint errors in the console.

### `npm test`

Launches the test runner in the interactive watch mode.\
See the section about [running tests](https://facebook.github.io/create-react-app/docs/running-tests) for more information.

### `npm run build`

Builds the app for production to the `build` folder.\
It correctly bundles React in production mode and optimizes the build for the best performance.

The build is minified and the filenames include the hashes.\
Your app is ready to be deployed!

See the section about [deployment](https://facebook.github.io/create-react-app/docs/deployment) for more information.

### `npm run eject`

**Note: this is a one-way operation. Once you `eject`, you can't go back!**

If you aren't satisfied with the build tool and configuration choices, you can `eject` at any time. This command will remove the single build dependency from your project.

Instead, it will copy all the configuration files and the transitive dependencies (webpack, Babel, ESLint, etc) right into your project so you have full control over them. All of the commands except `eject` will still work, but they will point to the copied scripts so you can tweak them. At this point you're on your own.

You don't have to ever use `eject`. The curated feature set is suitable for small and middle deployments, and you shouldn't feel obligated to use this feature. However we understand that this tool wouldn't be useful if you couldn't customize it when you are ready for it.

## Learn More

You can learn more in the [Create React App documentation](https://facebook.github.io/create-react-app/docs/getting-started).

To learn React, check out the [React documentation](https://reactjs.org/).

### Code Splitting

This section has moved here: [https://facebook.github.io/create-react-app/docs/code-splitting](https://facebook.github.io/create-react-app/docs/code-splitting)

### Analyzing the Bundle Size

This section has moved here: [https://facebook.github.io/create-react-app/docs/analyzing-the-bundle-size](https://facebook.github.io/create-react-app/docs/analyzing-the-bundle-size)

### Making a Progressive Web App

This section has moved here: [https://facebook.github.io/create-react-app/docs/making-a-progressive-web-app](https://facebook.github.io/create-react-app/docs/making-a-progressive-web-app)

### Advanced Configuration

This section has moved here: [https://facebook.github.io/create-react-app/docs/advanced-configuration](https://facebook.github.io/create-react-app/docs/advanced-configuration)

### Deployment

This section has moved here: [https://facebook.github.io/create-react-app/docs/deployment](https://facebook.github.io/create-react-app/docs/deployment)

### `npm run build` fails to minify

This section has moved here: [https://facebook.github.io/create-react-app/docs/troubleshooting#npm-run-build-fails-to-minify](https://facebook.github.io/create-react-app/docs/troubleshooting#npm-run-build-fails-to-minify)

```

##### scripts

### generate-sitemap.js

```js
const fs = require('fs');
const path = require('path');
require('dotenv').config({ path: path.join(__dirname, '../../.env') });

const baseUrl = process.env.BASE_URL || `http://localhost:${process.env.PORT || 3000}`;
const publicDir = path.join(__dirname, '../public');

const getPages = () => {
  // This is a simplified example. In reality, you'd want to
  // generate this list based on your actual routes.
  return ['', 'register'];
};

const generateSitemap = () => {
  const pages = getPages();
  const sitemap = `<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
  ${pages.map(page => `
  <url>
    <loc>${baseUrl}/${page}</loc>
    <lastmod>${new Date().toISOString().split('T')[0]}</lastmod>
    <changefreq>weekly</changefreq>
    <priority>0.8</priority>
  </url>
  `).join('')}
</urlset>`;

  fs.writeFileSync(path.join(publicDir, 'sitemap.xml'), sitemap);
  console.log('Sitemap generated successfully');

  // Generate robots.txt
  const robotsTxt = `User-agent: *
Allow: /

Sitemap: ${baseUrl}/sitemap.xml
`;
  fs.writeFileSync(path.join(publicDir, 'robots.txt'), robotsTxt);
  console.log('robots.txt generated successfully');
};

generateSitemap();

```

##### src

###### @

####### components

######## ui

### alert.tsx

```tsx
import * as React from "react"
import { cva, VariantProps } from "class-variance-authority"
import { cn } from "@/lib/utils"

const alertVariants = cva(
  "relative w-full rounded-lg border p-4 [&>svg~*]:pl-7 [&>svg+div]:translate-y-[-3px] [&>svg]:absolute [&>svg]:left-4 [&>svg]:top-4 [&>svg]:text-foreground",
  {
    variants: {
      variant: {
        default: "bg-background text-foreground",
        destructive:
          "border-destructive/50 text-destructive dark:border-destructive [&>svg]:text-destructive",
      },
    },
    defaultVariants: {
      variant: "default",
    },
  }
)

const Alert = React.forwardRef<
  HTMLDivElement,
  React.HTMLAttributes<HTMLDivElement> & VariantProps<typeof alertVariants>
>(({ className, variant, ...props }, ref) => (
  <div
    ref={ref}
    role="alert"
    className={cn(alertVariants({ variant }), className)}
    {...props}
  />
))
Alert.displayName = "Alert"

const AlertTitle = React.forwardRef<
  HTMLParagraphElement,
  React.HTMLAttributes<HTMLHeadingElement>
>(({ className, ...props }, ref) => (
  <h5
    ref={ref}
    className={cn("mb-1 font-medium leading-none tracking-tight", className)}
    {...props}
  />
))
AlertTitle.displayName = "AlertTitle"

const AlertDescription = React.forwardRef<
  HTMLParagraphElement,
  React.HTMLAttributes<HTMLParagraphElement>
>(({ className, ...props }, ref) => (
  <div
    ref={ref}
    className={cn("text-sm [&_p]:leading-relaxed", className)}
    {...props}
  />
))
AlertDescription.displayName = "AlertDescription"

export { Alert, AlertTitle, AlertDescription }

```

####### lib

### utils.ts

```ts
import { type ClassValue, clsx } from "clsx"
import { twMerge } from "tailwind-merge"

export function cn(...inputs: ClassValue[]) {
  return twMerge(clsx(inputs))
}

```

### App.css

```css
.App {
  text-align: center;
}

.App-logo {
  height: 40vmin;
  pointer-events: none;
}

@media (prefers-reduced-motion: no-preference) {
  .App-logo {
    animation: App-logo-spin infinite 20s linear;
  }
}

.App-header {
  background-color: #282c34;
  min-height: 100vh;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  font-size: calc(10px + 2vmin);
  color: white;
}

.App-link {
  color: #61dafb;
}

@keyframes App-logo-spin {
  from {
    transform: rotate(0deg);
  }
  to {
    transform: rotate(360deg);
  }
}

```

### App.js

```js
import React from 'react';

const App = () => {
  return (
    <div>
      {/* Your app content here */}
    </div>
  );
};

export default App;

```

### App.test.js

```js
import { render, screen } from '@testing-library/react';
import App from './App';

test('renders learn react link', () => {
  render(<App />);
  const linkElement = screen.getByText(/learn react/i);
  expect(linkElement).toBeInTheDocument();
});

```

###### components

### AnimatedBox.js

```js
import React from 'react';
import { motion } from 'framer-motion';

const AnimatedBox = () => (
  <motion.div
    initial={{ opacity: 0, scale: 0.5 }}
    animate={{ opacity: 1, scale: 1 }}
    transition={{ duration: 0.5 }}
    whileHover={{ scale: 1.1 }}
    whileTap={{ scale: 0.9 }}
    style={{
      width: 100,
      height: 100,
      background: 'blue',
      borderRadius: 10,
    }}
  />
);

export default AnimatedBox;

```

####### Dashboard

### Dashboard.js

```js
import React, { useState, useEffect } from 'react';
import DynamicTable from '../DynamicUI/DynamicTable';

const Dashboard = () => {
  const [dashboardData, setDashboardData] = useState({});

  useEffect(() => {
    // Fetch dashboard data from API
    const fetchDashboardData = async () => {
      // Replace with actual API call
      const response = await fetch('/api/dashboard');
      const data = await response.json();
      setDashboardData(data);
    };

    fetchDashboardData();
  }, []);

  return (
    <div>
      <h1>Dashboard</h1>
      {Object.entries(dashboardData).map(([key, value]) => (
        <div key={key}>
          <h2>{key}</h2>
          {Array.isArray(value) ? (
            <DynamicTable
              data={value}
              columns={Object.keys(value[0]).map(col => ({ key: col, label: col }))}
            />
          ) : (
            <p>{value}</p>
          )}
        </div>
      ))}
    </div>
  );
};

export default Dashboard;

```

### DashboardWidget.js

```js
import React from 'react';

const DashboardWidget = ({ title, value, icon }) => {
  return (
    <div className="dashboard-widget">
      <div className="widget-icon">{icon}</div>
      <div className="widget-content">
        <h3>{title}</h3>
        <p>{value}</p>
      </div>
    </div>
  );
};

export default DashboardWidget;

```

####### DynamicUI

### DynamicForm.js

```js
import React from 'react';
import { useForm } from 'react-hook-form';

const DynamicForm = ({ fields, onSubmit }) => {
  const { register, handleSubmit, formState: { errors } } = useForm();

  const renderField = (field) => {
    switch (field.type) {
      case 'text':
      case 'email':
      case 'number':
        return (
          <input
            type={field.type}
            {...register(field.name, field.validation)}
            placeholder={field.placeholder}
          />
        );
      case 'select':
        return (
          <select {...register(field.name, field.validation)}>
            {field.options.map((option, index) => (
              <option key={index} value={option.value}>
                {option.label}
              </option>
            ))}
          </select>
        );
      case 'textarea':
        return (
          <textarea
            {...register(field.name, field.validation)}
            placeholder={field.placeholder}
          />
        );
      default:
        return null;
    }
  };

  return (
    <form onSubmit={handleSubmit(onSubmit)}>
      {fields.map((field, index) => (
        <div key={index}>
          <label>{field.label}</label>
          {renderField(field)}
          {errors[field.name] && <span>{errors[field.name].message}</span>}
        </div>
      ))}
      <button type="submit">Submit</button>
    </form>
  );
};

export default DynamicForm;

```

### DynamicTable.js

```js
import React from 'react';

const DynamicTable = ({ data, columns }) => {
  return (
    <table>
      <thead>
        <tr>
          {columns.map((column, index) => (
            <th key={index}>{column.label}</th>
          ))}
        </tr>
      </thead>
      <tbody>
        {data.map((row, rowIndex) => (
          <tr key={rowIndex}>
            {columns.map((column, columnIndex) => (
              <td key={columnIndex}>{row[column.key]}</td>
            ))}
          </tr>
        ))}
      </tbody>
    </table>
  );
};

export default DynamicTable;

```

### FocusTrap.js

```js
import React, { useRef, useEffect } from 'react';

const FocusTrap = ({ children }) => {
  const trapRef = useRef(null);

  useEffect(() => {
    const trapElement = trapRef.current;
    const focusableElements = trapElement.querySelectorAll(
      'button, [href], input, select, textarea, [tabindex]:not([tabindex="-1"])'
    );
    const firstElement = focusableElements[0];
    const lastElement = focusableElements[focusableElements.length - 1];

    const handleKeyDown = (e) => {
      if (e.key === 'Tab') {
        if (e.shiftKey && document.activeElement === firstElement) {
          e.preventDefault();
          lastElement.focus();
        } else if (!e.shiftKey && document.activeElement === lastElement) {
          e.preventDefault();
          firstElement.focus();
        }
      }
    };

    trapElement.addEventListener('keydown', handleKeyDown);
    return () => trapElement.removeEventListener('keydown', handleKeyDown);
  }, []);

  return <div ref={trapRef}>{children}</div>;
};

export default FocusTrap;

```

### LanguageSwitcher.js

```js
import React from 'react';
import { useTranslation } from 'react-i18next';

const LanguageSwitcher = () => {
  const { i18n } = useTranslation();

  const changeLanguage = (lng) => {
    i18n.changeLanguage(lng);
  };

  return (
    <div>
      <button onClick={() => changeLanguage('en')}>English</button>
      <button onClick={() => changeLanguage('es')}>Español</button>
    </div>
  );
};

export default LanguageSwitcher;

```

####### Noloco

### Button.js

```js
import styled from 'styled-components';

const Button = styled.button`
  background-color: ${props => props.theme.colors.secondary};
  color: white;
  border: none;
  padding: 10px 20px;
  border-radius: 4px;
  font-weight: 600;
  cursor: pointer;
  transition: background-color 0.3s ease;

  &:hover {
    background-color: ${props => props.theme.colors.primary};
  }
`;

export default Button;

```

### Card.js

```js
import styled from 'styled-components';

const Card = styled.div`
  background-color: white;
  border-radius: 8px;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  padding: 20px;
  margin-bottom: 20px;
`;

export default Card;

```

### Container.js

```js
import styled from 'styled-components';

const Container = styled.div`
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 20px;
`;

export default Container;

```

### ResponsiveGrid.js

```js
import styled from 'styled-components';
import { mediaQueries } from '../styles/breakpoints';

const ResponsiveGrid = styled.div`
  display: grid;
  grid-template-columns: 1fr;
  gap: 1rem;

  ${mediaQueries.tablet} {
    grid-template-columns: repeat(2, 1fr);
  }

  ${mediaQueries.desktop} {
    grid-template-columns: repeat(3, 1fr);
  }

  ${mediaQueries.largeDesktop} {
    grid-template-columns: repeat(4, 1fr);
  }
`;

export default ResponsiveGrid;

```

### SEO.js

```js
import React from 'react';
import { Helmet } from 'react-helmet-async';

const SEO = ({ title, description, keywords, image, url }) => (
  <Helmet>
    <title>{title}</title>
    <meta name="description" content={description} />
    <meta name="keywords" content={keywords} />
    <meta property="og:title" content={title} />
    <meta property="og:description" content={description} />
    <meta property="og:image" content={image} />
    <meta property="og:url" content={url} />
    <meta property="og:type" content="website" />
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:title" content={title} />
    <meta name="twitter:description" content={description} />
    <meta name="twitter:image" content={image} />
    <link rel="canonical" href={url} />
  </Helmet>
);

export default SEO;

```

###### i18n

### i18n.js

```js
import i18n from 'i18next';
import { initReactI18next } from 'react-i18next';
import Backend from 'i18next-http-backend';
import LanguageDetector from 'i18next-browser-languagedetector';

i18n
  .use(Backend)
  .use(LanguageDetector)
  .use(initReactI18next)
  .init({
    fallbackLng: 'en',
    debug: process.env.NODE_ENV !== 'production',
    interpolation: {
      escapeValue: false,
    },
    backend: {
      loadPath: '/locales/{{lng}}/{{ns}}.json',
    },
  });

export default i18n;

```

### index.css

```css
@tailwind base;
@tailwind components;
@tailwind utilities;

@layer base {
  :root {
    --background: 0 0% 100%;
    --foreground: 222.2 84% 4.9%;
    --card: 0 0% 100%;
    --card-foreground: 222.2 84% 4.9%;
    --popover: 0 0% 100%;
    --popover-foreground: 222.2 84% 4.9%;
    --primary: 222.2 47.4% 11.2%;
    --primary-foreground: 210 40% 98%;
    --secondary: 210 40% 96.1%;
    --secondary-foreground: 222.2 47.4% 11.2%;
    --muted: 210 40% 96.1%;
    --muted-foreground: 215.4 16.3% 46.9%;
    --accent: 210 40% 96.1%;
    --accent-foreground: 222.2 47.4% 11.2%;
    --destructive: 0 84.2% 60.2%;
    --destructive-foreground: 210 40% 98%;
    --border: 214.3 31.8% 91.4%;
    --input: 214.3 31.8% 91.4%;
    --ring: 222.2 84% 4.9%;
    --radius: 0.5rem;
    --chart-1: 12 76% 61%;
    --chart-2: 173 58% 39%;
    --chart-3: 197 37% 24%;
    --chart-4: 43 74% 66%;
    --chart-5: 27 87% 67%;
  }

  .dark {
    --background: 222.2 84% 4.9%;
    --foreground: 210 40% 98%;
    --card: 222.2 84% 4.9%;
    --card-foreground: 210 40% 98%;
    --popover: 222.2 84% 4.9%;
    --popover-foreground: 210 40% 98%;
    --primary: 210 40% 98%;
    --primary-foreground: 222.2 47.4% 11.2%;
    --secondary: 217.2 32.6% 17.5%;
    --secondary-foreground: 210 40% 98%;
    --muted: 217.2 32.6% 17.5%;
    --muted-foreground: 215 20.2% 65.1%;
    --accent: 217.2 32.6% 17.5%;
    --accent-foreground: 210 40% 98%;
    --destructive: 0 62.8% 30.6%;
    --destructive-foreground: 210 40% 98%;
    --border: 217.2 32.6% 17.5%;
    --input: 217.2 32.6% 17.5%;
    --ring: 212.7 26.8% 83.9%;
    --chart-1: 220 70% 50%;
    --chart-2: 160 60% 45%;
    --chart-3: 30 80% 55%;
    --chart-4: 280 65% 60%;
    --chart-5: 340 75% 55%;
  }
}

@layer base {
  * {
    @apply border-border;
  }
  body {
    @apply bg-background text-foreground;
  }
}
```

### index.js

```js
import React from 'react';
import ReactDOM from 'react-dom/client';
import { Provider } from 'react-redux';
import store from './redux/store';
import App from './App';
import './index.css';

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <React.StrictMode>
    <Provider store={store}>
      <App />
    </Provider>
  </React.StrictMode>
);

```

###### layouts

### DashboardLayout.js

```js
import React from 'react';
import styled from 'styled-components';

const DashboardWrapper = styled.div`
  display: flex;
  flex-direction: column;
  min-height: 100vh;
`;

const Header = styled.header`
  padding: 1rem;
  background-color: ${({ theme }) => theme.colors.background};
`;

const Main = styled.main`
  flex: 1;
  padding: 1rem;
`;

const Footer = styled.footer`
  padding: 1rem;
  background-color: ${({ theme }) => theme.colors.background};
`;

const DashboardLayout = ({ children }) => (
  <DashboardWrapper>
    <Header>Header</Header>
    <Main>{children}</Main>
    <Footer>Footer</Footer>
  </DashboardWrapper>
);

export default DashboardLayout;

```

###### redux

####### slices

### exampleSlice.js

```js
import { createSlice } from '@reduxjs/toolkit';

const initialState = {
  value: 0,
};

const exampleSlice = createSlice({
  name: 'example',
  initialState,
  reducers: {
    increment: (state) => {
      state.value += 1;
    },
    decrement: (state) => {
      state.value -= 1;
    },
  },
});

export const { increment, decrement } = exampleSlice.actions;
export default exampleSlice.reducer;

```

### index.js

```js
import { combineReducers } from 'redux';
import exampleSlice from './exampleSlice';

const rootReducer = combineReducers({
  example: exampleSlice,
});

export default rootReducer;

```

### store.js

```js
import { configureStore } from '@reduxjs/toolkit';
import rootReducer from './slices';

const store = configureStore({
  reducer: rootReducer,
  devTools: process.env.NODE_ENV !== 'production',
});

export default store;

```

### reportWebVitals.js

```js
const reportWebVitals = onPerfEntry => {
  if (onPerfEntry && onPerfEntry instanceof Function) {
    import('web-vitals').then(({ getCLS, getFID, getFCP, getLCP, getTTFB }) => {
      getCLS(onPerfEntry);
      getFID(onPerfEntry);
      getFCP(onPerfEntry);
      getLCP(onPerfEntry);
      getTTFB(onPerfEntry);
    });
  }
};

export default reportWebVitals;

```

###### services

### apiService.js

```js
import axios from 'axios';

const API_BASE_URL = process.env.REACT_APP_API_BASE_URL || 'http://localhost:3000/api';

const apiService = {
  // Previous methods remain the same

  // Add a new method for handling file uploads
  upload: async (endpoint, file, onUploadProgress) => {
    const formData = new FormData();
    formData.append('file', file);

    try {
      const response = await axios.post(`${API_BASE_URL}/${endpoint}`, formData, {
        headers: {
          'Content-Type': 'multipart/form-data'
        },
        onUploadProgress
      });
      return response.data;
    } catch (error) {
      console.error('Error uploading file:', error);
      throw error;
    }
  },

  // Add a method for cancellable requests
  getCancellable: (endpoint) => {
    const source = axios.CancelToken.source();
    const promise = axios.get(`${API_BASE_URL}/${endpoint}`, {
      cancelToken: source.token
    });
    return { promise, cancel: () => source.cancel('Request cancelled') };
  }
};

export default apiService;

```

### serviceWorkerRegistration.js

```js
import { Workbox } from 'workbox-window';

export function register() {
  if ('serviceWorker' in navigator) {
    const wb = new Workbox('/service-worker.js');

    wb.addEventListener('installed', event => {
      if (event.isUpdate) {
        if (confirm('New content is available! Click OK to refresh.')) {
          window.location.reload();
        }
      }
    });

    wb.register();
  }
}

```

### setupTests.js

```js
// jest-dom adds custom jest matchers for asserting on DOM nodes.
// allows you to do things like:
// expect(element).toHaveTextContent(/react/i)
// learn more: https://github.com/testing-library/jest-dom
import '@testing-library/jest-dom';

```

###### stories

####### assets

### avif-test-image.avif

```avif
    ftypavif    avifmif1miafMA1B   �meta       (hdlr        pict            libavif    pitm        iloc    D          #   (iinf        infe      av01Color    jiprp   Kipco   ispe           pixi       av1C�     colrnclx   �   ipma        �  +mdat 

"!��4 2�L��4Cxp� ���(Zyf�M;��ʾ�$��������r�b�F�s�*t�e�>7��혠�ꪙ3so���Z�r���K���O8\���J������(�6�FՖ��o���P�PDf�]�Tڟ���haS8,��_v�E<�{th0&td�3摞X[��_��r��x��V���H-��p������Ua���*.zy���;�<�M�:��	��s!G	-
<�4_y?>�
{�0�_�9ϻ��U(m\V��㳱S�B#�}&�J���&5
6���8Ε�ӹ�&c�<Q<ԗ۴����F�O���:��E��p:�36v��b�����^ŉdv���g@����o�L�4X/���d*
r�OuPgƩ7�^@ƣ�ᥳ"Ǥ�=��{��E���U\z��o�cC���(e��|���Qĥ��\8�S��a� �A}�[lI�N�4�����R��.���Ѽ�	˂����􊪠��������cC�6���O��� ��W����9w�nqcIC_y�
```

### button.css

```css
.storybook-button {
  font-family: 'Nunito Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif;
  font-weight: 700;
  border: 0;
  border-radius: 3em;
  cursor: pointer;
  display: inline-block;
  line-height: 1;
}
.storybook-button--primary {
  color: white;
  background-color: #1ea7fd;
}
.storybook-button--secondary {
  color: #333;
  background-color: transparent;
  box-shadow: rgba(0, 0, 0, 0.15) 0px 0px 0px 1px inset;
}
.storybook-button--small {
  font-size: 12px;
  padding: 10px 16px;
}
.storybook-button--medium {
  font-size: 14px;
  padding: 11px 20px;
}
.storybook-button--large {
  font-size: 16px;
  padding: 12px 24px;
}

```

### Button.jsx

```jsx
import React from 'react';
import PropTypes from 'prop-types';
import './button.css';

/**
 * Primary UI component for user interaction
 */
export const Button = ({ primary, backgroundColor, size, label, ...props }) => {
  const mode = primary ? 'storybook-button--primary' : 'storybook-button--secondary';
  return (
    <button
      type="button"
      className={['storybook-button', `storybook-button--${size}`, mode].join(' ')}
      style={backgroundColor && { backgroundColor }}
      {...props}
    >
      {label}
    </button>
  );
};

Button.propTypes = {
  /**
   * Is this the principal call to action on the page?
   */
  primary: PropTypes.bool,
  /**
   * What background color to use
   */
  backgroundColor: PropTypes.string,
  /**
   * How large should the button be?
   */
  size: PropTypes.oneOf(['small', 'medium', 'large']),
  /**
   * Button contents
   */
  label: PropTypes.string.isRequired,
  /**
   * Optional click handler
   */
  onClick: PropTypes.func,
};

Button.defaultProps = {
  backgroundColor: null,
  primary: false,
  size: 'medium',
  onClick: undefined,
};

```

### Button.stories.js

```js
import { fn } from '@storybook/test';
import { Button } from './Button';

// More on how to set up stories at: https://storybook.js.org/docs/writing-stories#default-export
export default {
  title: 'Example/Button',
  component: Button,
  parameters: {
    // Optional parameter to center the component in the Canvas. More info: https://storybook.js.org/docs/configure/story-layout
    layout: 'centered',
  },
  // This component will have an automatically generated Autodocs entry: https://storybook.js.org/docs/writing-docs/autodocs
  tags: ['autodocs'],
  // More on argTypes: https://storybook.js.org/docs/api/argtypes
  argTypes: {
    backgroundColor: { control: 'color' },
  },
  // Use `fn` to spy on the onClick arg, which will appear in the actions panel once invoked: https://storybook.js.org/docs/essentials/actions#action-args
  args: { onClick: fn() },
};

// More on writing stories with args: https://storybook.js.org/docs/writing-stories/args
export const Primary = {
  args: {
    primary: true,
    label: 'Button',
  },
};

export const Secondary = {
  args: {
    label: 'Button',
  },
};

export const Large = {
  args: {
    size: 'large',
    label: 'Button',
  },
};

export const Small = {
  args: {
    size: 'small',
    label: 'Button',
  },
};

```

### Configure.mdx

```mdx
import { Meta } from "@storybook/blocks";

import Github from "./assets/github.svg";
import Discord from "./assets/discord.svg";
import Youtube from "./assets/youtube.svg";
import Tutorials from "./assets/tutorials.svg";
import Styling from "./assets/styling.png";
import Context from "./assets/context.png";
import Assets from "./assets/assets.png";
import Docs from "./assets/docs.png";
import Share from "./assets/share.png";
import FigmaPlugin from "./assets/figma-plugin.png";
import Testing from "./assets/testing.png";
import Accessibility from "./assets/accessibility.png";
import Theming from "./assets/theming.png";
import AddonLibrary from "./assets/addon-library.png";

export const RightArrow = () => <svg
    viewBox="0 0 14 14"
    width="8px"
    height="14px"
    style={{
      marginLeft: '4px',
      display: 'inline-block',
      shapeRendering: 'inherit',
      verticalAlign: 'middle',
      fill: 'currentColor',
      'path fill': 'currentColor'
    }}
>
  <path d="m11.1 7.35-5.5 5.5a.5.5 0 0 1-.7-.7L10.04 7 4.9 1.85a.5.5 0 1 1 .7-.7l5.5 5.5c.2.2.2.5 0 .7Z" />
</svg>

<Meta title="Configure your project" />

<div className="sb-container">
  <div className='sb-section-title'>
    # Configure your project

    Because Storybook works separately from your app, you'll need to configure it for your specific stack and setup. Below, explore guides for configuring Storybook with popular frameworks and tools. If you get stuck, learn how you can ask for help from our community.
  </div>
  <div className="sb-section">
    <div className="sb-section-item">
      <img
        src={Styling}
        alt="A wall of logos representing different styling technologies"
      />
      <h4 className="sb-section-item-heading">Add styling and CSS</h4>
      <p className="sb-section-item-paragraph">Like with web applications, there are many ways to include CSS within Storybook. Learn more about setting up styling within Storybook.</p>
      <a
        href="https://storybook.js.org/docs/configure/styling-and-css/?renderer=react"
        target="_blank"
      >Learn more<RightArrow /></a>
    </div>
    <div className="sb-section-item">
      <img
        src={Context}
        alt="An abstraction representing the composition of data for a component"
      />
      <h4 className="sb-section-item-heading">Provide context and mocking</h4>
      <p className="sb-section-item-paragraph">Often when a story doesn't render, it's because your component is expecting a specific environment or context (like a theme provider) to be available.</p>
      <a
        href="https://storybook.js.org/docs/writing-stories/decorators/?renderer=react#context-for-mocking"
        target="_blank"
      >Learn more<RightArrow /></a>
    </div>
    <div className="sb-section-item">
      <img src={Assets} alt="A representation of typography and image assets" />
      <div>
        <h4 className="sb-section-item-heading">Load assets and resources</h4>
        <p className="sb-section-item-paragraph">To link static files (like fonts) to your projects and stories, use the
        `staticDirs` configuration option to specify folders to load when
        starting Storybook.</p>
        <a
          href="https://storybook.js.org/docs/configure/images-and-assets/?renderer=react"
          target="_blank"
        >Learn more<RightArrow /></a>
      </div>
    </div>
  </div>
</div>
<div className="sb-container">
  <div className='sb-section-title'>
    # Do more with Storybook

    Now that you know the basics, let's explore other parts of Storybook that will improve your experience. This list is just to get you started. You can customise Storybook in many ways to fit your needs.
  </div>

  <div className="sb-section">
    <div className="sb-features-grid">
      <div className="sb-grid-item">
        <img src={Docs} alt="A screenshot showing the autodocs tag being set, pointing a docs page being generated" />
        <h4 className="sb-section-item-heading">Autodocs</h4>
        <p className="sb-section-item-paragraph">Auto-generate living,
          interactive reference documentation from your components and stories.</p>
        <a
          href="https://storybook.js.org/docs/writing-docs/autodocs/?renderer=react"
          target="_blank"
        >Learn more<RightArrow /></a>
      </div>
      <div className="sb-grid-item">
        <img src={Share} alt="A browser window showing a Storybook being published to a chromatic.com URL" />
        <h4 className="sb-section-item-heading">Publish to Chromatic</h4>
        <p className="sb-section-item-paragraph">Publish your Storybook to review and collaborate with your entire team.</p>
        <a
          href="https://storybook.js.org/docs/sharing/publish-storybook/?renderer=react#publish-storybook-with-chromatic"
          target="_blank"
        >Learn more<RightArrow /></a>
      </div>
      <div className="sb-grid-item">
        <img src={FigmaPlugin} alt="Windows showing the Storybook plugin in Figma" />
        <h4 className="sb-section-item-heading">Figma Plugin</h4>
        <p className="sb-section-item-paragraph">Embed your stories into Figma to cross-reference the design and live
          implementation in one place.</p>
        <a
          href="https://storybook.js.org/docs/sharing/design-integrations/?renderer=react#embed-storybook-in-figma-with-the-plugin"
          target="_blank"
        >Learn more<RightArrow /></a>
      </div>
      <div className="sb-grid-item">
        <img src={Testing} alt="Screenshot of tests passing and failing" />
        <h4 className="sb-section-item-heading">Testing</h4>
        <p className="sb-section-item-paragraph">Use stories to test a component in all its variations, no matter how
          complex.</p>
        <a
          href="https://storybook.js.org/docs/writing-tests/?renderer=react"
          target="_blank"
        >Learn more<RightArrow /></a>
      </div>
      <div className="sb-grid-item">
        <img src={Accessibility} alt="Screenshot of accessibility tests passing and failing" />
        <h4 className="sb-section-item-heading">Accessibility</h4>
        <p className="sb-section-item-paragraph">Automatically test your components for a11y issues as you develop.</p>
        <a
          href="https://storybook.js.org/docs/writing-tests/accessibility-testing/?renderer=react"
          target="_blank"
        >Learn more<RightArrow /></a>
      </div>
      <div className="sb-grid-item">
        <img src={Theming} alt="Screenshot of Storybook in light and dark mode" />
        <h4 className="sb-section-item-heading">Theming</h4>
        <p className="sb-section-item-paragraph">Theme Storybook's UI to personalize it to your project.</p>
        <a
          href="https://storybook.js.org/docs/configure/theming/?renderer=react"
          target="_blank"
        >Learn more<RightArrow /></a>
      </div>
    </div>
  </div>
</div>
<div className='sb-addon'>
  <div className='sb-addon-text'>
    <h4>Addons</h4>
    <p className="sb-section-item-paragraph">Integrate your tools with Storybook to connect workflows.</p>
    <a
        href="https://storybook.js.org/addons/"
        target="_blank"
      >Discover all addons<RightArrow /></a>
  </div>
  <div className='sb-addon-img'>
    <img src={AddonLibrary} alt="Integrate your tools with Storybook to connect workflows." />
  </div>
</div>

<div className="sb-section sb-socials">
    <div className="sb-section-item">
      <img src={Github} alt="Github logo" className="sb-explore-image"/>
      Join our contributors building the future of UI development.

      <a
        href="https://github.com/storybookjs/storybook"
        target="_blank"
      >Star on GitHub<RightArrow /></a>
    </div>
    <div className="sb-section-item">
      <img src={Discord} alt="Discord logo" className="sb-explore-image"/>
      <div>
        Get support and chat with frontend developers.

        <a
          href="https://discord.gg/storybook"
          target="_blank"
        >Join Discord server<RightArrow /></a>
      </div>
    </div>
    <div className="sb-section-item">
      <img src={Youtube} alt="Youtube logo" className="sb-explore-image"/>
      <div>
        Watch tutorials, feature previews and interviews.

        <a
          href="https://www.youtube.com/@chromaticui"
          target="_blank"
        >Watch on YouTube<RightArrow /></a>
      </div>
    </div>
    <div className="sb-section-item">
      <img src={Tutorials} alt="A book" className="sb-explore-image"/>
      <p>Follow guided walkthroughs on for key workflows.</p>

      <a
          href="https://storybook.js.org/tutorials/"
          target="_blank"
        >Discover tutorials<RightArrow /></a>
    </div>
</div>

<style>
  {`
  .sb-container {
    margin-bottom: 48px;
  }

  .sb-section {
    width: 100%;
    display: flex;
    flex-direction: row;
    gap: 20px;
  }

  img {
    object-fit: cover;
  }

  .sb-section-title {
    margin-bottom: 32px;
  }

  .sb-section a:not(h1 a, h2 a, h3 a) {
    font-size: 14px;
  }

  .sb-section-item, .sb-grid-item {
    flex: 1;
    display: flex;
    flex-direction: column;
  }

  .sb-section-item-heading {
    padding-top: 20px !important;
    padding-bottom: 5px !important;
    margin: 0 !important;
  }
  .sb-section-item-paragraph {
    margin: 0;
    padding-bottom: 10px;
  }

  .sb-chevron {
    margin-left: 5px;
  }

  .sb-features-grid {
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    grid-gap: 32px 20px;
  }

  .sb-socials {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
  }

  .sb-socials p {
    margin-bottom: 10px;
  }

  .sb-explore-image {
    max-height: 32px;
    align-self: flex-start;
  }

  .sb-addon {
    width: 100%;
    display: flex;
    align-items: center;
    position: relative;
    background-color: #EEF3F8;
    border-radius: 5px;
    border: 1px solid rgba(0, 0, 0, 0.05);
    background: #EEF3F8;
    height: 180px;
    margin-bottom: 48px;
    overflow: hidden;
  }

  .sb-addon-text {
    padding-left: 48px;
    max-width: 240px;
  }

  .sb-addon-text h4 {
    padding-top: 0px;
  }

  .sb-addon-img {
    position: absolute;
    left: 345px;
    top: 0;
    height: 100%;
    width: 200%;
    overflow: hidden;
  }

  .sb-addon-img img {
    width: 650px;
    transform: rotate(-15deg);
    margin-left: 40px;
    margin-top: -72px;
    box-shadow: 0 0 1px rgba(255, 255, 255, 0);
    backface-visibility: hidden;
  }

  @media screen and (max-width: 800px) {
    .sb-addon-img {
      left: 300px;
    }
  }

  @media screen and (max-width: 600px) {
    .sb-section {
      flex-direction: column;
    }

    .sb-features-grid {
      grid-template-columns: repeat(1, 1fr);
    }

    .sb-socials {
      grid-template-columns: repeat(2, 1fr);
    }

    .sb-addon {
      height: 280px;
      align-items: flex-start;
      padding-top: 32px;
      overflow: hidden;
    }

    .sb-addon-text {
      padding-left: 24px;
    }

    .sb-addon-img {
      right: 0;
      left: 0;
      top: 130px;
      bottom: 0;
      overflow: hidden;
      height: auto;
      width: 124%;
    }

    .sb-addon-img img {
      width: 1200px;
      transform: rotate(-12deg);
      margin-left: 0;
      margin-top: 48px;
      margin-bottom: -40px;
      margin-left: -24px;
    }
  }
  `}
</style>

```

### header.css

```css
.storybook-header {
  font-family: 'Nunito Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif;
  border-bottom: 1px solid rgba(0, 0, 0, 0.1);
  padding: 15px 20px;
  display: flex;
  align-items: center;
  justify-content: space-between;
}

.storybook-header svg {
  display: inline-block;
  vertical-align: top;
}

.storybook-header h1 {
  font-weight: 700;
  font-size: 20px;
  line-height: 1;
  margin: 6px 0 6px 10px;
  display: inline-block;
  vertical-align: top;
}

.storybook-header button + button {
  margin-left: 10px;
}

.storybook-header .welcome {
  color: #333;
  font-size: 14px;
  margin-right: 10px;
}

```

### Header.jsx

```jsx
import React from 'react';
import PropTypes from 'prop-types';

import { Button } from './Button';
import './header.css';

export const Header = ({ user, onLogin, onLogout, onCreateAccount }) => (
  <header>
    <div className="storybook-header">
      <div>
        <svg width="32" height="32" viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg">
          <g fill="none" fillRule="evenodd">
            <path
              d="M10 0h12a10 10 0 0110 10v12a10 10 0 01-10 10H10A10 10 0 010 22V10A10 10 0 0110 0z"
              fill="#FFF"
            />
            <path
              d="M5.3 10.6l10.4 6v11.1l-10.4-6v-11zm11.4-6.2l9.7 5.5-9.7 5.6V4.4z"
              fill="#555AB9"
            />
            <path
              d="M27.2 10.6v11.2l-10.5 6V16.5l10.5-6zM15.7 4.4v11L6 10l9.7-5.5z"
              fill="#91BAF8"
            />
          </g>
        </svg>
        <h1>Acme</h1>
      </div>
      <div>
        {user ? (
          <>
            <span className="welcome">
              Welcome, <b>{user.name}</b>!
            </span>
            <Button size="small" onClick={onLogout} label="Log out" />
          </>
        ) : (
          <>
            <Button size="small" onClick={onLogin} label="Log in" />
            <Button primary size="small" onClick={onCreateAccount} label="Sign up" />
          </>
        )}
      </div>
    </div>
  </header>
);

Header.propTypes = {
  user: PropTypes.shape({
    name: PropTypes.string.isRequired,
  }),
  onLogin: PropTypes.func.isRequired,
  onLogout: PropTypes.func.isRequired,
  onCreateAccount: PropTypes.func.isRequired,
};

Header.defaultProps = {
  user: null,
};

```

### Header.stories.js

```js
import { Header } from './Header';
import { fn } from '@storybook/test';

export default {
  title: 'Example/Header',
  component: Header,
  // This component will have an automatically generated Autodocs entry: https://storybook.js.org/docs/writing-docs/autodocs
  tags: ['autodocs'],
  parameters: {
    // More on how to position stories at: https://storybook.js.org/docs/configure/story-layout
    layout: 'fullscreen',
  },
  args: {
    onLogin: fn(),
    onLogout: fn(),
    onCreateAccount: fn(),
  },
};

export const LoggedIn = {
  args: {
    user: {
      name: 'Jane Doe',
    },
  },
};

export const LoggedOut = {};

```

### page.css

```css
.storybook-page {
  font-family: 'Nunito Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif;
  font-size: 14px;
  line-height: 24px;
  padding: 48px 20px;
  margin: 0 auto;
  max-width: 600px;
  color: #333;
}

.storybook-page h2 {
  font-weight: 700;
  font-size: 32px;
  line-height: 1;
  margin: 0 0 4px;
  display: inline-block;
  vertical-align: top;
}

.storybook-page p {
  margin: 1em 0;
}

.storybook-page a {
  text-decoration: none;
  color: #1ea7fd;
}

.storybook-page ul {
  padding-left: 30px;
  margin: 1em 0;
}

.storybook-page li {
  margin-bottom: 8px;
}

.storybook-page .tip {
  display: inline-block;
  border-radius: 1em;
  font-size: 11px;
  line-height: 12px;
  font-weight: 700;
  background: #e7fdd8;
  color: #66bf3c;
  padding: 4px 12px;
  margin-right: 10px;
  vertical-align: top;
}

.storybook-page .tip-wrapper {
  font-size: 13px;
  line-height: 20px;
  margin-top: 40px;
  margin-bottom: 40px;
}

.storybook-page .tip-wrapper svg {
  display: inline-block;
  height: 12px;
  width: 12px;
  margin-right: 4px;
  vertical-align: top;
  margin-top: 3px;
}

.storybook-page .tip-wrapper svg path {
  fill: #1ea7fd;
}

```

### Page.jsx

```jsx
import React from 'react';

import { Header } from './Header';
import './page.css';

export const Page = () => {
  const [user, setUser] = React.useState();

  return (
    <article>
      <Header
        user={user}
        onLogin={() => setUser({ name: 'Jane Doe' })}
        onLogout={() => setUser(undefined)}
        onCreateAccount={() => setUser({ name: 'Jane Doe' })}
      />

      <section className="storybook-page">
        <h2>Pages in Storybook</h2>
        <p>
          We recommend building UIs with a{' '}
          <a href="https://componentdriven.org" target="_blank" rel="noopener noreferrer">
            <strong>component-driven</strong>
          </a>{' '}
          process starting with atomic components and ending with pages.
        </p>
        <p>
          Render pages with mock data. This makes it easy to build and review page states without
          needing to navigate to them in your app. Here are some handy patterns for managing page
          data in Storybook:
        </p>
        <ul>
          <li>
            Use a higher-level connected component. Storybook helps you compose such data from the
            "args" of child component stories
          </li>
          <li>
            Assemble data in the page component from your services. You can mock these services out
            using Storybook.
          </li>
        </ul>
        <p>
          Get a guided tutorial on component-driven development at{' '}
          <a href="https://storybook.js.org/tutorials/" target="_blank" rel="noopener noreferrer">
            Storybook tutorials
          </a>
          . Read more in the{' '}
          <a href="https://storybook.js.org/docs" target="_blank" rel="noopener noreferrer">
            docs
          </a>
          .
        </p>
        <div className="tip-wrapper">
          <span className="tip">Tip</span> Adjust the width of the canvas with the{' '}
          <svg width="10" height="10" viewBox="0 0 12 12" xmlns="http://www.w3.org/2000/svg">
            <g fill="none" fillRule="evenodd">
              <path
                d="M1.5 5.2h4.8c.3 0 .5.2.5.4v5.1c-.1.2-.3.3-.4.3H1.4a.5.5 0 01-.5-.4V5.7c0-.3.2-.5.5-.5zm0-2.1h6.9c.3 0 .5.2.5.4v7a.5.5 0 01-1 0V4H1.5a.5.5 0 010-1zm0-2.1h9c.3 0 .5.2.5.4v9.1a.5.5 0 01-1 0V2H1.5a.5.5 0 010-1zm4.3 5.2H2V10h3.8V6.2z"
                id="a"
                fill="#999"
              />
            </g>
          </svg>
          Viewports addon in the toolbar
        </div>
      </section>
    </article>
  );
};

```

### Page.stories.js

```js
import { within, userEvent, expect } from '@storybook/test';

import { Page } from './Page';

export default {
  title: 'Example/Page',
  component: Page,
  parameters: {
    // More on how to position stories at: https://storybook.js.org/docs/configure/story-layout
    layout: 'fullscreen',
  },
};

export const LoggedOut = {};

// More on interaction testing: https://storybook.js.org/docs/writing-tests/interaction-testing
export const LoggedIn = {
  play: async ({ canvasElement }) => {
    const canvas = within(canvasElement);
    const loginButton = canvas.getByRole('button', { name: /Log in/i });
    await expect(loginButton).toBeInTheDocument();
    await userEvent.click(loginButton);
    await expect(loginButton).not.toBeInTheDocument();

    const logoutButton = canvas.getByRole('button', { name: /Log out/i });
    await expect(logoutButton).toBeInTheDocument();
  },
};

```

###### styles

####### abstracts

### _mixins.scss

```scss
@mixin flexCenter {
  display: flex;
  justify-content: center;
  align-items: center;
}

```

### _variables.scss

```scss
$primary-color: #0070f3;
$secondary-color: #0070f3;
$font-stack: Arial, sans-serif;

```

####### base

### _reset.scss

```scss
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

```

### breakpoints.js

```js
const sizes = {
  mobile: '576px',
  tablet: '768px',
  desktop: '1024px',
  largeDesktop: '1440px',
};

export const devices = {
  mobile: `(min-width: ${sizes.mobile})`,
  tablet: `(min-width: ${sizes.tablet})`,
  desktop: `(min-width: ${sizes.desktop})`,
  largeDesktop: `(min-width: ${sizes.largeDesktop})`,
};

export const mediaQueries = {
  mobile: `@media ${devices.mobile}`,
  tablet: `@media ${devices.tablet}`,
  desktop: `@media ${devices.desktop}`,
  largeDesktop: `@media ${devices.largeDesktop}`,
};

```

####### components

### GlobalStyle.js

```js
import { createGlobalStyle } from 'styled-components';

const GlobalStyle = createGlobalStyle`
  body {
    margin: 0;
    padding: 0;
    font-family: ${({ theme }) => theme.fonts.body};
    background-color: ${({ theme }) => theme.colors.background};
    color: ${({ theme }) => theme.colors.text};
  }
`;

export default GlobalStyle;

```

####### layout

### main.scss

```scss
@import 'abstracts/variables';
@import 'abstracts/mixins';

@import 'base/reset';
@import 'base/typography';

@import 'components/buttons';
@import 'components/forms';

@import 'layout/header';
@import 'layout/footer';

@import 'pages/home';

```

### NolocoTheme.js

```js
// src/styles/NolocoTheme.js
const NolocoTheme = {
    colors: {
        primary: '#0F172A',
        secondary: '#3B82F6',
        background: '#F8FAFC',
        text: '#1E293B',
    },
    fonts: {
      body: 'Inter, sans-serif',
    },
  };

  export default NolocoTheme;

```

####### pages

### ResponsiveWrapper.js

```js
import styled from 'styled-components';
import { mediaQueries } from './breakpoints';

const ResponsiveWrapper = styled.div`
  padding: 1rem;
  width: 100%;
  max-width: 100%;

  ${mediaQueries.tablet} {
    padding: 2rem;
    max-width: 720px;
    margin: 0 auto;
  }

  ${mediaQueries.desktop} {
    padding: 3rem;
    max-width: 960px;
  }

  ${mediaQueries.largeDesktop} {
    max-width: 1200px;
  }
`;

export default ResponsiveWrapper;

```

### theme.js

```js
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

```

###### utils

### imageOptimization.js

```js
export const getOptimizedImageUrl = (url, width, height) => {
  // This is a placeholder. In a real-world scenario, you'd integrate with
  // an image optimization service like Cloudinary or Imgix.
  return ;
};

```

### useIntersectionObserver.js

```js
import { useState, useEffect } from 'react';

const useIntersectionObserver = (ref, options = {}) => {
  const [isIntersecting, setIsIntersecting] = useState(false);

  useEffect(() => {
    const observer = new IntersectionObserver(([entry]) => {
      setIsIntersecting(entry.isIntersecting);
    }, options);

    if (ref.current) {
      observer.observe(ref.current);
    }

    return () => {
      observer.disconnect();
    };
  }, [ref, options]);

  return isIntersecting;
};

export default useIntersectionObserver;

```

### tailwind.config.js

```js
/** @type {import('tailwindcss').Config} */
module.exports = {
  darkMode: ["class"],
  content: [
    './pages/**/*.{ts,tsx}',
    './components/**/*.{ts,tsx}',
    './app/**/*.{ts,tsx}',
    './src/**/*.{ts,tsx}',
  ],
  prefix: "",
  theme: {
    container: {
      center: true,
      padding: "2rem",
      screens: {
        "2xl": "1400px",
      },
    },
    extend: {
      colors: {
        border: "hsl(var(--border))",
        input: "hsl(var(--input))",
        ring: "hsl(var(--ring))",
        background: "hsl(var(--background))",
        foreground: "hsl(var(--foreground))",
        primary: {
          DEFAULT: "hsl(var(--primary))",
          foreground: "hsl(var(--primary-foreground))",
        },
        secondary: {
          DEFAULT: "hsl(var(--secondary))",
          foreground: "hsl(var(--secondary-foreground))",
        },
        destructive: {
          DEFAULT: "hsl(var(--destructive))",
          foreground: "hsl(var(--destructive-foreground))",
        },
        muted: {
          DEFAULT: "hsl(var(--muted))",
          foreground: "hsl(var(--muted-foreground))",
        },
        accent: {
          DEFAULT: "hsl(var(--accent))",
          foreground: "hsl(var(--accent-foreground))",
        },
        popover: {
          DEFAULT: "hsl(var(--popover))",
          foreground: "hsl(var(--popover-foreground))",
        },
        card: {
          DEFAULT: "hsl(var(--card))",
          foreground: "hsl(var(--card-foreground))",
        },
      },
      borderRadius: {
        lg: "var(--radius)",
        md: "calc(var(--radius) - 2px)",
        sm: "calc(var(--radius) - 4px)",
      },
      keyframes: {
        "accordion-down": {
          from: { height: "0" },
          to: { height: "var(--radix-accordion-content-height)" },
        },
        "accordion-up": {
          from: { height: "var(--radix-accordion-content-height)" },
          to: { height: "0" },
        },
      },
      animation: {
        "accordion-down": "accordion-down 0.2s ease-out",
        "accordion-up": "accordion-up 0.2s ease-out",
      },
    },
  },
  plugins: [require("tailwindcss-animate")],
}
```

### tsconfig.json

```json
{
  "compilerOptions": {
    "target": "es5",
    "lib": ["dom", "dom.iterable", "esnext"],
    "allowJs": true,
    "skipLibCheck": true,
    "esModuleInterop": true,
    "allowSyntheticDefaultImports": true,
    "strict": true,
    "forceConsistentCasingInFileNames": true,
    "module": "esnext",
    "moduleResolution": "node",
    "resolveJsonModule": true,
    "isolatedModules": true,
    "noEmit": true,
    "jsx": "react-jsx",
    "baseUrl": "src"
  },
  "include": ["src"]
}

```

### webpack.config.js

```js
const path = require('path');
const HtmlWebpackPlugin = require('html-webpack-plugin');
const MiniCssExtractPlugin = require('mini-css-extract-plugin');

module.exports = {
  entry: './src/index.js',
  output: {
    path: path.resolve(__dirname, 'dist'),
    filename: '[name].[contenthash].js',
    clean: true,
  },
  module: {
    rules: [
      {
        test: /\.(js|jsx)$/,
        exclude: /node_modules/,
        use: {
          loader: 'babel-loader',
        },
      },
      {
        test: /\.(scss|css)$/,
        use: [MiniCssExtractPlugin.loader, 'css-loader', 'sass-loader'],
      },
    ],
  },
  plugins: [
    new HtmlWebpackPlugin({
      template: './public/index.html',
    }),
    new MiniCssExtractPlugin({
      filename: '[name].[contenthash].css',
    }),
  ],
  devServer: {
    static: path.join(__dirname, 'dist'),
    port: 3000,
    hot: true,
  },
  optimization: {
    moduleIds: 'deterministic',
    runtimeChunk: 'single',
    splitChunks: {
      cacheGroups: {
        vendor: {
          test: /[\/]node_modules[\/]/,
          name: 'vendors',
          chunks: 'all',
        },
      },
    },
  },
};

const WorkboxWebpackPlugin = require('workbox-webpack-plugin');

module.exports.plugins.push(
  new WorkboxWebpackPlugin.GenerateSW({
    clientsClaim: true,
    skipWaiting: true,
    runtimeCaching: [{
      urlPattern: /^https?.*/,
      handler: 'NetworkFirst',
      options: {
        cacheName: 'https-calls',
        networkTimeoutSeconds: 15,
        expiration: {
          maxEntries: 150,
          maxAgeSeconds: 30 * 24 * 60 * 60, // 1 month
        },
        cacheableResponse: {
          statuses: [0, 200],
        },
      },
    }],
  })
);

```

### package.json

```json
{
  "dependencies": {
    "bcryptjs": "^2.4.3",
    "jsonwebtoken": "^9.0.2"
  }
}

```

### README.md

```md

```

#### server

### .env

```
PORT=3000
BASE_URL=http://localhost:3000  # Optional, for local development
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
DATABASE_URL=postgres://ultimate_user:postgres@localhost:5432/ultimate
JWT_SECRET=mySecretKey

```

### babel.config.js

```js

```

### jest.config.js

```js
module.exports = {
  testEnvironment: 'node',
  testMatch: ['**/tests/**/*.js', '**/?(*.)+(spec|test).js'],
  collectCoverageFrom: ['src/**/*.js'],
  coveragePathIgnorePatterns: ['/node_modules/', '/tests/'],
  coverageReporters: ['text', 'lcov'],
  setupFilesAfterEnv: ['./jest.setup.js']
};

```

### jest.setup.js

```js
// jest.setup.js

require('dotenv').config();

jest.setTimeout(30000);

expect.extend({
  toBeWithinRange(received, floor, ceiling) {
    const pass = received >= floor && received <= ceiling;
    if (pass) {
      return {
        message: () => `expected ${received} not to be within range ${floor} - ${ceiling}`,
        pass: true,
      };
    } else {
      return {
        message: () => `expected ${received} to be within range ${floor} - ${ceiling}`,
        pass: false,
      };
    }
  },
});

beforeAll(() => {
  console.log('Starting all tests...');
});

afterAll(() => {
  console.log('All tests completed.');
});

if (typeof fetch === 'undefined') {
  global.fetch = require('node-fetch');
}

global.createMockResponse = (data, status = 200) => {
  return new Response(JSON.stringify(data), {
    status,
    headers: { 'Content-Type': 'application/json' },
  });
};

global.wait = (ms) => new Promise(resolve => setTimeout(resolve, ms));

const mockDate = new Date('2024-08-05T12:00:00Z');
global.Date = class extends Date {
  constructor() {
    return mockDate;
  }
};

```

### package.json

```json
{
  "name": "ultimate",
  "version": "1.0.0",
  "description": "Project created with DemTech Master Script Project Setup.",
  "main": "src/index.js",
  "scripts": {
    "start": "node src/index.js",
    "dev": "nodemon src/index.js",
    "test": "jest",
    "test:watch": "jest --watch",
    "test:coverage": "jest --coverage"
  },
  "author": "",
  "license": "ISC",
  "dependencies": {
    "aws-sdk": "^2.1669.0",
    "bcryptjs": "^2.4.3",
    "cors": "^2.8.5",
    "dotenv": "^10.0.0",
    "express": "^4.19.2",
    "handlebars": "^4.7.8",
    "jsonwebtoken": "^9.0.2",
    "multer": "^1.4.5-lts.1",
    "nodemailer": "^6.9.14",
    "pg": "^8.12.0",
    "sequelize": "^6.37.3"
  },
  "devDependencies": {
    "jest": "^27.0.0",
    "nodemon": "^2.0.12",
    "supertest": "^6.1.3"
  }
}

```

### psql_output.log

```log
CREATE DATABASE
CREATE ROLE
GRANT
You are now connected to database "ultimate" as user "postgres".
CREATE EXTENSION

```

##### src

### app.js

```js
const express = require('express');
const { Pool } = require('pg');
const session = require('express-session');
const pgSession = require('connect-pg-simple')(session);
const passport = require('passport');
const cors = require('cors');
const dotenv = require('dotenv');
const path = require('path');
const errorHandler = require('./middleware/error-handling-middleware');

dotenv.config();

const app = express();

// Middleware
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// PostgreSQL Pool
const pool = new Pool({
    connectionString: process.env.DATABASE_URL
});

// Session Management
app.use(session({
    store: new pgSession({
        pool: pool,
        tableName: 'session'
    }),
    secret: process.env.SESSION_SECRET || 'your_secret_key',
    resave: false,
    saveUninitialized: false,
    cookie: { secure: process.env.NODE_ENV === 'production' }
}));

// Passport middleware
app.use(passport.initialize());
app.use(passport.session());

// Passport Config
require('./config/passport')(passport);

// Routes
app.use('/api/models', require('./routes/models'));
// Add other routes as needed

// Serve static files from the React app in production
if (process.env.NODE_ENV === 'production') {
    app.use(express.static(path.join(__dirname, '../../client/build')));

    app.get('*', (req, res) => {
        res.sendFile(path.join(__dirname, '../../client/build', 'index.html'));
    });
}

// Error Handling Middleware
app.use(errorHandler);

module.exports = app;

```

###### config

### database.js

```js
// src/config/database.js
const { Pool } = require('pg');
const { Sequelize } = require('sequelize');
require('dotenv').config();

const sequelize = new Sequelize(process.env.DATABASE_URL, {
  dialect: 'postgres',
  logging: false,
  pool: {
    max: 5,
    min: 0,
    acquire: 30000,
    idle: 10000
  }
});

const pool = new Pool({
  connectionString: process.env.DATABASE_URL,
});

const testConnection = async () => {
  try {
    await sequelize.authenticate();
    console.log('Sequelize connection has been established successfully.');

    const client = await pool.connect();
    console.log('PostgreSQL pool connection has been established successfully.');
    client.release();
  } catch (error) {
    console.error('Unable to connect to the database:', error);
  }
};

testConnection();

module.exports = {
  sequelize,
  Sequelize,
  query: (text, params) => pool.query(text, params),
};

```

### passport.js

```js
module.exports = (passport) => {
    // Add passport strategies and serialization here
    // This is a placeholder and should be expanded based on your auth requirements
};

```

###### controllers

### about.js

```js
const aboutModel = require('../models/about');

exports.getAll = async (req, res) => {
  try {
    const items = await aboutModel.findAll();
    res.json(items);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

exports.create = async (req, res) => {
  try {
    const newItem = await aboutModel.create(req.body);
    res.status(201).json(newItem);
  } catch (error) {
    res.status(400).json({ message: error.message });
  }
};

exports.getById = async (req, res) => {
  try {
    const item = await aboutModel.findByPk(req.params.id);
    if (!item) {
      return res.status(404).json({ message: 'Item not found' });
    }
    res.json(item);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

exports.update = async (req, res) => {
  try {
    const [updated] = await aboutModel.update(req.body, {
      where: { id: req.params.id }
    });
    if (updated) {
      const updatedItem = await aboutModel.findByPk(req.params.id);
      res.json(updatedItem);
    } else {
      res.status(404).json({ message: 'Item not found' });
    }
  } catch (error) {
    res.status(400).json({ message: error.message });
  }
};

exports.delete = async (req, res) => {
  try {
    const deleted = await aboutModel.destroy({
      where: { id: req.params.id }
    });
    if (deleted) {
      res.json({ message: 'Item deleted' });
    } else {
      res.status(404).json({ message: 'Item not found' });
    }
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

```

### contact.js

```js
const contactModel = require('../models/contact');

exports.getAll = async (req, res) => {
  try {
    const items = await contactModel.findAll();
    res.json(items);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

exports.create = async (req, res) => {
  try {
    const newItem = await contactModel.create(req.body);
    res.status(201).json(newItem);
  } catch (error) {
    res.status(400).json({ message: error.message });
  }
};

exports.getById = async (req, res) => {
  try {
    const item = await contactModel.findByPk(req.params.id);
    if (!item) {
      return res.status(404).json({ message: 'Item not found' });
    }
    res.json(item);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

exports.update = async (req, res) => {
  try {
    const [updated] = await contactModel.update(req.body, {
      where: { id: req.params.id }
    });
    if (updated) {
      const updatedItem = await contactModel.findByPk(req.params.id);
      res.json(updatedItem);
    } else {
      res.status(404).json({ message: 'Item not found' });
    }
  } catch (error) {
    res.status(400).json({ message: error.message });
  }
};

exports.delete = async (req, res) => {
  try {
    const deleted = await contactModel.destroy({
      where: { id: req.params.id }
    });
    if (deleted) {
      res.json({ message: 'Item deleted' });
    } else {
      res.status(404).json({ message: 'Item not found' });
    }
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

```

### docs.js

```js
const docsModel = require('../models/docs');

exports.getAll = async (req, res) => {
  try {
    const items = await docsModel.findAll();
    res.json(items);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

exports.create = async (req, res) => {
  try {
    const newItem = await docsModel.create(req.body);
    res.status(201).json(newItem);
  } catch (error) {
    res.status(400).json({ message: error.message });
  }
};

exports.getById = async (req, res) => {
  try {
    const item = await docsModel.findByPk(req.params.id);
    if (!item) {
      return res.status(404).json({ message: 'Item not found' });
    }
    res.json(item);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

exports.update = async (req, res) => {
  try {
    const [updated] = await docsModel.update(req.body, {
      where: { id: req.params.id }
    });
    if (updated) {
      const updatedItem = await docsModel.findByPk(req.params.id);
      res.json(updatedItem);
    } else {
      res.status(404).json({ message: 'Item not found' });
    }
  } catch (error) {
    res.status(400).json({ message: error.message });
  }
};

exports.delete = async (req, res) => {
  try {
    const deleted = await docsModel.destroy({
      where: { id: req.params.id }
    });
    if (deleted) {
      res.json({ message: 'Item deleted' });
    } else {
      res.status(404).json({ message: 'Item not found' });
    }
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

```

### index.js

```js
const app = require(./app);
const express = require('express');
const cors = require('cors');
require('dotenv').config();
const { sequelize } = require('./utils/db');
const modelRoutes = require('./routes/models');
const dynamicApiRoutes = require('./routes/dynamicApiRoutes');

const PORT = process.env.PORT || 3000;

// Middleware

// Routes
app.use('/api/models', modelRoutes);
app.use('/api', dynamicApiRoutes);

app.get('/', (req, res) => {
  res.json({ message: 'Welcome to the API' });
});

// Error handling middleware
app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).send('Something broke!');
});

// Database connection and server start
const startServer = async () => {
  try {
    await sequelize.authenticate();
    console.log('Database connection has been established successfully.');

    app.listen(PORT, () => console.log());
  } catch (error) {
    console.error('Unable to connect to the database:', error);
  }
};

startServer();

```

###### middleware

### auth.js

```js
// projects/grow-tracking-app/server/src/middleware/auth.js
const jwt = require('jsonwebtoken');

module.exports = function (req, res, next) {
  // Get token from header
  const token = req.header('x-auth-token');

  // Check if no token
  if (!token) {
    return res.status(401).json({ msg: 'No token, authorization denied' });
  }

  // Verify token
  try {
    const decoded = jwt.verify(token, process.env.JWT_SECRET);
    req.user = decoded.user;
    next();
  } catch (err) {
    res.status(401).json({ msg: 'Token is not valid' });
  }
};

```

### error-handling-middleware.js

```js
const errorHandler = (err, req, res, next) => {
    console.error(err.stack);
    res.status(500).send('Something broke!');
};

module.exports = errorHandler;

```

### errorHandler.js

```js
const { sendError } = require('../utils/apiResponse');

const errorHandler = (err, req, res, next) => {
  console.error(err.stack);

  const statusCode = err.statusCode || 500;
  const message = err.message || 'Internal Server Error';

  sendError(res, statusCode, message);
};

module.exports = errorHandler;

```

###### middlewares

### rbacMiddleware.js

```js
// src/middlewares/rbacMiddleware.js
const rbacMiddleware = (requiredRole) => {
  return (req, res, next) => {
    if (!req.user || !req.user.role) {
      return res.status(403).json({ message: 'Access denied' });
    }

    if (req.user.role !== requiredRole) {
      return res.status(403).json({ message: 'Insufficient permissions' });
    }

    next();
  };
};

module.exports = rbacMiddleware;

```

###### models

### about.js

```js
const { DataTypes } = require('sequelize');
const sequelize = require('../config/database');

const about = sequelize.define('about', {
  // Define your model fields here
  name: {
    type: DataTypes.STRING,
    allowNull: false
  },
  // Add more fields as needed
});

module.exports = about;

```

### contact.js

```js
const { DataTypes } = require('sequelize');
const sequelize = require('../config/database');

const contact = sequelize.define('contact', {
  // Define your model fields here
  name: {
    type: DataTypes.STRING,
    allowNull: false
  },
  // Add more fields as needed
});

module.exports = contact;

```

### docs.js

```js
const { DataTypes } = require('sequelize');
const sequelize = require('../config/database');

const docs = sequelize.define('docs', {
  // Define your model fields here
  name: {
    type: DataTypes.STRING,
    allowNull: false
  },
  // Add more fields as needed
});

module.exports = docs;

```

### EmailTemplate.js

```js
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

class EmailTemplateModel {
  async saveTemplate(templateData) {
    const query = 'INSERT INTO email_templates(name, subject, body) VALUES($1, $2, $3) RETURNING *';
    const values = [templateData.name, templateData.subject, templateData.body];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getTemplates() {
    const result = await pool.query('SELECT * FROM email_templates');
    return result.rows;
  }

  async getTemplateByName(name) {
    const result = await pool.query('SELECT * FROM email_templates WHERE name = $1', [name]);
    return result.rows[0];
  }
}

module.exports = new EmailTemplateModel();

```

### File.js

```js
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

class FileModel {
  async saveFile(fileData) {
    const query = 'INSERT INTO files(filename, originalname, mimetype, size, url, uploadedby) VALUES($1, $2, $3, $4, $5, $6) RETURNING *';
    const values = [fileData.filename, fileData.originalname, fileData.mimetype, fileData.size, fileData.url, fileData.uploadedby];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getFilesByUser(userId) {
    const query = 'SELECT * FROM files WHERE uploadedby = $1';
    const result = await pool.query(query, [userId]);
    return result.rows;
  }
}

module.exports = new FileModel();

```

### User.js

```js
// src/models/User.js

const { Sequelize, DataTypes } = require('sequelize');
const sequelize = require('../config/database');

const User = sequelize.define('User', {
  name: {
    type: DataTypes.STRING,
    allowNull: false
  },
  email: {
    type: DataTypes.STRING,
    allowNull: false,
    unique: true
  },
  password: {
    type: DataTypes.STRING,
    allowNull: false
  }
});

module.exports = User;

```

### Workflow.js

```js
// src/models/Workflow.js
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

class WorkflowModel {
  async createWorkflow(workflowData) {
    const query = 'INSERT INTO workflows(name, description, trigger, steps) VALUES($1, $2, $3, $4) RETURNING *';
    const values = [workflowData.name, workflowData.description, workflowData.trigger, JSON.stringify(workflowData.steps)];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getWorkflows() {
    const result = await pool.query('SELECT * FROM workflows');
    return result.rows;
  }

  async getWorkflowById(id) {
    const result = await pool.query('SELECT * FROM workflows WHERE id = $1', [id]);
    return result.rows[0];
  }
}

module.exports = new WorkflowModel();

```

###### redux

####### actions

### authActions.js

```js
import axios from 'axios';
import { setAuthToken } from '../../utils/setAuthToken';
import {
  REGISTER_SUCCESS,
  REGISTER_FAIL,
  USER_LOADED,
  AUTH_ERROR,
  LOGIN_SUCCESS,
  LOGIN_FAIL,
  LOGOUT
} from './types';

// Load User
export const loadUser = () => async dispatch => {
  if (localStorage.token) {
    setAuthToken(localStorage.token);
  }

  try {
    const res = await axios.get('/api/auth');
    dispatch({
      type: USER_LOADED,
      payload: res.data
    });
  } catch (err) {
    dispatch({
      type: AUTH_ERROR
    });
  }
};

// Register User
export const register = (formData) => async dispatch => {
  try {
    const res = await axios.post('/api/users', formData);
    dispatch({
      type: REGISTER_SUCCESS,
      payload: res.data
    });
    dispatch(loadUser());
  } catch (err) {
    dispatch({
      type: REGISTER_FAIL,
      payload: err.response.data.msg
    });
  }
};

// Login User
export const login = (email, password) => async dispatch => {
  const config = {
    headers: {
      'Content-Type': 'application/json'
    }
  };

  const body = JSON.stringify({ email, password });

  try {
    const res = await axios.post('/api/auth', body, config);
    dispatch({
      type: LOGIN_SUCCESS,
      payload: res.data
    });
    dispatch(loadUser());
  } catch (err) {
    dispatch({
      type: LOGIN_FAIL,
      payload: err.response.data.msg
    });
  }
};

// Logout
export const logout = () => dispatch => {
  dispatch({ type: LOGOUT });
};

```

### projectActions.js

```js
import axios from 'axios';
import {
  GET_PROJECTS,
  ADD_PROJECT,
  DELETE_PROJECT,
  SET_CURRENT,
  CLEAR_CURRENT,
  PROJECT_ERROR
} from './types';

// Get Projects
export const getProjects = () => async dispatch => {
  try {
    const res = await axios.get('/api/projects');
    dispatch({
      type: GET_PROJECTS,
      payload: res.data
    });
  } catch (err) {
    dispatch({
      type: PROJECT_ERROR,
      payload: err.response.msg
    });
  }
};

// Add Project
export const addProject = (project) => async dispatch => {
  const config = {
    headers: {
      'Content-Type': 'application/json'
    }
  };

  try {
    const res = await axios.post('/api/projects', project, config);
    dispatch({
      type: ADD_PROJECT,
      payload: res.data
    });
  } catch (err) {
    dispatch({
      type: PROJECT_ERROR,
      payload: err.response.msg
    });
  }
};

// Delete Project
export const deleteProject = (id) => async dispatch => {
  try {
    await axios.delete(`/api/projects/${id}`);
    dispatch({
      type: DELETE_PROJECT,
      payload: id
    });
  } catch (err) {
    dispatch({
      type: PROJECT_ERROR,
      payload: err.response.msg
    });
  }
};

// Set Current Project
export const setCurrentProject = (project) => {
  return {
    type: SET_CURRENT,
    payload: project
  };
};

// Clear Current Project
export const clearCurrentProject = () => {
  return { type: CLEAR_CURRENT };
};

```

### taskActions.js

```js
import axios from 'axios';
import {
  GET_TASKS,
  ADD_TASK,
  DELETE_TASK,
  SET_CURRENT,
  CLEAR_CURRENT,
  TASK_ERROR
} from './types';

// Get Tasks
export const getTasks = () => async dispatch => {
  try {
    const res = await axios.get('/api/tasks');
    dispatch({
      type: GET_TASKS,
      payload: res.data
    });
  } catch (err) {
    dispatch({
      type: TASK_ERROR,
      payload: err.response.msg
    });
  }
};

// Add Task
export const addTask = (task) => async dispatch => {
  const config = {
    headers: {
      'Content-Type': 'application/json'
    }
  };

  try {
    const res = await axios.post('/api/tasks', task, config);
    dispatch({
      type: ADD_TASK,
      payload: res.data
    });
  } catch (err) {
    dispatch({
      type: TASK_ERROR,
      payload: err.response.msg
    });
  }
};

// Delete Task
export const deleteTask = (id) => async dispatch => {
  try {
    await axios.delete(`/api/tasks/${id}`);
    dispatch({
      type: DELETE_TASK,
      payload: id
    });
  } catch (err) {
    dispatch({
      type: TASK_ERROR,
      payload: err.response.msg
    });
  }
};

// Set Current Task
export const setCurrentTask = (task) => {
  return {
    type: SET_CURRENT,
    payload: task
  };
};

// Clear Current Task
export const clearCurrentTask = () => {
  return { type: CLEAR_CURRENT };
};

```

###### routes

### about.js

```js
const express = require('express');
const router = express.Router();
const aboutController = require('../controllers/about');

router.get('/', aboutController.getAll);
router.post('/', aboutController.create);
router.get('/:id', aboutController.getById);
router.put('/:id', aboutController.update);
router.delete('/:id', aboutController.delete);

module.exports = router;

```

### auth.js

```js
const express = require('express');
const router = express.Router();
const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');
const User = require('../models/User');
const auth = require('../middleware/auth');
require('dotenv').config();

// @route   POST api/auth/register
// @desc    Register user
// @access  Public
router.post('/register', async (req, res) => {
  const { name, email, password } = req.body;

  try {
    let user = await User.findOne({ email });
    if (user) {
      return res.status(400).json({ msg: 'User already exists' });
    }

    user = new User({
      name,
      email,
      password,
    });

    const salt = await bcrypt.genSalt(10);
    user.password = await bcrypt.hash(password, salt);

    await user.save();

    const payload = {
      user: {
        id: user.id,
      },
    };

    jwt.sign(
      payload,
      process.env.JWT_SECRET,
      { expiresIn: 3600 },
      (err, token) => {
        if (err) throw err;
        res.json({ token });
      }
    );
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Server error');
  }
});

// @route   POST api/auth/login
// @desc    Authenticate user & get token
// @access  Public
router.post('/login', async (req, res) => {
  const { email, password } = req.body;

  try {
    let user = await User.findOne({ email });
    if (!user) {
      return res.status(400).json({ msg: 'Invalid Credentials' });
    }

    const isMatch = await bcrypt.compare(password, user.password);
    if (!isMatch) {
      return res.status(400).json({ msg: 'Invalid Credentials' });
    }

    const payload = {
      user: {
        id: user.id,
      },
    };

    jwt.sign(
      payload,
      process.env.JWT_SECRET,
      { expiresIn: 3600 },
      (err, token) => {
        if (err) throw err;
        res.json({ token });
      }
    );
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Server error');
  }
});

// @route   GET api/auth/user
// @desc    Get logged in user
// @access  Private
router.get('/user', auth, async (req, res) => {
  try {
    const user = await User.findById(req.user.id).select('-password');
    res.json(user);
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Server Error');
  }
});

module.exports = router;

```

### authRoutes.js

```js
// src/routes/authRoutes.js
const express = require('express');
const jwt = require('jsonwebtoken');
const UserService = require('../models/User');
const rbacMiddleware = require('../middlewares/rbacMiddleware');

const router = express.Router();

router.post('/register', async (req, res) => {
  try {
    const { username, email, password, role } = req.body;
    const user = await UserService.createUser({ username, email, password, role });
    res.status(201).json({ message: 'User registered successfully', user });
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

router.post('/login', async (req, res) => {
  try {
    const { email, password } = req.body;
    const user = await UserService.findUserByEmail(email);
    if (!user || !(await UserService.comparePassword(password, user.password))) {
      return res.status(401).json({ message: 'Invalid credentials' });
    }
    const token = jwt.sign({ userId: user.id, role: user.role }, process.env.JWT_SECRET, { expiresIn: '1d' });
    res.json({ token });
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

// Example of a protected route using RBAC
router.get('/admin-only', rbacMiddleware('admin'), (req, res) => {
  res.json({ message: 'Welcome, admin!' });
});

module.exports = router;

```

### contact.js

```js
const express = require('express');
const router = express.Router();
const contactController = require('../controllers/contact');

router.get('/', contactController.getAll);
router.post('/', contactController.create);
router.get('/:id', contactController.getById);
router.put('/:id', contactController.update);
router.delete('/:id', contactController.delete);

module.exports = router;

```

### docs.js

```js
const express = require('express');
const router = express.Router();
const docsController = require('../controllers/docs');

router.get('/', docsController.getAll);
router.post('/', docsController.create);
router.get('/:id', docsController.getById);
router.put('/:id', docsController.update);
router.delete('/:id', docsController.delete);

module.exports = router;

```

### dynamicApiRoutes.js

```js
// src/routes/dynamicApiRoutes.js
const express = require('express');
const apiGenerationService = require('../services/apiGenerationService');
const dataModelingService = require('../services/dataModelingService');

const router = express.Router();

// Function to set up dynamic routes
const setupDynamicRoutes = async () => {
  try {
    const models = await dataModelingService.getModels();
    models.forEach(model => {
      router.use(`/${model.name.toLowerCase()}`, apiGenerationService.generateAPI(model.name, model.fields));
    });
    console.log('Dynamic API routes set up successfully');
  } catch (error) {
    console.error('Error setting up dynamic API routes:', error);
  }
};

// Set up routes immediately and export the router
setupDynamicRoutes();

module.exports = router;

```

### emailTemplateRoutes.js

```js
const express = require('express');
const EmailService = require('../services/emailService');
const router = express.Router();

router.post('/', async (req, res) => {
  try {
    const template = await EmailService.saveTemplate(req.body);
    res.status(201).json(template);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

router.get('/', async (req, res) => {
  try {
    const templates = await EmailService.getTemplates();
    res.json(templates);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

router.post('/send', async (req, res) => {
  try {
    const { templateName, to, context } = req.body;
    const template = await EmailService.getTemplateByName(templateName);
    if (!template) {
      return res.status(404).json({ message: 'Template not found' });
    }
    await EmailService.sendEmail(to, template.subject, template.body, context);
    res.json({ message: 'Email sent successfully' });
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

module.exports = router;

```

### fileRoutes.js

```js
const express = require('express');
const { upload, FileService } = require('../services/fileService');
const router = express.Router();

router.post('/upload', upload.single('file'), async (req, res) => {
  try {
    const fileData = {
      filename: req.file.key,
      originalname: req.file.originalname,
      mimetype: req.file.mimetype,
      size: req.file.size,
      url: req.file.location,
      uploadedby: req.user.id
    };
    const file = await FileService.saveFile(fileData);
    res.status(201).json(file);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

router.get('/', async (req, res) => {
  try {
    const files = await FileService.getFilesByUser(req.user.id);
    res.json(files);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

module.exports = router;

```

### models.js

```js
const express = require('express');
const router = express.Router();
const DataModelingService = require('../services/dataModelingService');

router.post('/models', async (req, res, next) => {
  try {
    const { name, fields } = req.body;
    await DataModelingService.saveModel({ name, fields });
    res.status(201).json({ message: 'Model saved successfully' });
  } catch (error) {
    next(error);
  }
});

router.get('/models', async (req, res, next) => {
  try {
    const models = await DataModelingService.getModels();
    res.json(models);
  } catch (error) {
    next(error);
  }
});

module.exports = router;

```

### workflowRoutes.js

```js
// src/routes/workflowRoutes.js
const express = require('express');
const WorkflowModel = require('../models/Workflow');
const WorkflowService = require('../services/workflowService');

const router = express.Router();

router.post('/', async (req, res) => {
  try {
    const workflow = await WorkflowModel.createWorkflow(req.body);
    res.status(201).json(workflow);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

router.get('/', async (req, res) => {
  try {
    const workflows = await WorkflowModel.getWorkflows();
    res.json(workflows);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

router.post('/:id/execute', async (req, res) => {
  try {
    const workflow = await WorkflowModel.getWorkflowById(req.params.id);
    if (!workflow) {
      return res.status(404).json({ message: 'Workflow not found' });
    }
    const result = await WorkflowService.executeWorkflow(workflow, req.body);
    res.json(result);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

module.exports = router;

```

###### services

### apiGenerationService.js

```js
// src/services/apiGenerationService.js
const express = require('express');
const { query } = require('../utils/db');

class APIGenerationService {
  generateAPI(modelName, fields) {
    const router = express.Router();

    // Create
    router.post('/', async (req, res) => {
      try {
        const keys = Object.keys(req.body);
        const values = Object.values(req.body);
        const sqlQuery = `INSERT INTO ${modelName} (${keys.join(', ')}) VALUES (${values.map((_, i) => '$' + (i + 1)).join(', ')}) RETURNING *`;
        const result = await query(sqlQuery, values);
        res.status(201).json(result.rows[0]);
      } catch (error) {
        res.status(400).json({ error: error.message });
      }
    });

    // Read all
    router.get('/', async (req, res) => {
      try {
        const result = await query(`SELECT * FROM ${modelName}`);
        res.json(result.rows);
      } catch (error) {
        res.status(500).json({ error: error.message });
      }
    });

    // Read one
    router.get('/:id', async (req, res) => {
      try {
        const result = await query(`SELECT * FROM ${modelName} WHERE id = $1`, [req.params.id]);
        if (result.rows.length === 0) return res.status(404).json({ message: 'Document not found' });
        res.json(result.rows[0]);
      } catch (error) {
        res.status(500).json({ error: error.message });
      }
    });

    // Update
    router.put('/:id', async (req, res) => {
      try {
        const keys = Object.keys(req.body);
        const values = Object.values(req.body);
        const sqlQuery = `UPDATE ${modelName} SET ${keys.map((key, i) => `${key} = $${i + 1}`).join(', ')} WHERE id = $${keys.length + 1} RETURNING *`;
        const result = await query(sqlQuery, [...values, req.params.id]);
        if (result.rows.length === 0) return res.status(404).json({ message: 'Document not found' });
        res.json(result.rows[0]);
      } catch (error) {
        res.status(400).json({ error: error.message });
      }
    });

    // Delete
    router.delete('/:id', async (req, res) => {
      try {
        const result = await query(`DELETE FROM ${modelName} WHERE id = $1 RETURNING *`, [req.params.id]);
        if (result.rows.length === 0) return res.status(404).json({ message: 'Document not found' });
        res.json({ message: 'Document deleted successfully' });
      } catch (error) {
        res.status(500).json({ error: error.message });
      }
    });

    return router;
  }
}

module.exports = new APIGenerationService();

```

### emailService.js

```js
const nodemailer = require('nodemailer');
const handlebars = require('handlebars');
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

class EmailService {
  constructor() {
    this.transporter = nodemailer.createTransport({
      host: process.env.SMTP_HOST,
      port: process.env.SMTP_PORT,
      auth: {
        user: process.env.SMTP_USER,
        pass: process.env.SMTP_PASS
      }
    });
  }

  async sendEmail(to, subject, template, context) {
    const compiledTemplate = handlebars.compile(template);
    const html = compiledTemplate(context);

    const mailOptions = {
      from: process.env.EMAIL_FROM,
      to,
      subject,
      html
    };

    await this.transporter.sendMail(mailOptions);
  }

  async saveTemplate(templateData) {
    const query = 'INSERT INTO email_templates(name, subject, body) VALUES($1, $2, $3) RETURNING *';
    const values = [templateData.name, templateData.subject, templateData.body];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getTemplates() {
    const result = await pool.query('SELECT * FROM email_templates');
    return result.rows;
  }

  async getTemplateByName(name) {
    const result = await pool.query('SELECT * FROM email_templates WHERE name = $1', [name]);
    return result.rows[0];
  }
}

module.exports = new EmailService();

```

### fileService.js

```js
const aws = require('aws-sdk');
const multer = require('multer');
const multerS3 = require('multer-s3');
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

aws.config.update({
  secretAccessKey: process.env.AWS_SECRET_ACCESS_KEY,
  accessKeyId: process.env.AWS_ACCESS_KEY_ID,
  region: process.env.AWS_REGION
});

const s3 = new aws.S3();

const upload = multer({
  storage: multerS3({
    s3: s3,
    bucket: process.env.S3_BUCKET,
    acl: 'public-read',
    metadata: function (req, file, cb) {
      cb(null, {fieldName: file.fieldname});
    },
    key: function (req, file, cb) {
      cb(null, Date.now().toString() + '-' + file.originalname)
    }
  })
});

class FileService {
  async saveFile(fileData) {
    const query = 'INSERT INTO files(filename, originalname, mimetype, size, url, uploadedby) VALUES($1, $2, $3, $4, $5, $6) RETURNING *';
    const values = [fileData.filename, fileData.originalname, fileData.mimetype, fileData.size, fileData.url, fileData.uploadedby];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getFilesByUser(userId) {
    const query = 'SELECT * FROM files WHERE uploadedby = $1';
    const result = await pool.query(query, [userId]);
    return result.rows;
  }
}

module.exports = { upload, FileService: new FileService() };

```

### workflowService.js

```js
// src/services/workflowService.js
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});
const axios = require('axios');

class WorkflowService {
  async executeWorkflow(workflowDefinition, triggerData) {
    let currentData = triggerData;

    for (const step of workflowDefinition.steps) {
      currentData = await this.executeStep(step, currentData);
    }

    return currentData;
  }

  async executeStep(step, data) {
    switch (step.type) {
      case 'transform':
        return this.transformData(step.transformation, data);
      case 'apiCall':
        return this.makeAPICall(step.apiDetails, data);
      case 'condition':
        return this.evaluateCondition(step.condition, data) ? data : null;
      default:
        throw new Error(`Unknown step type: ${step.type}`);
    }
  }

  transformData(transformation, data) {
    const result = {};
    for (const [key, value] of Object.entries(transformation)) {
      result[key] = value.split('.').reduce((o, i) => o[i], data);
    }
    return result;
  }

  async makeAPICall(apiDetails, data) {
    const { url, method, body } = apiDetails;
    const response = await axios({ method, url, data: body });
    return response.data;
  }

  evaluateCondition(condition, data) {
    const { left, operator, right } = condition;
    const leftValue = left.split('.').reduce((o, i) => o[i], data);
    switch (operator) {
      case '==':
        return leftValue == right;
      case '!=':
        return leftValue != right;
      case '>':
        return leftValue > right;
      case '<':
        return leftValue < right;
      default:
        throw new Error(`Unknown operator: ${operator}`);
    }
  }
}

module.exports = new WorkflowService();

```

###### utils

### apiResponse.js

```js
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

```

##### tests

###### integration

### api.test.js

```js
const request = require('supertest');
const app = require('../../src/app');

describe('API Tests', () => {
  it('should return 200 OK for GET /', async () => {
    const res = await request(app).get('/');
    expect(res.statusCode).toBe(200);
  });
});

```

###### unit

### sample.test.js

```js
describe('Sample Test', () => {
  it('should pass', () => {
    expect(true).toBe(true);
  });
});

```

## shared-utils

### generate-project-readme.js

```js
// utils/generate-project-readme.js
const fs = require('fs');
const path = require('path');

const excludeExtensions = ['.pkl', '.png', '.jpg', '.jpeg', '.svg', '.ico', '.txt'];
const excludeDirectories = ['node_modules', '.git', '.github', '.vscode', 'venv', '.bak', 'docs'];
const excludeFiles = ['package-lock.json'];

function log(message) {
    console.log(`[DEBUG]: ${message}`);
}

function generateReadmeForDirectory(directoryPath, directoryName, depth = 0) {
    let readmeContent = `${'#'.repeat(depth + 1)} ${directoryName}\n\n`;

    const files = fs.readdirSync(directoryPath);
    files.forEach(file => {
        const filePath = path.join(directoryPath, file);
        const stat = fs.statSync(filePath);

        if (stat.isDirectory()) {
            if (!excludeDirectories.includes(file)) {
                log(`Including directory: ${file}`);
                readmeContent += generateReadmeForDirectory(filePath, file, depth + 1);
            } else {
                log(`Excluding directory: ${file}`);
            }
        } else if (stat.isFile()) {
            if (file === 'package.json' || (!excludeFiles.includes(file) && !excludeExtensions.includes(path.extname(file)))) {
                log(`Including file: ${file}`);
                readmeContent += `### ${file}\n\n`;
                readmeContent += '```' + path.extname(file).slice(1) + '\n';
                readmeContent += fs.readFileSync(filePath, 'utf-8') + '\n';
                readmeContent += '```\n\n';
            } else {
                log(`Excluding file: ${file}`);
            }
        }
    });

    return readmeContent;
}

const rootDirs = ['/Node'];
let fullReadmeContent = '# Project Documentation\n\n';

rootDirs.forEach(dir => {
    fullReadmeContent += generateReadmeForDirectory(dir, path.basename(dir));
});

fs.writeFileSync(path.join('/Node/utils', 'FULL_README.md'), fullReadmeContent);
console.log('/Node/utils/FULL_README.md generated successfully.');

```

### generate-tree.js

```js
// utils/generate-tree.js
const fs = require('fs');
const path = require('path');

const outputFile = '/Node/utils/FULL_PROJECT_TREE.txt';
const excludeDirs = ['node_modules', '.git', '.vscode', 'venv', '.github', '.bak'];
const rootDirs = ['/Node'];

function generateStructure(dirPath, prefix = '') {
    const files = fs.readdirSync(dirPath);
    let treeContent = '';
    files.forEach((file, index) => {
        const filePath = path.join(dirPath, file);
        const stats = fs.statSync(filePath);
        const isLast = index === files.length - 1;
        const newPrefix = prefix + (isLast ? '└── ' : '├── ');

        if (!excludeDirs.includes(file)) {
            treeContent += `${prefix}${newPrefix}${file}\n`;
            if (stats.isDirectory()) {
                treeContent += generateStructure(filePath, prefix + (isLast ? '    ' : '│   '));
            }
        }
    });
    return treeContent;
}

let fullTreeContent = 'Project Structure:\n';

rootDirs.forEach(dir => {
    fullTreeContent += `\n${path.basename(dir)}/\n`;
    fullTreeContent += generateStructure(dir);
});

fs.writeFileSync(outputFile, fullTreeContent);
console.log(`Full project tree generated: ${outputFile}`);

```

### package.json

```json
{
  "name": "shared-utils",
  "version": "1.0.0",
  "main": "generate-project-readme.js",
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "keywords": [],
  "author": "",
  "license": "ISC",
  "description": ""
}

```

## utils

### continue-master-setup.sh

```sh
#!/bin/bash
# continue-master-setup.sh

set -euo pipefail

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

project_name=$1
log "$project_name"

# Parse command line options
verbose=false
while getopts "v" opt; do
  case $opt in
    v) verbose=true ;;
    *) echo "Usage: $0 [-v] <project-name>"; exit 1 ;;
  esac
done
shift $((OPTIND-1))

if $verbose; then
  set -x
fi

if [ -z "$project_name" ]; then
  echo "Usage: $0 [-v] <project-name>"
  exit 1
fi

project_dir="/d/Node/projects/$project_name"
utils_dir="/d/Node/utils"

run_script() {
  local script=$1
  shift
  log "Running $script..."
  if [ -f "$utils_dir/$script" ]; then
    if ! "$utils_dir/$script" "$@"; then
      error_exit "Script $script failed. Stopping setup."
    fi
  else
    log "Warning: $script not found. Skipping..."
  fi
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

cleanup() {
  log "Setup interrupted. Cleaning up..."
  # Add cleanup actions here
  # For example, you might want to remove partially created directories
  # rm -rf "$project_dir"
}

trap cleanup EXIT

# Client setup
run_script setup-redux.sh "$project_dir"
# Server setup
read -s -p "Enter PostgreSQL password for ${project_name}_user: " db_password
echo
run_script setup-postgresql.sh "$project_name" "${project_name}_user" "$db_password"
run_script setup-auth.sh "$project_name"
run_script run-migrations.sh "$project_name" "${project_name}_user" "$db_password"
run_script enhance-error-handling.sh "$project_name"

# API Route setup
read -p "Do you want to create an API route? (y/n) " create_route
if [[ $create_route =~ ^[Yy]$ ]]; then
  read -p "Enter the route name: " route_name
  run_script create-api-route.sh "$project_name" "$route_name"
fi

# Noloco-like functionality setup
read -p "Do you want to set up Noloco-like functionalities? (y/n) " setup_noloco
if [[ $setup_noloco =~ ^[Yy]$ ]]; then
  run_script setup-data-modeling.sh "$project_dir"
  run_script setup-api-generation.sh "$project_dir"
  run_script setup-rbac.sh "$project_dir"
  run_script setup-workflows.sh "$project_dir"
  run_script setup-dynamic-ui.sh "$project_dir"
  run_script setup-file-management.sh "$project_dir"
  run_script setup-email-templates.sh "$project_dir"
  run_script setup-dashboard.sh "$project_dir"
  run_script setup-noloco-theme.sh "$project_dir" "both"
fi

log "Project setup complete."
echo "Project $project_name has been set up successfully!"

# Remove the trap before exiting normally
trap - EXIT

```

### create-api-route.sh

```sh
#!/bin/bash

# create-api-route.sh
# Usage: create-api-route.sh <project-name> <route-name>
# Description: Creates a new API route with controller and model for PostgreSQL

set -euo pipefail

if [ $# -ne 2 ]; then
    echo "Usage: $0 <project-name> <route-name>"
    exit 1
fi

project_name=$1
route_name=$2

project_dir="/d/Node/projects/$project_name"
src_dir="$project_dir/server/src"
routes_dir="$src_dir/routes"
controllers_dir="$src_dir/controllers"
models_dir="$src_dir/models"

# Ensure directories exist
mkdir -p "$routes_dir" "$controllers_dir" "$models_dir"

# Create route file
cat << EOF > "$routes_dir/${route_name}.js"
const express = require('express');
const router = express.Router();
const ${route_name}Controller = require('../controllers/${route_name}');

router.get('/', ${route_name}Controller.getAll);
router.post('/', ${route_name}Controller.create);
router.get('/:id', ${route_name}Controller.getById);
router.put('/:id', ${route_name}Controller.update);
router.delete('/:id', ${route_name}Controller.delete);

module.exports = router;
EOF

# Create controller file
cat << EOF > "$controllers_dir/${route_name}.js"
const ${route_name}Model = require('../models/${route_name}');

exports.getAll = async (req, res) => {
  try {
    const items = await ${route_name}Model.findAll();
    res.json(items);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

exports.create = async (req, res) => {
  try {
    const newItem = await ${route_name}Model.create(req.body);
    res.status(201).json(newItem);
  } catch (error) {
    res.status(400).json({ message: error.message });
  }
};

exports.getById = async (req, res) => {
  try {
    const item = await ${route_name}Model.findByPk(req.params.id);
    if (!item) {
      return res.status(404).json({ message: 'Item not found' });
    }
    res.json(item);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

exports.update = async (req, res) => {
  try {
    const [updated] = await ${route_name}Model.update(req.body, {
      where: { id: req.params.id }
    });
    if (updated) {
      const updatedItem = await ${route_name}Model.findByPk(req.params.id);
      res.json(updatedItem);
    } else {
      res.status(404).json({ message: 'Item not found' });
    }
  } catch (error) {
    res.status(400).json({ message: error.message });
  }
};

exports.delete = async (req, res) => {
  try {
    const deleted = await ${route_name}Model.destroy({
      where: { id: req.params.id }
    });
    if (deleted) {
      res.json({ message: 'Item deleted' });
    } else {
      res.status(404).json({ message: 'Item not found' });
    }
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};
EOF

# Create model file
cat << EOF > "$models_dir/${route_name}.js"
const { DataTypes } = require('sequelize');
const sequelize = require('../config/database');

const ${route_name} = sequelize.define('${route_name}', {
  // Define your model fields here
  name: {
    type: DataTypes.STRING,
    allowNull: false
  },
  // Add more fields as needed
});

module.exports = ${route_name};
EOF

echo "API route, controller, and model for $route_name created successfully in $project_name"

```

### generate-api-service.sh

```sh
#!/bin/bash
# generate-api-service.sh

set -euo pipefail

project_dir="$1"
api_name="$2"

if [ -z "$project_dir" ] || [ -z "$api_name" ]; then
  echo "Usage: $0 <project-dir> <api-name>"
  exit 1
fi

client_dir="$project_dir/client"
cd "$client_dir" || exit 1

mkdir -p src/services

cat << EOF > "src/services/${api_name}Service.js"
import axios from 'axios';

const API_BASE_URL = process.env.REACT_APP_API_BASE_URL || 'http://localhost:3000/api';

const ${api_name}Service = {
  // Previous methods remain the same

  // Add a new method for handling file uploads
  upload: async (endpoint, file, onUploadProgress) => {
    const formData = new FormData();
    formData.append('file', file);

    try {
      const response = await axios.post(\`\${API_BASE_URL}/\${endpoint}\`, formData, {
        headers: {
          'Content-Type': 'multipart/form-data'
        },
        onUploadProgress
      });
      return response.data;
    } catch (error) {
      console.error('Error uploading file:', error);
      throw error;
    }
  },

  // Add a method for cancellable requests
  getCancellable: (endpoint) => {
    const source = axios.CancelToken.source();
    const promise = axios.get(\`\${API_BASE_URL}/\${endpoint}\`, {
      cancelToken: source.token
    });
    return { promise, cancel: () => source.cancel('Request cancelled') };
  }
};

export default ${api_name}Service;
EOF

echo "Enhanced API service ${api_name}Service created in $client_dir/src/services"

```

### generate-config.sh

```sh
#!/bin/bash
# generate-config.sh

project_dir="$1"
config_type="$2"

if [ -z "$project_dir" ] || [ -z "$config_type" ]; then
  echo "Usage: $0 <project-dir> <config-type>"
  echo "Config types: webpack, babel, tsconfig"
  exit 1
fi

client_dir="$project_dir/client"
# cd "$client_dir"

case "$config_type" in
  webpack)
    cat << EOF > "$client_dir/webpack.config.js"
const path = require('path');
const HtmlWebpackPlugin = require('html-webpack-plugin');
const MiniCssExtractPlugin = require('mini-css-extract-plugin');

module.exports = {
  entry: './src/index.js',
  output: {
    path: path.resolve(__dirname, 'dist'),
    filename: '[name].[contenthash].js',
    clean: true,
  },
  module: {
    rules: [
      {
        test: /\.(js|jsx)$/,
        exclude: /node_modules/,
        use: {
          loader: 'babel-loader',
        },
      },
      {
        test: /\.(scss|css)$/,
        use: [MiniCssExtractPlugin.loader, 'css-loader', 'sass-loader'],
      },
    ],
  },
  plugins: [
    new HtmlWebpackPlugin({
      template: './public/index.html',
    }),
    new MiniCssExtractPlugin({
      filename: '[name].[contenthash].css',
    }),
  ],
  devServer: {
    static: path.join(__dirname, 'dist'),
    port: 3000,
    hot: true,
  },
  optimization: {
    moduleIds: 'deterministic',
    runtimeChunk: 'single',
    splitChunks: {
      cacheGroups: {
        vendor: {
          test: /[\\/]node_modules[\\/]/,
          name: 'vendors',
          chunks: 'all',
        },
      },
    },
  },
};
EOF
    echo "Webpack config generated in $client_dir"
    ;;
  babel)
    cat << EOF > "$client_dir/.babelrc"
{
  "presets": [
    ["@babel/preset-env", {
      "targets": {
        "browsers": [">0.25%", "not ie 11", "not op_mini all"]
      }
    }],
    "@babel/preset-react"
  ],
  "plugins": [
    "@babel/plugin-proposal-class-properties",
    "@babel/plugin-transform-runtime"
  ]
}
EOF
    echo "Babel config generated in $client_dir"
    ;;
  tsconfig)
    cat << EOF > "$client_dir/tsconfig.json"
{
  "compilerOptions": {
    "target": "es5",
    "lib": ["dom", "dom.iterable", "esnext"],
    "allowJs": true,
    "skipLibCheck": true,
    "esModuleInterop": true,
    "allowSyntheticDefaultImports": true,
    "strict": true,
    "forceConsistentCasingInFileNames": true,
    "module": "esnext",
    "moduleResolution": "node",
    "resolveJsonModule": true,
    "isolatedModules": true,
    "noEmit": true,
    "jsx": "react-jsx",
    "baseUrl": "src"
  },
  "include": ["src"]
}
EOF
    echo "TypeScript config generated in $client_dir"
    ;;
  *)
    echo "Invalid config type. Choose 'webpack', 'babel', or 'tsconfig'."
    exit 1
    ;;
esac

```

### generate-layout.sh

```sh
#!/bin/bash
# generate-layout.sh

project_dir="$1"
layout_type="$2"

if [ -z "$project_dir" ] || [ -z "$layout_type" ]; then
  echo "Usage: $0 <project-dir> <layout-type>"
  echo "Layout types: dashboard, landing"
  exit 1
fi

client_dir="$project_dir/client"
# cd "$client_dir"

mkdir -p "$client_dir/src/layouts"

generate_layout() {
  local name="$1"
  local file="$client_dir/src/layouts/${name}Layout.js"

  cat << EOF > "$file"
import React from 'react';
import styled from 'styled-components';

const ${name}Wrapper = styled.div\`
  display: flex;
  flex-direction: column;
  min-height: 100vh;
\`;

const Header = styled.header\`
  padding: 1rem;
  background-color: \${({ theme }) => theme.colors.background};
\`;

const Main = styled.main\`
  flex: 1;
  padding: 1rem;
\`;

const Footer = styled.footer\`
  padding: 1rem;
  background-color: \${({ theme }) => theme.colors.background};
\`;

const ${name}Layout = ({ children }) => (
  <${name}Wrapper>
    <Header>Header</Header>
    <Main>{children}</Main>
    <Footer>Footer</Footer>
  </${name}Wrapper>
);

export default ${name}Layout;
EOF

  echo "${name} layout generated in $file"
}

case "$layout_type" in
  dashboard)
    generate_layout "Dashboard"
    ;;
  landing)
    generate_layout "Landing"
    ;;
  *)
    echo "Invalid layout type. Choose 'dashboard' or 'landing'."
    exit 1
    ;;
esac

```

### generate-tests.sh

```sh
#!/bin/bash
# generate-tests.sh

set -e

project_name=$1

if [ -z "$project_name" ]; then
    echo "Usage: $0 <project-name>"
    exit 1
fi

project_dir="/d/Node/projects/$project_name"
tests_dir="$project_dir/server/tests"

echo "Creating test/unit and test/integration directories..."
mkdir -p "$tests_dir/unit" "$tests_dir/integration"

# Generate a sample unit test
cat << EOF > "$tests_dir/unit/sample.test.js"
describe('Sample Test', () => {
  it('should pass', () => {
    expect(true).toBe(true);
  });
});
EOF

# Generate a sample integration test
cat << EOF > "$tests_dir/integration/api.test.js"
const request = require('supertest');
const app = require('../../src/app');

describe('API Tests', () => {
  it('should return 200 OK for GET /', async () => {
    const res = await request(app).get('/');
    expect(res.statusCode).toBe(200);
  });
});
EOF

echo "Sample tests generated in $tests_dir"

```

### init-git.sh

```sh
#!/bin/bash
# init-git.sh
# Usage: ./init-git.sh <project-name>

project_name=$1
project_dir="/d/Node/projects/$project_name"

cd "$project_dir"

# Initialize Git
git init

# Create .gitignore
cat << EOF > .gitignore
# Dependencies
node_modules/
/.pnp
.pnp.js

# Testing
/coverage

# Production
/build

# Misc
.DS_Store
.env.local
.env.development.local
.env.test.local
.env.production.local

# Logs
npm-debug.log*
yarn-debug.log*
yarn-error.log*

# Environment variables
.env

# IDE specific files
.idea/
.vscode/
*.swp
*.swo

# Operating System Files
.DS_Store
.DS_Store?
._*
.Spotlight-V100
.Trashes
ehthumbs.db
Thumbs.db

# Optional npm cache directory
.npm

# Optional eslint cache
.eslintcache

# Optional REPL history
.node_repl_history

# Output of 'npm pack'
*.tgz

# Yarn Integrity file
.yarn-integrity

# dotenv environment variables file
.env
EOF

git add .
git commit -m "Initial commit"

echo "Git initialized with .gitignore for $project_name"

```

### js-utils

### generate-ai-tools.js

```js
// generate-ai-tools.js
const generateAITools = () => {
    const aiTools = [
      {
        name: 'SmartContractGenerator',
        description: 'AI-powered contract generation based on project details'
      },
      {
        name: 'AutomaticTimeTracker',
        description: 'AI-driven time tracking using computer vision and activity monitoring'
      },
      {
        name: 'IntelligentInvoicing',
        description: 'Automated invoice creation with smart line item suggestions'
      },
      {
        name: 'PredictiveAnalytics',
        description: 'AI-powered forecasting for project timelines and budgets'
      },
      {
        name: 'ClientInsightEngine',
        description: 'AI analysis of client interactions for relationship management'
      },
      {
        name: 'NLPFormProcessor',
        description: 'Natural Language Processing for form creation and analysis'
      },
      {
        name: 'AutomatedBookkeeper',
        description: 'AI-driven categorization and reconciliation of financial transactions'
      },
      {
        name: 'TaskPrioritizer',
        description: 'AI-powered task prioritization and scheduling optimization'
      },
      {
        name: 'ProjectOptimizer',
        description: 'Machine learning-based project timeline and resource allocation'
      },
      {
        name: 'SentimentAnalyzer',
        description: 'AI-driven analysis of client communication for sentiment insights'
      }
    ];

    aiTools.forEach(tool => {
      generateAIToolFile(tool.name, tool.description);
    });
  };

  const generateAIToolFile = (name, description) => {
    // Generate AI tool integration file
    // Include necessary API calls and data processing logic
    // Save to appropriate directory
  };

  generateAITools();

```

### generate-charts.js

```js
// generate-charts.js
const generateCharts = () => {
    const charts = [
      {
        name: 'RevenueOverTime',
        type: 'LineChart',
        data: 'invoices'
      },
      {
        name: 'ProjectStatus',
        type: 'PieChart',
        data: 'projects'
      },
      {
        name: 'TimeAllocation',
        type: 'BarChart',
        data: 'timeEntries'
      },
      {
        name: 'ExpenseCategories',
        type: 'DoughnutChart',
        data: 'expenses'
      },
      {
        name: 'ClientAcquisition',
        type: 'FunnelChart',
        data: 'clients'
      },
      {
        name: 'TaskCompletion',
        type: 'GanttChart',
        data: 'tasks'
      }
    ];

    charts.forEach(chart => {
      generateChartComponent(chart.name, chart.type, chart.data);
    });
  };

  const generateChartComponent = (name, type, data) => {
    // Generate React component for the chart
    // Include data fetching and processing logic
    // Integrate with a charting library (e.g., Chart.js, D3.js)
    // Save to appropriate directory
  };

  generateCharts();

```

### generate-components.js

```js
// generate-components.js
const generateComponents = () => {
    const components = [
      'Dashboard',
      'ProjectList',
      'ProjectDetails',
      'TaskBoard',
      'TimeTracker',
      'InvoiceGenerator',
      'ProposalBuilder',
      'ContractEditor',
      'ClientPortal',
      'FormBuilder',
      'ExpenseTracker',
      'ReportingDashboard',
      'AIInsights'
    ];

    components.forEach(component => {
      generateComponentFile(component);
    });
  };

  const generateComponentFile = (name) => {
    // Generate React component with basic structure
    // Include AI integration where applicable
    // Save to appropriate directory
  };

  generateComponents();

```

### generate-forms-templates.js

```js
// generate-forms-templates.js
const generateFormsAndTemplates = () => {
    const items = [
      {
        type: 'form',
        name: 'ClientOnboarding'
      },
      {
        type: 'form',
        name: 'ProjectFeedback'
      },
      {
        type: 'template',
        name: 'InvoiceTemplate'
      },
      {
        type: 'template',
        name: 'ProposalTemplate'
      },
      {
        type: 'template',
        name: 'ContractTemplate'
      },
      {
        type: 'template',
        name: 'ProjectBrief'
      }
    ];

    items.forEach(item => {
      if (item.type === 'form') {
        generateFormBuilder(item.name);
      } else {
        generateTemplateBuilder(item.name);
      }
    });
  };

  const generateFormBuilder = (name) => {
    // Generate dynamic form builder component
    // Include drag-and-drop functionality
    // Save to appropriate directory
  };

  const generateTemplateBuilder = (name) => {
    // Generate template builder with customizable sections
    // Include placeholder system for dynamic content
    // Save to appropriate directory
  };

  generateFormsAndTemplates();

```

### generate-mock-data.js

```js
// generate-mock-data.js
const fs = require('fs');
const path = require('path');

function generateMockData(projectName, dataType, count) {
  const projectDir = path.join('/d/Node/projects', projectName, 'src/mockData');

  if (!fs.existsSync(projectDir)) {
    fs.mkdirSync(projectDir, { recursive: true });
  }

  let data;

  switch (dataType) {
    case 'users':
      data = generateUsers(count);
      break;
    case 'products':
      data = generateProducts(count);
      break;
    case 'orders':
      data = generateOrders(count);
      break;
    default:
      console.error('Invalid data type');
      return;
  }

  fs.writeFileSync(path.join(projectDir, `${dataType}.json`), JSON.stringify(data, null, 2));
  console.log(`Mock ${dataType} data generated successfully.`);
}

function generateUsers(count) {
  return Array.from({ length: count }, (_, i) => ({
    id: i + 1,
    name: `User ${i + 1}`,
    email: `user${i + 1}@example.com`,
    age: Math.floor(Math.random() * 50) + 18
  }));
}

function generateProducts(count) {
  return Array.from({ length: count }, (_, i) => ({
    id: i + 1,
    name: `Product ${i + 1}`,
    price: parseFloat((Math.random() * 100).toFixed(2)),
    category: ['Electronics', 'Clothing', 'Books', 'Food'][Math.floor(Math.random() * 4)]
  }));
}

function generateOrders(count) {
  return Array.from({ length: count }, (_, i) => ({
    id: i + 1,
    userId: Math.floor(Math.random() * 100) + 1,
    products: Array.from({ length: Math.floor(Math.random() * 5) + 1 }, () => ({
      productId: Math.floor(Math.random() * 100) + 1,
      quantity: Math.floor(Math.random() * 5) + 1
    })),
    totalAmount: parseFloat((Math.random() * 500).toFixed(2)),
    date: new Date(Date.now() - Math.floor(Math.random() * 10000000000)).toISOString()
  }));
}

// Usage
const [,, projectName, dataType, count] = process.argv;
generateMockData(projectName, dataType, parseInt(count) || 10);

```

### generate-models.js

```js
// generate-models.js
const generateModels = () => {
    const models = [
      {
        name: 'User',
        fields: ['name', 'email', 'password', 'role']
      },
      {
        name: 'Client',
        fields: ['name', 'email', 'company', 'projects']
      },
      {
        name: 'Project',
        fields: ['name', 'description', 'client', 'tasks', 'timeline', 'budget']
      },
      {
        name: 'Task',
        fields: ['name', 'description', 'project', 'assignee', 'status', 'dueDate']
      },
      {
        name: 'TimeEntry',
        fields: ['user', 'project', 'task', 'duration', 'date']
      },
      {
        name: 'Invoice',
        fields: ['client', 'project', 'items', 'total', 'status', 'dueDate']
      },
      {
        name: 'Proposal',
        fields: ['client', 'project', 'content', 'status', 'expiryDate']
      },
      {
        name: 'Contract',
        fields: ['client', 'project', 'content', 'status', 'signatureDate']
      },
      {
        name: 'Form',
        fields: ['name', 'fields', 'responses']
      },
      {
        name: 'Expense',
        fields: ['user', 'project', 'amount', 'category', 'date']
      }
    ];

    models.forEach(model => {
      generateModelFile(model.name, model.fields);
    });
  };

  const generateModelFile = (name, fields) => {
    // Generate Mongoose schema and model
    // Save to appropriate directory
  };

  generateModels();

```

### generate-readme.js

```js
// utils/generate-project-readme.js
//Purpose: Generate comprehensive documentation for each directory.
const fs = require('fs');
const path = require('path');

// Define directories and files to exclude
const excludeExtensions = ['.pkl', '.png', '.jpg', '.jpeg', '.svg', '.ico', '.txt'];
const excludeDirectories = ['node_modules', 'docs', '.git', '.github', '.vscode', 'venv', 'docs'];
const excludeFiles = ['package-lock.json'];

// Logging function for debugging
function log(message) {
    console.log(`[DEBUG]: ${message}`);
}

// Function to generate README content for a directory
function generateReadmeForDirectory(directoryPath, directoryName) {
    let readmeContent = `# Directory: ${directoryName}\n\n`;

    const files = fs.readdirSync(directoryPath);
    files.forEach(file => {
        const filePath = path.join(directoryPath, file);
        const stat = fs.statSync(filePath);

        // Exclude unnecessary directories and files
        if (stat.isDirectory()) {
            if (!excludeDirectories.includes(file)) {
                log(`Including directory: ${file}`);
                readmeContent += generateReadmeForDirectory(filePath, file);
            } else {
                log(`Excluding directory: ${file}`);
            }
        } else if (stat.isFile()) {
            if (file === 'package.json' || (!excludeFiles.includes(file) && !excludeExtensions.includes(path.extname(file)))) {
                log(`Including file: ${file}`);
                readmeContent += `## File: ${file}\n\n`;
                readmeContent += fs.readFileSync(filePath, 'utf-8') + '\n\n';
            } else {
                log(`Excluding file: ${file}`);
            }
        }
    });

    return readmeContent;
}

// Generate README for the project root
const projectRoot = path.join(__dirname, '.');
const readmeContent = generateReadmeForDirectory(projectRoot, 'Project Root');

// Write the generated README to a file
fs.writeFileSync(path.join(projectRoot, './README.txt'), readmeContent);
console.log('README.txt generated successfully.');

```

### generate-routes.js

```js
// generate-routes.js
const generateRoutes = () => {
    const routes = [
      { path: '/api/users', methods: ['GET', 'POST', 'PUT', 'DELETE'] },
      { path: '/api/clients', methods: ['GET', 'POST', 'PUT', 'DELETE'] },
      { path: '/api/projects', methods: ['GET', 'POST', 'PUT', 'DELETE'] },
      { path: '/api/tasks', methods: ['GET', 'POST', 'PUT', 'DELETE'] },
      { path: '/api/time-entries', methods: ['GET', 'POST', 'PUT', 'DELETE'] },
      { path: '/api/invoices', methods: ['GET', 'POST', 'PUT', 'DELETE'] },
      { path: '/api/proposals', methods: ['GET', 'POST', 'PUT', 'DELETE'] },
      { path: '/api/contracts', methods: ['GET', 'POST', 'PUT', 'DELETE'] },
      { path: '/api/forms', methods: ['GET', 'POST', 'PUT', 'DELETE'] },
      { path: '/api/expenses', methods: ['GET', 'POST', 'PUT', 'DELETE'] },
      { path: '/api/reports', methods: ['GET'] },
      { path: '/api/ai-insights', methods: ['GET'] }
    ];

    routes.forEach(route => {
      generateRouteFile(route.path, route.methods);
    });
  };

  const generateRouteFile = (path, methods) => {
    // Generate Express.js route file with CRUD operations
    // Include input validation and error handling
    // Save to appropriate directory
  };

  generateRoutes();

```

### master-setup.sh

```sh
#!/bin/bash
# master-setup.sh

set -euo pipefail

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

project_name=$1
log "$project_name"

# Parse command line options
verbose=false
while getopts "v" opt; do
  case $opt in
    v) verbose=true ;;
    *) echo "Usage: $0 [-v] <project-name>"; exit 1 ;;
  esac
done
shift $((OPTIND-1))

if $verbose; then
  set -x
fi

if [ -z "$project_name" ]; then
  echo "Usage: $0 [-v] <project-name>"
  exit 1
fi

project_dir="/d/Node/projects/$project_name"
log "$project_dir"
utils_dir="/d/Node/utils"

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

run_script() {
  local script=$1
  shift
  log "Running $script..."
  if [ -f "$utils_dir/$script" ]; then
    if ! "$utils_dir/$script" "$@"; then
      error_exit "Script $script failed. Stopping setup."
    fi
  else
    log "Warning: $script not found. Skipping..."
  fi
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

cleanup() {
  log "Setup interrupted. Cleaning up..."
  # Add cleanup actions here
  # For example, you might want to remove partially created directories
  # rm -rf "$project_dir"
}

trap cleanup EXIT

# Create project directory
mkdir -p "$project_dir"
cd "$project_dir"

# Core setup
run_script setup-project.sh "$project_name"
run_script set-configs.sh "$project_dir" "$project_name"
run_script generate-tests.sh "$project_name"
run_script init-git.sh "$project_name"

# Client setup
run_script setup-sass.sh "$project_dir"
run_script setup-styled-components.sh "$project_dir"
run_script setup-redux.sh "$project_dir"
run_script setup-redux-actions.sh "$project_name"
run_script generate-config.sh "$project_dir" webpack
run_script generate-config.sh "$project_dir" babel
run_script generate-config.sh "$project_dir" tsconfig
run_script generate-layout.sh "$project_dir" dashboard
run_script setup-state-management.sh "$project_dir" redux
run_script generate-api-service.sh "$project_dir" api
run_script setup-responsive-design.sh "$project_dir"
run_script setup-accessibility.sh "$project_dir"
run_script setup-performance-optimization.sh "$project_dir"

# Optional Client setups
read -p "Do you want to set up animations with Framer Motion? (y/n) " setup_animation
if [[ $setup_animation =~ ^[Yy]$ ]]; then
  run_script setup-animation.sh "$project_dir" framer-motion
fi

read -p "Do you want to set up internationalization (i18n)? (y/n) " setup_i18n
if [[ $setup_i18n =~ ^[Yy]$ ]]; then
  run_script setup-i18n.sh "$project_dir"
fi

read -p "Do you want to set up SEO? (y/n) " setup_seo
if [[ $setup_seo =~ ^[Yy]$ ]]; then
  run_script setup-seo.sh "$project_dir"
fi

read -p "Do you want to set up as a Progressive Web App (PWA)? (y/n) " setup_pwa
if [[ $setup_pwa =~ ^[Yy]$ ]]; then
  run_script setup-pwa.sh "$project_dir"
fi

read -p "Do you want to set up component documentation? (y/n) " setup_component_docs
if [[ $setup_component_docs =~ ^[Yy]$ ]]; then
  run_script setup-component-docs.sh "$project_dir"
fi

# Server setup
read -s -p "Enter PostgreSQL password for ${project_name}_user: " db_password
echo
run_script setup-postgresql.sh "$project_name" "${project_name}_user" "$db_password"
run_script setup-auth.sh "$project_name"
run_script run-migrations.sh "$project_name"

# Noloco-like functionality setup
read -p "Do you want to set up Noloco-like functionalities? (y/n) " setup_noloco
if [[ $setup_noloco =~ ^[Yy]$ ]]; then
  run_script setup-data-modeling.sh "$project_dir"
  run_script setup-api-generation.sh "$project_dir"
  run_script setup-rbac.sh "$project_dir"
  run_script setup-workflows.sh "$project_dir"
  run_script setup-dynamic-ui.sh "$project_dir"
  run_script setup-file-management.sh "$project_dir"
  run_script setup-email-templates.sh "$project_dir"
  run_script setup-dashboard.sh "$project_dir"
  run_script setup-noloco-theme.sh "$project_dir" "both"
fi

log "Project setup complete."
echo "Project $project_name has been set up successfully!"

# Remove the trap before exiting normally
trap - EXIT

```

### run-migrations.sh

```sh
#!/bin/bash
# run-migrations.sh


set -euo pipefail

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

project_name="$1"
db_user="$2"
db_pass="$3"

if [ -z "$project_name" ] || [ -z "$db_user" ] || [ -z "$db_pass" ]; then
  error_exit "Usage: $0 <project-name> <db-user> <db-pass>"
fi

log "Setting up migrations for $project_name"

project_dir="/d/Node/projects/$project_name"
server_dir="$project_dir/server"

if [ -z "$project_name" ]; then
  echo "Usage: $0 <project-name>"
  exit 1
fi

# Ensure the server directory exists
if [ ! -d "$server_dir" ]; then
  error_exit "Server directory not found: $server_dir"
fi

# Change to the server directory
cd "$server_dir" || error_exit "Failed to change to server directory"

# Ensure PostgreSQL is running
pg_isready || error_exit "PostgreSQL is not running"

# Check if DATABASE_URL is set
if [ -z "${DATABASE_URL:-}" ]; then
  error_exit "DATABASE_URL is not set"
fi

PGPASSWORD="${db_pass}" psql -U postgres -d "${project_name}" -c "GRANT ALL ON SCHEMA public TO ${db_user};"

# Run migrations
log "Running database migrations..."

if ! psql "$DATABASE_URL" -v ON_ERROR_STOP=1 <<-EOSQL
  CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
  );
EOSQL
then
  error_exit "Failed to run migrations"
fi

# Add any additional migrations here

log "Database migrations completed successfully."

```

### set-configs.sh

```sh
#!/bin/bash
# set-configs.sh

set -e

project_dir="$1"
project_name="$2"

if [ -z "$project_dir" ] || [ -z "$project_name" ]; then
    echo "Usage: $0 <project-dir> <project-name>"
    exit 1
fi

server_dir="$project_dir/server"
cd "$server_dir" || exit 1

# Create package.json
cat << EOF > ./package.json
{
  "name": "$project_name",
  "version": "1.0.0",
  "description": "Project created with DemTech Master Script Project Setup.",
  "main": "src/index.js",
  "scripts": {
    "start": "node src/index.js",
    "dev": "nodemon src/index.js",
    "test": "jest",
    "test:watch": "jest --watch",
    "test:coverage": "jest --coverage"
  },
  "author": "",
  "license": "ISC",
  "dependencies": {
    "express": "^4.17.1",
    "pg": "^8.7.1",
    "sequelize": "^6.6.5",
    "dotenv": "^10.0.0",
    "cors": "^2.8.5"
  },
  "devDependencies": {
    "jest": "^27.0.0",
    "supertest": "^6.1.3",
    "nodemon": "^2.0.12"
  }
}
EOF

# Create jest.config.js
cat << EOF > ./jest.config.js
module.exports = {
  testEnvironment: 'node',
  testMatch: ['**/tests/**/*.js', '**/?(*.)+(spec|test).js'],
  collectCoverageFrom: ['src/**/*.js'],
  coveragePathIgnorePatterns: ['/node_modules/', '/tests/'],
  coverageReporters: ['text', 'lcov'],
  setupFilesAfterEnv: ['./jest.setup.js']
};
EOF

# Create jest.setup.js
cat << EOF > ./jest.setup.js
// jest.setup.js

require('dotenv').config();

jest.setTimeout(30000);

expect.extend({
  toBeWithinRange(received, floor, ceiling) {
    const pass = received >= floor && received <= ceiling;
    if (pass) {
      return {
        message: () => \`expected \${received} not to be within range \${floor} - \${ceiling}\`,
        pass: true,
      };
    } else {
      return {
        message: () => \`expected \${received} to be within range \${floor} - \${ceiling}\`,
        pass: false,
      };
    }
  },
});

beforeAll(() => {
  console.log('Starting all tests...');
});

afterAll(() => {
  console.log('All tests completed.');
});

if (typeof fetch === 'undefined') {
  global.fetch = require('node-fetch');
}

global.createMockResponse = (data, status = 200) => {
  return new Response(JSON.stringify(data), {
    status,
    headers: { 'Content-Type': 'application/json' },
  });
};

global.wait = (ms) => new Promise(resolve => setTimeout(resolve, ms));

const mockDate = new Date('2024-08-05T12:00:00Z');
global.Date = class extends Date {
  constructor() {
    return mockDate;
  }
};
EOF

echo "Configuration files created successfully for $project_name"
echo "Jest configuration files created in $server_dir"

```

### setup-accessibility.sh

```sh
#!/bin/bash
# setup-accessibility.sh

set -euo pipefail

project_dir="$1"

if [ -z "$project_dir" ]; then
  echo "Usage: $0 <project-dir>"
  exit 1
fi

client_dir="$project_dir/client"
cd "$client_dir" || exit 1

# Create a FocusTrap component
cat << EOF > src/components/FocusTrap.js
import React, { useRef, useEffect } from 'react';

const FocusTrap = ({ children }) => {
  const trapRef = useRef(null);

  useEffect(() => {
    const trapElement = trapRef.current;
    const focusableElements = trapElement.querySelectorAll(
      'button, [href], input, select, textarea, [tabindex]:not([tabindex="-1"])'
    );
    const firstElement = focusableElements[0];
    const lastElement = focusableElements[focusableElements.length - 1];

    const handleKeyDown = (e) => {
      if (e.key === 'Tab') {
        if (e.shiftKey && document.activeElement === firstElement) {
          e.preventDefault();
          lastElement.focus();
        } else if (!e.shiftKey && document.activeElement === lastElement) {
          e.preventDefault();
          firstElement.focus();
        }
      }
    };

    trapElement.addEventListener('keydown', handleKeyDown);
    return () => trapElement.removeEventListener('keydown', handleKeyDown);
  }, []);

  return <div ref={trapRef}>{children}</div>;
};

export default FocusTrap;
EOF

echo "Enhanced accessibility setup completed for $client_dir"

```

### setup-animation.sh

```sh
#!/bin/bash
# setup-animation.sh

set -euo pipefail

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

project_dir="$1"
animation_lib="${2:-framer-motion}"

if [ -z "$project_dir" ]; then
  error_exit "Usage: $0 <project-dir> [animation-library]"
fi

client_dir="$project_dir/client"
cd "$client_dir" || error_exit "Failed to change to client directory"

log "Setting up $animation_lib for $client_dir"

case "$animation_lib" in
  framer-motion)
    npm install framer-motion

    # Create a sample animated component
    cat << EOF > src/components/AnimatedBox.js
import React from 'react';
import { motion } from 'framer-motion';

const AnimatedBox = () => (
  <motion.div
    initial={{ opacity: 0, scale: 0.5 }}
    animate={{ opacity: 1, scale: 1 }}
    transition={{ duration: 0.5 }}
    whileHover={{ scale: 1.1 }}
    whileTap={{ scale: 0.9 }}
    style={{
      width: 100,
      height: 100,
      background: 'blue',
      borderRadius: 10,
    }}
  />
);

export default AnimatedBox;
EOF
    ;;
  react-spring)
    npm install react-spring

    # Create a sample animated component
    cat << EOF > src/components/AnimatedBox.js
import React from 'react';
import { useSpring, animated } from 'react-spring';

const AnimatedBox = () => {
  const props = useSpring({
    to: { opacity: 1, scale: 1 },
    from: { opacity: 0, scale: 0.5 },
    config: { duration: 500 },
  });

  return (
    <animated.div
      style={{
        ...props,
        width: 100,
        height: 100,
        background: 'blue',
        borderRadius: 10,
      }}
    />
  );
};

export default AnimatedBox;
EOF
    ;;
  react-transition-group)
    npm install react-transition-group

    # Create a sample animated component
    cat << EOF > src/components/AnimatedBox.js
import React, { useState } from 'react';
import { CSSTransition } from 'react-transition-group';
import './AnimatedBox.css';

const AnimatedBox = () => {
  const [inProp, setInProp] = useState(false);
  return (
    <div>
      <CSSTransition in={inProp} timeout={300} classNames="fade">
        <div className="box" />
      </CSSTransition>
      <button onClick={() => setInProp(!inProp)}>
        Click to Toggle
      </button>
    </div>
  );
};

export default AnimatedBox;
EOF

    # Create CSS for the animated component
    cat << EOF > src/components/AnimatedBox.css
.box {
  width: 100px;
  height: 100px;
  background: blue;
  border-radius: 10px;
}

.fade-enter {
  opacity: 0;
}
.fade-enter-active {
  opacity: 1;
  transition: opacity 300ms ease-in;
}
.fade-exit {
  opacity: 1;
}
.fade-exit-active {
  opacity: 0;
  transition: opacity 300ms ease-in;
}
EOF
    ;;
  *)
    echo "Invalid animation library. Choose 'framer-motion', 'react-spring', or 'react-transition-group'."
    exit 1
    ;;
esac

echo "$animation_lib setup completed for $client_dir directory."

```

### setup-api-generation.sh

```sh
#!/bin/bash
# setup-api-generation.sh

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

server_dir="$project_dir/server"
mkdir -p "$server_dir/src/services" "$server_dir/src/routes"

log "Setting up API generation for $project_dir"

# Create API generation service
cat << EOF > "$server_dir/src/services/apiGenerationService.js"
// src/services/apiGenerationService.js
const express = require('express');
const { query } = require('../utils/db');

class APIGenerationService {
  generateAPI(modelName, fields) {
    const router = express.Router();

    // Create
    router.post('/', async (req, res) => {
      try {
        const keys = Object.keys(req.body);
        const values = Object.values(req.body);
        const sqlQuery = \`INSERT INTO \${modelName} (\${keys.join(', ')}) VALUES (\${values.map((_, i) => '$' + (i + 1)).join(', ')}) RETURNING *\`;
        const result = await query(sqlQuery, values);
        res.status(201).json(result.rows[0]);
      } catch (error) {
        res.status(400).json({ error: error.message });
      }
    });

    // Read all
    router.get('/', async (req, res) => {
      try {
        const result = await query(\`SELECT * FROM \${modelName}\`);
        res.json(result.rows);
      } catch (error) {
        res.status(500).json({ error: error.message });
      }
    });

    // Read one
    router.get('/:id', async (req, res) => {
      try {
        const result = await query(\`SELECT * FROM \${modelName} WHERE id = \$1\`, [req.params.id]);
        if (result.rows.length === 0) return res.status(404).json({ message: 'Document not found' });
        res.json(result.rows[0]);
      } catch (error) {
        res.status(500).json({ error: error.message });
      }
    });

    // Update
    router.put('/:id', async (req, res) => {
      try {
        const keys = Object.keys(req.body);
        const values = Object.values(req.body);
        const sqlQuery = \`UPDATE \${modelName} SET \${keys.map((key, i) => \`\${key} = \$\${i + 1}\`).join(', ')} WHERE id = \$\${keys.length + 1} RETURNING *\`;
        const result = await query(sqlQuery, [...values, req.params.id]);
        if (result.rows.length === 0) return res.status(404).json({ message: 'Document not found' });
        res.json(result.rows[0]);
      } catch (error) {
        res.status(400).json({ error: error.message });
      }
    });

    // Delete
    router.delete('/:id', async (req, res) => {
      try {
        const result = await query(\`DELETE FROM \${modelName} WHERE id = \$1 RETURNING *\`, [req.params.id]);
        if (result.rows.length === 0) return res.status(404).json({ message: 'Document not found' });
        res.json({ message: 'Document deleted successfully' });
      } catch (error) {
        res.status(500).json({ error: error.message });
      }
    });

    return router;
  }
}

module.exports = new APIGenerationService();
EOF

# Create dynamic API routes file
cat << EOF > "$server_dir/src/routes/dynamicApiRoutes.js"
// src/routes/dynamicApiRoutes.js
const express = require('express');
const apiGenerationService = require('../services/apiGenerationService');
const dataModelingService = require('../services/dataModelingService');

const router = express.Router();

// Function to set up dynamic routes
const setupDynamicRoutes = async () => {
  try {
    const models = await dataModelingService.getModels();
    models.forEach(model => {
      router.use(\`/\${model.name.toLowerCase()}\`, apiGenerationService.generateAPI(model.name, model.fields));
    });
    console.log('Dynamic API routes set up successfully');
  } catch (error) {
    console.error('Error setting up dynamic API routes:', error);
  }
};

// Set up routes immediately and export the router
setupDynamicRoutes();

module.exports = router;
EOF

log "API generation setup completed for $project_dir"

```

### setup-auth.sh

```sh
#!/bin/bash
# setup-auth.sh
# Usage: ./setup-auth.sh <project-name>

set -euo pipefail

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

project_name=$1

if [ -z "$project_name" ]; then
  echo "Usage: $0 <project-name>"
  exit 1
fi

project_dir="/d/Node/projects/$project_name"
server_dir="$project_dir/server"

# Install necessary packages
cd "$project_dir"
npm install jsonwebtoken bcryptjs

# Create an authentication middleware
mkdir -p "$server_dir/src/middleware"
cat << EOF > "$server_dir/src/middleware/auth.js"
// projects/grow-tracking-app/server/src/middleware/auth.js
const jwt = require('jsonwebtoken');

module.exports = function (req, res, next) {
  // Get token from header
  const token = req.header('x-auth-token');

  // Check if no token
  if (!token) {
    return res.status(401).json({ msg: 'No token, authorization denied' });
  }

  // Verify token
  try {
    const decoded = jwt.verify(token, process.env.JWT_SECRET);
    req.user = decoded.user;
    next();
  } catch (err) {
    res.status(401).json({ msg: 'Token is not valid' });
  }
};
EOF

# Create authentication routes
mkdir -p "$server_dir/src/routes"
cat << EOF > "$server_dir/src/routes/auth.js"
const express = require('express');
const router = express.Router();
const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');
const User = require('../models/User');
const auth = require('../middleware/auth');
require('dotenv').config();

// @route   POST api/auth/register
// @desc    Register user
// @access  Public
router.post('/register', async (req, res) => {
  const { name, email, password } = req.body;

  try {
    let user = await User.findOne({ email });
    if (user) {
      return res.status(400).json({ msg: 'User already exists' });
    }

    user = new User({
      name,
      email,
      password,
    });

    const salt = await bcrypt.genSalt(10);
    user.password = await bcrypt.hash(password, salt);

    await user.save();

    const payload = {
      user: {
        id: user.id,
      },
    };

    jwt.sign(
      payload,
      process.env.JWT_SECRET,
      { expiresIn: 3600 },
      (err, token) => {
        if (err) throw err;
        res.json({ token });
      }
    );
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Server error');
  }
});

// @route   POST api/auth/login
// @desc    Authenticate user & get token
// @access  Public
router.post('/login', async (req, res) => {
  const { email, password } = req.body;

  try {
    let user = await User.findOne({ email });
    if (!user) {
      return res.status(400).json({ msg: 'Invalid Credentials' });
    }

    const isMatch = await bcrypt.compare(password, user.password);
    if (!isMatch) {
      return res.status(400).json({ msg: 'Invalid Credentials' });
    }

    const payload = {
      user: {
        id: user.id,
      },
    };

    jwt.sign(
      payload,
      process.env.JWT_SECRET,
      { expiresIn: 3600 },
      (err, token) => {
        if (err) throw err;
        res.json({ token });
      }
    );
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Server error');
  }
});

// @route   GET api/auth/user
// @desc    Get logged in user
// @access  Private
router.get('/user', auth, async (req, res) => {
  try {
    const user = await User.findById(req.user.id).select('-password');
    res.json(user);
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Server Error');
  }
});

module.exports = router;
EOF

# Update .env file with JWT secret
echo "JWT_SECRET=mySecretKey" >> "$server_dir/.env"

echo "Authentication and authorization set up for $project_name"

```

### setup-component-docs.sh

```sh
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

```

### setup-dashboard.sh

```sh
#!/bin/bash
# setup-dashboard.sh

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

log "Setting up dashboard for $project_dir"

mkdir -p "$project_dir/client/src/components/Dashboard"

# Create Dashboard component
cat << EOF > "$project_dir/client/src/components/Dashboard/Dashboard.js"
import React, { useState, useEffect } from 'react';
import DynamicTable from '../DynamicUI/DynamicTable';

const Dashboard = () => {
  const [dashboardData, setDashboardData] = useState({});

  useEffect(() => {
    // Fetch dashboard data from API
    const fetchDashboardData = async () => {
      // Replace with actual API call
      const response = await fetch('/api/dashboard');
      const data = await response.json();
      setDashboardData(data);
    };

    fetchDashboardData();
  }, []);

  return (
    <div>
      <h1>Dashboard</h1>
      {Object.entries(dashboardData).map(([key, value]) => (
        <div key={key}>
          <h2>{key}</h2>
          {Array.isArray(value) ? (
            <DynamicTable
              data={value}
              columns={Object.keys(value[0]).map(col => ({ key: col, label: col }))}
            />
          ) : (
            <p>{value}</p>
          )}
        </div>
      ))}
    </div>
  );
};

export default Dashboard;
EOF

# Create DashboardWidget component
cat << EOF > "$project_dir/client/src/components/Dashboard/DashboardWidget.js"
import React from 'react';

const DashboardWidget = ({ title, value, icon }) => {
  return (
    <div className="dashboard-widget">
      <div className="widget-icon">{icon}</div>
      <div className="widget-content">
        <h3>{title}</h3>
        <p>{value}</p>
      </div>
    </div>
  );
};

export default DashboardWidget;
EOF

# Update App.js to include Dashboard
app_js_path="$project_dir/client/src/App.js"
if [ -f "$app_js_path" ]; then
  sed -i "/import React/a import Dashboard from './components/Dashboard/Dashboard';" "$app_js_path"
  sed -i "/<div className=\"App\">/a <Dashboard />" "$app_js_path"
else
  log "Warning: App.js not found at $app_js_path. Dashboard import not added."
fi

log "Dashboard setup completed for $project_dir"

```

### setup-data-modeling.sh

```sh
#!/bin/bash
# setup-data-modeling.sh

set -euo pipefail

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

project_dir="$1"
client_dir="$project_dir/client"

log "Setting up data modeling for $project_dir"

cd "$client_dir" || error_exit "Failed to change to client directory"

log "Installing class-variance-authority..."
npm install class-variance-authority

# Install Tailwind CSS
log "Installing Tailwind CSS..."
npm install -D tailwindcss postcss autoprefixer
npx tailwindcss init -p

# Update tailwind.config.js
log "Updating Tailwind CSS configuration..."
cat << EOF > tailwind.config.js
/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./src/**/*.{js,jsx,ts,tsx}",
  ],
  theme: {
    extend: {},
  },
  plugins: [],
}
EOF

# Update src/index.css
log "Updating src/index.css with Tailwind directives..."
cat << EOF > src/index.css
@tailwind base;
@tailwind components;
@tailwind utilities;
EOF

# Initialize shadcn-ui
npx shadcn-ui@latest init
log "Initializing shadcn-ui..."
echo '{
  "style": "default",
  "rsc": false,
  "tailwind": {
    "config": "tailwind.config.js",
    "css": "src/index.css",
    "baseColor": "slate",
    "cssVariables": true
  },
  "aliases": {
    "components": "@/components",
    "utils": "@/lib/utils"
  }
}' > components.json

# Add alert component
log "Adding shadcn-ui alert component..."
echo "y" | npx shadcn-ui@latest add alert || error_exit "Failed to add shadcn-ui alert component"

log "Data modeling setup completed for $client_dir"

```

### setup-dynamic-ui.sh

```sh
#!/bin/bash
# setup-dynamic-ui.sh

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

log "Setting up dynamic UI for $project_dir"

mkdir -p "$project_dir/client/src/components/DynamicUI"

# Create DynamicForm component
cat << EOF > "$project_dir/client/src/components/DynamicUI/DynamicForm.js"
import React from 'react';
import { useForm } from 'react-hook-form';

const DynamicForm = ({ fields, onSubmit }) => {
  const { register, handleSubmit, formState: { errors } } = useForm();

  const renderField = (field) => {
    switch (field.type) {
      case 'text':
      case 'email':
      case 'number':
        return (
          <input
            type={field.type}
            {...register(field.name, field.validation)}
            placeholder={field.placeholder}
          />
        );
      case 'select':
        return (
          <select {...register(field.name, field.validation)}>
            {field.options.map((option, index) => (
              <option key={index} value={option.value}>
                {option.label}
              </option>
            ))}
          </select>
        );
      case 'textarea':
        return (
          <textarea
            {...register(field.name, field.validation)}
            placeholder={field.placeholder}
          />
        );
      default:
        return null;
    }
  };

  return (
    <form onSubmit={handleSubmit(onSubmit)}>
      {fields.map((field, index) => (
        <div key={index}>
          <label>{field.label}</label>
          {renderField(field)}
          {errors[field.name] && <span>{errors[field.name].message}</span>}
        </div>
      ))}
      <button type="submit">Submit</button>
    </form>
  );
};

export default DynamicForm;
EOF

# Create DynamicTable component
cat << EOF > "$project_dir/client/src/components/DynamicUI/DynamicTable.js"
import React from 'react';

const DynamicTable = ({ data, columns }) => {
  return (
    <table>
      <thead>
        <tr>
          {columns.map((column, index) => (
            <th key={index}>{column.label}</th>
          ))}
        </tr>
      </thead>
      <tbody>
        {data.map((row, rowIndex) => (
          <tr key={rowIndex}>
            {columns.map((column, columnIndex) => (
              <td key={columnIndex}>{row[column.key]}</td>
            ))}
          </tr>
        ))}
      </tbody>
    </table>
  );
};

export default DynamicTable;
EOF

echo "Dynamic UI components setup completed for $project_dir"

```

### setup-email-templates.sh

```sh
#!/bin/bash
# setup-email-templates.sh

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

log "Setting up email templates for $project_dir"

mkdir -p "$project_dir/server/src/services"
mkdir -p "$project_dir/server/src/models"
mkdir -p "$project_dir/server/src/routes"

cd "$project_dir/server" || error_exit "Failed to change to server directory"
npm install nodemailer handlebars


# Create EmailService
cat << EOF > "$project_dir/server/src/services/emailService.js"
const nodemailer = require('nodemailer');
const handlebars = require('handlebars');
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

class EmailService {
  constructor() {
    this.transporter = nodemailer.createTransport({
      host: process.env.SMTP_HOST,
      port: process.env.SMTP_PORT,
      auth: {
        user: process.env.SMTP_USER,
        pass: process.env.SMTP_PASS
      }
    });
  }

  async sendEmail(to, subject, template, context) {
    const compiledTemplate = handlebars.compile(template);
    const html = compiledTemplate(context);

    const mailOptions = {
      from: process.env.EMAIL_FROM,
      to,
      subject,
      html
    };

    await this.transporter.sendMail(mailOptions);
  }

  async saveTemplate(templateData) {
    const query = 'INSERT INTO email_templates(name, subject, body) VALUES(\$1, \$2, \$3) RETURNING *';
    const values = [templateData.name, templateData.subject, templateData.body];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getTemplates() {
    const result = await pool.query('SELECT * FROM email_templates');
    return result.rows;
  }

  async getTemplateByName(name) {
    const result = await pool.query('SELECT * FROM email_templates WHERE name = \$1', [name]);
    return result.rows[0];
  }
}

module.exports = new EmailService();
EOF

# Create EmailTemplate model
cat << EOF > "$project_dir/server/src/models/EmailTemplate.js"
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

class EmailTemplateModel {
  async saveTemplate(templateData) {
    const query = 'INSERT INTO email_templates(name, subject, body) VALUES(\$1, \$2, \$3) RETURNING *';
    const values = [templateData.name, templateData.subject, templateData.body];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getTemplates() {
    const result = await pool.query('SELECT * FROM email_templates');
    return result.rows;
  }

  async getTemplateByName(name) {
    const result = await pool.query('SELECT * FROM email_templates WHERE name = \$1', [name]);
    return result.rows[0];
  }
}

module.exports = new EmailTemplateModel();
EOF

# Create email template routes
cat << EOF > "$project_dir/server/src/routes/emailTemplateRoutes.js"
const express = require('express');
const EmailService = require('../services/emailService');
const router = express.Router();

router.post('/', async (req, res) => {
  try {
    const template = await EmailService.saveTemplate(req.body);
    res.status(201).json(template);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

router.get('/', async (req, res) => {
  try {
    const templates = await EmailService.getTemplates();
    res.json(templates);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

router.post('/send', async (req, res) => {
  try {
    const { templateName, to, context } = req.body;
    const template = await EmailService.getTemplateByName(templateName);
    if (!template) {
      return res.status(404).json({ message: 'Template not found' });
    }
    await EmailService.sendEmail(to, template.subject, template.body, context);
    res.json({ message: 'Email sent successfully' });
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

module.exports = router;
EOF

log "Email templates setup completed for $project_dir"

```

### setup-file-management.sh

```sh
#!/bin/bash
# setup-file-management.sh

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

log "Setting up file management for $project_dir"

mkdir -p "$project_dir/server/src/services"
mkdir -p "$project_dir/server/src/routes"
mkdir -p "$project_dir/server/src/models"

cd "$project_dir/server" || error_exit "Failed to change to server directory"
npm install multer aws-sdk

# Create FileService
cat << EOF > "$project_dir/server/src/services/fileService.js"
const aws = require('aws-sdk');
const multer = require('multer');
const multerS3 = require('multer-s3');
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

aws.config.update({
  secretAccessKey: process.env.AWS_SECRET_ACCESS_KEY,
  accessKeyId: process.env.AWS_ACCESS_KEY_ID,
  region: process.env.AWS_REGION
});

const s3 = new aws.S3();

const upload = multer({
  storage: multerS3({
    s3: s3,
    bucket: process.env.S3_BUCKET,
    acl: 'public-read',
    metadata: function (req, file, cb) {
      cb(null, {fieldName: file.fieldname});
    },
    key: function (req, file, cb) {
      cb(null, Date.now().toString() + '-' + file.originalname)
    }
  })
});

class FileService {
  async saveFile(fileData) {
    const query = 'INSERT INTO files(filename, originalname, mimetype, size, url, uploadedby) VALUES(\$1, \$2, \$3, \$4, \$5, \$6) RETURNING *';
    const values = [fileData.filename, fileData.originalname, fileData.mimetype, fileData.size, fileData.url, fileData.uploadedby];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getFilesByUser(userId) {
    const query = 'SELECT * FROM files WHERE uploadedby = \$1';
    const result = await pool.query(query, [userId]);
    return result.rows;
  }
}

module.exports = { upload, FileService: new FileService() };
EOF

# Create File model
cat << EOF > "$project_dir/server/src/models/File.js"
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

class FileModel {
  async saveFile(fileData) {
    const query = 'INSERT INTO files(filename, originalname, mimetype, size, url, uploadedby) VALUES(\$1, \$2, \$3, \$4, \$5, \$6) RETURNING *';
    const values = [fileData.filename, fileData.originalname, fileData.mimetype, fileData.size, fileData.url, fileData.uploadedby];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getFilesByUser(userId) {
    const query = 'SELECT * FROM files WHERE uploadedby = \$1';
    const result = await pool.query(query, [userId]);
    return result.rows;
  }
}

module.exports = new FileModel();
EOF

# Create file routes
cat << EOF > "$project_dir/server/src/routes/fileRoutes.js"
const express = require('express');
const { upload, FileService } = require('../services/fileService');
const router = express.Router();

router.post('/upload', upload.single('file'), async (req, res) => {
  try {
    const fileData = {
      filename: req.file.key,
      originalname: req.file.originalname,
      mimetype: req.file.mimetype,
      size: req.file.size,
      url: req.file.location,
      uploadedby: req.user.id
    };
    const file = await FileService.saveFile(fileData);
    res.status(201).json(file);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

router.get('/', async (req, res) => {
  try {
    const files = await FileService.getFilesByUser(req.user.id);
    res.json(files);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

module.exports = router;
EOF

log "File management setup completed for $project_dir"

```

### setup-i18n.sh

```sh
#!/bin/bash
# setup-i18n.sh

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

log "Setting up internationalization for $client_dir"

# Install react-i18next, i18next, and related packages
npm install react-i18next i18next i18next-http-backend i18next-browser-languagedetector

# Create i18n configuration
mkdir -p src/i18n
cat << EOF > src/i18n/i18n.js
import i18n from 'i18next';
import { initReactI18next } from 'react-i18next';
import Backend from 'i18next-http-backend';
import LanguageDetector from 'i18next-browser-languagedetector';

i18n
  .use(Backend)
  .use(LanguageDetector)
  .use(initReactI18next)
  .init({
    fallbackLng: 'en',
    debug: process.env.NODE_ENV !== 'production',
    interpolation: {
      escapeValue: false,
    },
    backend: {
      loadPath: '/locales/{{lng}}/{{ns}}.json',
    },
  });

export default i18n;
EOF

# Create sample translation files
mkdir -p public/locales/en public/locales/es
echo '{"hello": "Hello", "welcome": "Welcome to our app!"}' > public/locales/en/translation.json
echo '{"hello": "Hola", "welcome": "¡Bienvenido a nuestra aplicación!"}' > public/locales/es/translation.json

# Update index.js to use i18n
sed -i '1iimport "./i18n/i18n";\n' src/index.js

# Create a language switcher component
cat << EOF > src/components/LanguageSwitcher.js
import React from 'react';
import { useTranslation } from 'react-i18next';

const LanguageSwitcher = () => {
  const { i18n } = useTranslation();

  const changeLanguage = (lng) => {
    i18n.changeLanguage(lng);
  };

  return (
    <div>
      <button onClick={() => changeLanguage('en')}>English</button>
      <button onClick={() => changeLanguage('es')}>Español</button>
    </div>
  );
};

export default LanguageSwitcher;
EOF

log "Internationalization setup completed for $client_dir directory."

```

### setup-noloco-theme.sh

```sh
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
FONT_FAMILY="'Inter', sans-serif"

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
    body: ${FONT_FAMILY},
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

```

### setup-performance-optimization.sh

```sh
#!/bin/bash
# setup-performance-optimization.sh

set -euo pipefail

project_dir="$1"

if [ -z "$project_dir" ]; then
  echo "Usage: $0 <project-dir>"
  exit 1
fi

client_dir="$project_dir/client"
cd "$client_dir" || exit 1

# Add a utility for image optimization
mkdir -p src/utils
cat << EOF > src/utils/imageOptimization.js
export const getOptimizedImageUrl = (url, width, height) => {
  // This is a placeholder. In a real-world scenario, you'd integrate with
  // an image optimization service like Cloudinary or Imgix.
  return `${url}?w=${width}&h=${height}&fit=crop&auto=format`;
};
EOF

# Add a custom hook for intersection observer (for lazy loading)
cat << EOF > src/utils/useIntersectionObserver.js
import { useState, useEffect } from 'react';

const useIntersectionObserver = (ref, options = {}) => {
  const [isIntersecting, setIsIntersecting] = useState(false);

  useEffect(() => {
    const observer = new IntersectionObserver(([entry]) => {
      setIsIntersecting(entry.isIntersecting);
    }, options);

    if (ref.current) {
      observer.observe(ref.current);
    }

    return () => {
      observer.disconnect();
    };
  }, [ref, options]);

  return isIntersecting;
};

export default useIntersectionObserver;
EOF

echo "Enhanced performance optimization setup completed for $client_dir"

```

### setup-postgresql.sh

```sh
#!/bin/bash
# setup-postgresql.sh

set -euo pipefail

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

project_name="$1"
db_user="$2"
db_pass="$3"

if [ -z "$project_name" ] || [ -z "$db_user" ] || [ -z "$db_pass" ]; then
  error_exit "Usage: $0 <project-name> <db-user> <db-pass>"
fi

log "Setting up PostgreSQL for $project_name"

# Check if PostgreSQL is installed
log "Checking if PostgreSQL is installed..."
if ! command -v psql &> /dev/null; then
    error_exit "PostgreSQL is not installed. Please install it and try again."
fi

log "PostgreSQL is installed. Proceeding with setup..."

project_dir="/d/Node/projects/$project_name"
server_dir="$project_dir/server"
cd "$server_dir" || error_exit "Failed to change to server directory"

# Create database and user
log "Attempting to create database and user..."
PGPASSWORD="${db_pass}" psql -U postgres -h localhost << EOF
CREATE DATABASE ${project_name} WITH OWNER ${db_user};
DO
\$\$
BEGIN
  IF NOT EXISTS (SELECT FROM pg_catalog.pg_roles WHERE rolname = '${db_user}') THEN
    CREATE USER ${db_user} WITH ENCRYPTED PASSWORD '${db_pass}';
  END IF;
END
\$\$;
GRANT ALL PRIVILEGES ON DATABASE ${project_name} TO ${db_user};
\c ${project_name}
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
EOF

if [ $? -ne 0 ]; then
    error_exit "Failed to set up database and user"
fi
log "Database and user setup completed."

log "Database and user created successfully."

# Update .env file
log "Updating .env file..."
if [ -f .env ]; then
    sed -i '/^DATABASE_URL/d' .env
fi
echo "DATABASE_URL=postgres://${db_user}:${db_pass}@localhost:5432/${project_name}" >> .env

log ".env file updated."

# Install necessary packages
log "Installing necessary npm packages..."
npm install express pg sequelize dotenv || error_exit "Failed to install npm packages"

log "NPM packages installed."

# Create database connection utility
log "Creating database connection utility..."
mkdir -p "$server_dir/src/config"
cat << EOF > "$server_dir/src/config/database.js"
// src/config/database.js
const { Pool } = require('pg');
const { Sequelize } = require('sequelize');
require('dotenv').config();

const sequelize = new Sequelize(process.env.DATABASE_URL, {
  dialect: 'postgres',
  logging: false,
  pool: {
    max: 5,
    min: 0,
    acquire: 30000,
    idle: 10000
  }
});

const pool = new Pool({
  connectionString: process.env.DATABASE_URL,
});

const testConnection = async () => {
  try {
    await sequelize.authenticate();
    console.log('Sequelize connection has been established successfully.');

    const client = await pool.connect();
    console.log('PostgreSQL pool connection has been established successfully.');
    client.release();
  } catch (error) {
    console.error('Unable to connect to the database:', error);
  }
};

testConnection();

module.exports = {
  sequelize,
  Sequelize,
  query: (text, params) => pool.query(text, params),
};
EOF

log "Database connection utility created."

# Create a basic model
log "Creating basic User model..."
mkdir -p "$server_dir/src/models"
cat << EOF > "$server_dir/src/models/User.js"
// src/models/User.js

const { Sequelize, DataTypes } = require('sequelize');
const sequelize = require('../config/database');

const User = sequelize.define('User', {
  name: {
    type: DataTypes.STRING,
    allowNull: false
  },
  email: {
    type: DataTypes.STRING,
    allowNull: false,
    unique: true
  },
  password: {
    type: DataTypes.STRING,
    allowNull: false
  }
});

module.exports = User;
EOF

log "Basic User model created."

log "PostgreSQL setup completed for $project_name"

```

### setup-project.sh

```sh
#!/bin/bash
# setup-project.sh

set -e

project_name=$1

if [ -z "$project_name" ]; then
  echo "Usage: $0 <project-name>"
  exit 1
fi

# Check for Node.js and npm
if ! command -v node > /dev/null 2>&1 || ! command -v npm > /dev/null 2>&1; then
    error_exit "Node.js and npm are required but not installed. Please install them and try again."
fi

project_dir="/d/Node/projects/$project_name"
client_dir="$project_dir/client"
server_dir="$project_dir/server"

log() {
  echo "$(date +"%Y-%m-%d %T") : $1"
}

error_exit() {
  echo "$(date +"%Y-%m-%d %T") : $1" 1>&2
  exit 1
}

log "Creating project directory..."
mkdir -p "$project_dir" || error_exit "Failed to create project directory"
cd "$project_dir" || error_exit "Failed to navigate to project directory"
touch .gitignore README.md || error_exit "Failed to create initial config files"
mkdir -p .github docs || error_exit "Failed to create project structure directories"

# Initialize project structure
log "Initializing project structure..."
mkdir -p "$server_dir/src/config" "$server_dir/src/controllers" "$server_dir/src/middleware" "$server_dir/src/models" "$server_dir/src/routes" "$server_dir/src/utils" "$server_dir/src/services" || error_exit "Failed to create server structure directories"
mkdir -p "$server_dir/tests" || error_exit "Failed to create tests directory"
cd "$server_dir" || error_exit "Failed to navigate to server directory"
touch "$server_dir/package.json" "$server_dir/src/app.js" "$server_dir/.env" "$server_dir/babel.config.js" "$server_dir/jest.config.js" "$server_dir/jest.setup.js" || error_exit "Failed to create initial server files"

cat << EOF > "$server_dir/package.json"
{
  "name": "${project_name}",
  "version": "1.0.0",
  "main": "index.js",
  "directories": {
    "doc": "docs"
  },
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "keywords": [],
  "author": "",
  "license": "ISC",
  "description": ""
}
EOF

log "Installing express pg sequelize cors dotenv dependencies..."
npm install express pg sequelize cors dotenv

log "Creating server/src/app.js..."
cat << EOF > "$server_dir/src/app.js"
const express = require('express');
const { Pool } = require('pg');
const session = require('express-session');
const pgSession = require('connect-pg-simple')(session);
const passport = require('passport');
const cors = require('cors');
const dotenv = require('dotenv');
const path = require('path');
const errorHandler = require('./middleware/error-handling-middleware');

dotenv.config();

const app = express();

// Middleware
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// PostgreSQL Pool
const pool = new Pool({
    connectionString: process.env.DATABASE_URL
});

// Session Management
app.use(session({
    store: new pgSession({
        pool: pool,
        tableName: 'session'
    }),
    secret: process.env.SESSION_SECRET || 'your_secret_key',
    resave: false,
    saveUninitialized: false,
    cookie: { secure: process.env.NODE_ENV === 'production' }
}));

// Passport middleware
app.use(passport.initialize());
app.use(passport.session());

// Passport Config
require('./config/passport')(passport);

// Routes
app.use('/api/models', require('./routes/models'));
// Add other routes as needed

// Serve static files from the React app in production
if (process.env.NODE_ENV === 'production') {
    app.use(express.static(path.join(__dirname, '../../client/build')));

    app.get('*', (req, res) => {
        res.sendFile(path.join(__dirname, '../../client/build', 'index.html'));
    });
}

// Error Handling Middleware
app.use(errorHandler);

module.exports = app;
EOF

log "Updating package.json with new dependencies..."
cd "$server_dir"
npm install express-session connect-pg-simple passport
npm install --save-dev @types/express-session @types/passport
cd -

log "Creating error handling middleware..."
mkdir -p "$server_dir/src/middleware"

cat << EOF > "$server_dir/src/middleware/error-handling-middleware.js"
const errorHandler = (err, req, res, next) => {
    console.error(err.stack);
    res.status(500).send('Something broke!');
};

module.exports = errorHandler;
EOF

log "Creating basic passport configuration..."
mkdir -p "$server_dir/src/config"
cat << EOF > "$server_dir/src/config/passport.js"
module.exports = (passport) => {
    // Add passport strategies and serialization here
    // This is a placeholder and should be expanded based on your auth requirements
};
EOF

log "Creating server/src/routes/models.js..."
cat << EOF > src/routes/models.js
const express = require('express');
const router = express.Router();
const DataModelingService = require('../services/dataModelingService');

router.post('/models', async (req, res, next) => {
  try {
    const { name, fields } = req.body;
    await DataModelingService.saveModel({ name, fields });
    res.status(201).json({ message: 'Model saved successfully' });
  } catch (error) {
    next(error);
  }
});

router.get('/models', async (req, res, next) => {
  try {
    const models = await DataModelingService.getModels();
    res.json(models);
  } catch (error) {
    next(error);
  }
});

module.exports = router;
EOF

log "Creating server/src/index.js..."
cat << EOF > "$server_dir/src/index.js"
const express = require('express');
const cors = require('cors');
require('dotenv').config();
const { sequelize } = require('./utils/db');
const modelRoutes = require('./routes/models');
const dynamicApiRoutes = require('./routes/dynamicApiRoutes');

const app = express();
const PORT = process.env.PORT || 3000;

// Middleware
app.use(cors());
app.use(express.json());

// Routes
app.use('/api/models', modelRoutes);
app.use('/api', dynamicApiRoutes);

app.get('/', (req, res) => {
  res.json({ message: 'Welcome to the API' });
});

// Error handling middleware
app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).send('Something broke!');
});

// Database connection and server start
const startServer = async () => {
  try {
    await sequelize.authenticate();
    console.log('Database connection has been established successfully.');

    app.listen(PORT, () => console.log(`Server running on port ${PORT}`));
  } catch (error) {
    console.error('Unable to connect to the database:', error);
  }
};

startServer();
EOF

log "Creating server/.env..."
cat << EOF > "$server_dir/.env"
DATABASE_URL=postgres://${project_name}_user:your_secure_password@localhost:5432/${project_name}
PORT=3000
BASE_URL=http://localhost:3000  # Optional, for local development
EOF

log "Creating project .gitignore..."
cat << EOF > "$project_dir/.gitignore"
node_modules/
.env
*.log
build/
EOF

log "Updating server/src/index.js to use app.js..."
sed -i '1i\const app = require(\'./app');' "$server_dir/src/index.js"
sed -i '/const app = express();/d' "$server_dir/src/index.js"
sed -i '/app\.use(cors());/d' "$server_dir/src/index.js"
sed -i '/app\.use(express\.json());/d' "$server_dir/src/index.js"

log "Setting up client..."
npx create-react-app "$client_dir"
cd "$client_dir" || error_exit "Failed to navigate to client directory"
npm install axios react-router-dom styled-components

log "Project $project_name set up successfully"

```

### setup-pwa.sh

```sh
#!/bin/bash
# setup-pwa.sh

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

log "Setting up PWA for $client_dir"

# Install workbox-webpack-plugin and other PWA-related packages
npm install --save-dev workbox-webpack-plugin
npm install workbox-window

# Update webpack.config.js to include workbox plugin
cat << EOF >> webpack.config.js

const WorkboxWebpackPlugin = require('workbox-webpack-plugin');

module.exports.plugins.push(
  new WorkboxWebpackPlugin.GenerateSW({
    clientsClaim: true,
    skipWaiting: true,
    runtimeCaching: [{
      urlPattern: /^https?.*/,
      handler: 'NetworkFirst',
      options: {
        cacheName: 'https-calls',
        networkTimeoutSeconds: 15,
        expiration: {
          maxEntries: 150,
          maxAgeSeconds: 30 * 24 * 60 * 60, // 1 month
        },
        cacheableResponse: {
          statuses: [0, 200],
        },
      },
    }],
  })
);
EOF

# Create a manifest.json file
cat << EOF > public/manifest.json
{
  "short_name": "Your App",
  "name": "Your Application Name",
  "icons": [
    {
      "src": "favicon.ico",
      "sizes": "64x64 32x32 24x24 16x16",
      "type": "image/x-icon"
    },
    {
      "src": "logo192.png",
      "type": "image/png",
      "sizes": "192x192"
    },
    {
      "src": "logo512.png",
      "type": "image/png",
      "sizes": "512x512"
    }
  ],
  "start_url": ".",
  "display": "standalone",
  "theme_color": "#000000",
  "background_color": "#ffffff"
}
EOF

# Update index.html to include manifest and theme-color
sed -i '/<\/head>/i\    <link rel="manifest" href="%PUBLIC_URL%/manifest.json" />' public/index.html
sed -i '/<\/head>/i\    <meta name="theme-color" content="#000000" />' public/index.html

# Create a service worker registration file
cat << EOF > src/serviceWorkerRegistration.js
import { Workbox } from 'workbox-window';

export function register() {
  if ('serviceWorker' in navigator) {
    const wb = new Workbox('/service-worker.js');

    wb.addEventListener('installed', event => {
      if (event.isUpdate) {
        if (confirm('New content is available! Click OK to refresh.')) {
          window.location.reload();
        }
      }
    });

    wb.register();
  }
}
EOF

# Update index.js to include service worker registration
cat << EOF >> src/index.js

import { register } from './serviceWorkerRegistration';

register();
EOF

log "PWA setup completed for $client_dir directory."

```

### setup-rbac.sh

```sh
#!/bin/bash
# setup-rbac.sh

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

server_dir="$project_dir/server"
src_dir="$server_dir/src"

mkdir -p "$src_dir/middlewares" "$src_dir/models" "$src_dir/routes"

log "Setting up RBAC for $project_dir"

# Install required packages
cd "$server_dir"
npm install bcryptjs jsonwebtoken
cd -

# Create RBAC middleware
cat << EOF > "$src_dir/middlewares/rbacMiddleware.js"
// src/middlewares/rbacMiddleware.js
const rbacMiddleware = (requiredRole) => {
  return (req, res, next) => {
    if (!req.user || !req.user.role) {
      return res.status(403).json({ message: 'Access denied' });
    }

    if (req.user.role !== requiredRole) {
      return res.status(403).json({ message: 'Insufficient permissions' });
    }

    next();
  };
};

module.exports = rbacMiddleware;
EOF

# Create User model with role
cat << EOF > "$src_dir/models/User.js"
const { Pool } = require('pg');
const bcrypt = require('bcryptjs');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

class UserService {
  async createUser(userData) {
    const hashedPassword = await bcrypt.hash(userData.password, 12);
    const query = 'INSERT INTO users (username, email, password, role) VALUES(\$1, \$2, \$3, \$4) RETURNING *';
    const values = [userData.username, userData.email, hashedPassword, userData.role];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async findUserByEmail(email) {
    const query = 'SELECT * FROM users WHERE email = \$1';
    const result = await pool.query(query, [email]);
    return result.rows[0];
  }

  async comparePassword(candidatePassword, storedPassword) {
    return bcrypt.compare(candidatePassword, storedPassword);
  }
}

module.exports = new UserService();
EOF

# Update auth routes to include role
cat << EOF > "$src_dir/routes/authRoutes.js"
// src/routes/authRoutes.js
const express = require('express');
const jwt = require('jsonwebtoken');
const UserService = require('../models/User');
const rbacMiddleware = require('../middlewares/rbacMiddleware');

const router = express.Router();

router.post('/register', async (req, res) => {
  try {
    const { username, email, password, role } = req.body;
    const user = await UserService.createUser({ username, email, password, role });
    res.status(201).json({ message: 'User registered successfully', user });
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

router.post('/login', async (req, res) => {
  try {
    const { email, password } = req.body;
    const user = await UserService.findUserByEmail(email);
    if (!user || !(await UserService.comparePassword(password, user.password))) {
      return res.status(401).json({ message: 'Invalid credentials' });
    }
    const token = jwt.sign({ userId: user.id, role: user.role }, process.env.JWT_SECRET, { expiresIn: '1d' });
    res.json({ token });
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

// Example of a protected route using RBAC
router.get('/admin-only', rbacMiddleware('admin'), (req, res) => {
  res.json({ message: 'Welcome, admin!' });
});

module.exports = router;
EOF

log "RBAC setup completed for $project_dir"

```

### setup-redux-actions.sh

```sh
#!/bin/bash
# setup-redux.sh

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
  echo "Usage: $0 <project-dir>"
  exit 1
fi

if ! command -v npm &> /dev/null; then
  error_exit "npm could not be found, please install Node.js and npm first."
fi

client_dir="$project_dir/client"
src_dir="$client_dir/src"

cd "$client_dir"

log "Installing Redux and related packages..."
npm install redux react-redux @reduxjs/toolkit

log "Creating Redux directory structure..."
mkdir -p "$src_dir/redux/slices"

log "Creating store.js..."
cat << EOF > "$src_dir/redux/store.js"
import { configureStore } from '@reduxjs/toolkit';
import rootReducer from './slices';

const store = configureStore({
  reducer: rootReducer,
  devTools: process.env.NODE_ENV !== 'production',
});

export default store;
EOF

log "Creating root reducer (index.js in slices directory)..."
cat << EOF > "$src_dir/redux/slices/index.js"
import { combineReducers } from 'redux';
import exampleSlice from './exampleSlice';

const rootReducer = combineReducers({
  example: exampleSlice,
});

export default rootReducer;
EOF

log "Creating an example slice..."
cat << EOF > "$src_dir/redux/slices/exampleSlice.js"
import { createSlice } from '@reduxjs/toolkit';

const initialState = {
  value: 0,
};

const exampleSlice = createSlice({
  name: 'example',
  initialState,
  reducers: {
    increment: (state) => {
      state.value += 1;
    },
    decrement: (state) => {
      state.value -= 1;
    },
  },
});

export const { increment, decrement } = exampleSlice.actions;
export default exampleSlice.reducer;
EOF

log "Updating index.js to use Redux..."
sed -i "1i import { Provider } from 'react-redux';" "$src_dir/index.js"
sed -i "2i import store from './redux/store';" "$src_dir/index.js"
sed -i "s/<React.StrictMode>/<Provider store={store}><React.StrictMode>/" "$src_dir/index.js"
sed -i "s/<\/React.StrictMode>/<\/React.StrictMode><\/Provider>/" "$src_dir/index.js"

log "Updating App.js to remove redundant Redux provider..."
cat << EOF > "$src_dir/App.js"
import React from 'react';

const App = () => {
  return (
    <div>
      {/* Your app content here */}
    </div>
  );
};

export default App;
EOF

log "Updating index.js to use Redux..."
index_file="$src_dir/index.js"
temp_file=$(mktemp)

cat << EOF > "$temp_file"
import React from 'react';
import ReactDOM from 'react-dom/client';
import { Provider } from 'react-redux';
import store from './redux/store';
import App from './App';
import './index.css';

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <React.StrictMode>
    <Provider store={store}>
      <App />
    </Provider>
  </React.StrictMode>
);
EOF

mv "$temp_file" "$index_file"

log "Redux setup completed for $client_dir directory."

```

### setup-redux.sh

```sh
#!/bin/bash
# setup-redux.sh

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
  echo "Usage: $0 <project-dir>"
  exit 1
fi

if ! command -v npm &> /dev/null; then
  error_exit "npm could not be found, please install Node.js and npm first."
fi

client_dir="$project_dir/client"
src_dir="$client_dir/src"

cd "$client_dir"

log "Installing Redux and related packages..."
npm install redux react-redux @reduxjs/toolkit

log "Creating Redux directory structure..."
mkdir -p "$src_dir/redux/slices"

log "Creating store.js..."
cat << EOF > "$src_dir/redux/store.js"
import { configureStore } from '@reduxjs/toolkit';
import rootReducer from './slices';

const store = configureStore({
  reducer: rootReducer,
  devTools: process.env.NODE_ENV !== 'production',
});

export default store;
EOF

log "Creating root reducer (index.js in slices directory)..."
cat << EOF > "$src_dir/redux/slices/index.js"
import { combineReducers } from 'redux';
import exampleSlice from './exampleSlice';

const rootReducer = combineReducers({
  example: exampleSlice,
});

export default rootReducer;
EOF

log "Creating an example slice..."
cat << EOF > "$src_dir/redux/slices/exampleSlice.js"
import { createSlice } from '@reduxjs/toolkit';

const initialState = {
  value: 0,
};

const exampleSlice = createSlice({
  name: 'example',
  initialState,
  reducers: {
    increment: (state) => {
      state.value += 1;
    },
    decrement: (state) => {
      state.value -= 1;
    },
  },
});

export const { increment, decrement } = exampleSlice.actions;
export default exampleSlice.reducer;
EOF

log "Updating index.js to use Redux..."
sed -i "1i import { Provider } from 'react-redux';" "$src_dir/index.js"
sed -i "2i import store from './redux/store';" "$src_dir/index.js"
sed -i "s/<React.StrictMode>/<Provider store={store}><React.StrictMode>/" "$src_dir/index.js"
sed -i "s/<\/React.StrictMode>/<\/React.StrictMode><\/Provider>/" "$src_dir/index.js"

log "Updating App.js to use Redux..."
cat << EOF > "$src_dir/App.js"
import React from 'react';

const App = () => {
  return (
    <div>
      {/* Your app content here */}
    </div>
  );
};

export default App;
EOF

log "Updating index.js to use Redux..."
index_file="$src_dir/index.js"
temp_file=$(mktemp)

cat << EOF > "$temp_file"
import React from 'react';
import ReactDOM from 'react-dom/client';
import { Provider } from 'react-redux';
import store from './redux/store';
import App from './App';
import './index.css';

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <React.StrictMode>
    <Provider store={store}>
      <App />
    </Provider>
  </React.StrictMode>
);
EOF

mv "$temp_file" "$index_file"

log "Redux setup completed for $client_dir directory."

```

### setup-responsive-design.sh

```sh
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

```

### setup-sass.sh

```sh
#!/bin/bash
# setup-sass.sh

project_dir="$1"

if [ -z "$project_dir" ]; then
  echo "Usage: $0 <project-dir>"
  exit 1
fi

client_dir="$project_dir/client"
cd "$client_dir"

# Install SASS
npm install sass

# Create SASS directory structure
mkdir -p src/styles/abstracts src/styles/base src/styles/components src/styles/layout src/styles/pages

# Create main SASS file
cat << EOF > src/styles/main.scss
@import 'abstracts/variables';
@import 'abstracts/mixins';

@import 'base/reset';
@import 'base/typography';

@import 'components/buttons';
@import 'components/forms';

@import 'layout/header';
@import 'layout/footer';

@import 'pages/home';
EOF

# Create example files
cat << EOF > src/styles/abstracts/_variables.scss
\$primary-color: #0070f3;
\$secondary-color: #0070f3;
\$font-stack: Arial, sans-serif;
EOF

cat << EOF > src/styles/abstracts/_mixins.scss
@mixin flexCenter {
  display: flex;
  justify-content: center;
  align-items: center;
}
EOF

cat << EOF > src/styles/base/_reset.scss
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}
EOF

# Update package.json scripts
npm pkg set scripts.sass="sass src/styles/main.scss src/styles/main.css"
npm pkg set scripts.sass:watch="sass src/styles/main.scss src/styles/main.css --watch"

echo "SASS setup completed for $client_dir directory."

```

### setup-seo.sh

```sh
#!/bin/bash
# setup-seo.sh

set -euo pipefail

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

project_dir="$1"
client_dir="$project_dir/client"

if [ -z "$project_dir" ]; then
  error_exit "Usage: $0 <project-dir>"
fi

cd "$client_dir" || error_exit "Failed to change to client directory"

log "Setting up SEO for $client_dir"

# Install react-helmet for managing document head
npm install react-helmet-async

# Create SEO component
cat << EOF > src/components/SEO.js
import React from 'react';
import { Helmet } from 'react-helmet-async';

const SEO = ({ title, description, keywords, image, url }) => (
  <Helmet>
    <title>{title}</title>
    <meta name="description" content={description} />
    <meta name="keywords" content={keywords} />
    <meta property="og:title" content={title} />
    <meta property="og:description" content={description} />
    <meta property="og:image" content={image} />
    <meta property="og:url" content={url} />
    <meta property="og:type" content="website" />
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:title" content={title} />
    <meta name="twitter:description" content={description} />
    <meta name="twitter:image" content={image} />
    <link rel="canonical" href={url} />
  </Helmet>
);

export default SEO;
EOF

mkdir -p "$client_dir/scripts"
cd "$client_dir"

# Create the sitemap generator JavaScript file
cat << 'EOF' > "$client_dir/scripts/generate-sitemap.js"
const fs = require('fs');
const path = require('path');
require('dotenv').config({ path: path.join(__dirname, '../../.env') });

const baseUrl = process.env.BASE_URL || `http://localhost:${process.env.PORT || 3000}`;
const publicDir = path.join(__dirname, '../public');

const getPages = () => {
  // This is a simplified example. In reality, you'd want to
  // generate this list based on your actual routes.
  return ['', 'register'];
};

const generateSitemap = () => {
  const pages = getPages();
  const sitemap = `<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
  ${pages.map(page => `
  <url>
    <loc>${baseUrl}/${page}</loc>
    <lastmod>${new Date().toISOString().split('T')[0]}</lastmod>
    <changefreq>weekly</changefreq>
    <priority>0.8</priority>
  </url>
  `).join('')}
</urlset>`;

  fs.writeFileSync(path.join(publicDir, 'sitemap.xml'), sitemap);
  console.log('Sitemap generated successfully');

  // Generate robots.txt
  const robotsTxt = `User-agent: *
Allow: /

Sitemap: ${baseUrl}/sitemap.xml
`;
  fs.writeFileSync(path.join(publicDir, 'robots.txt'), robotsTxt);
  console.log('robots.txt generated successfully');
};

generateSitemap();
EOF

# Run the sitemap generator
node "$client_dir/scripts/generate-sitemap.js"

# Add sitemap generation script to package.json
npm pkg set scripts.generate-sitemap="node scripts/generate-sitemap.js"

log "SEO setup completed for $project_dir"

```

### setup-state-management.sh

```sh
#!/bin/bash
# setup-state-management.sh

set -euo pipefail

project_dir="$1"
state_management="${2:-redux}"

if [ -z "$project_dir" ]; then
  echo "Usage: $0 <project-dir> [state-management]"
  echo "State management options: redux (default), mobx"
  exit 1
fi

client_dir="$project_dir/client"
cd "$client_dir" || exit 1

echo "Setting up $state_management for $client_dir"

case "$state_management" in
  redux)
    # Redux setup (as before)
    ;;
  mobx)
    # MobX setup (as before)
    ;;
  *)
    echo "Invalid state management type. Choose 'redux' or 'mobx'."
    exit 1
    ;;
esac

echo "$state_management setup completed for $client_dir"

```

### setup-styled-components.sh

```sh
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

```

### setup-workflows.sh

```sh
#!/bin/bash
# setup-workflows.sh

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

mkdir -p "$project_dir/server/src/services" "$project_dir/server/src/models" "$project_dir/server/src/routes"

log "Setting up workflows for $project_dir"

# Create Workflow service
cat << EOF > "$project_dir/server/src/services/workflowService.js"
// src/services/workflowService.js
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});
const axios = require('axios');

class WorkflowService {
  async executeWorkflow(workflowDefinition, triggerData) {
    let currentData = triggerData;

    for (const step of workflowDefinition.steps) {
      currentData = await this.executeStep(step, currentData);
    }

    return currentData;
  }

  async executeStep(step, data) {
    switch (step.type) {
      case 'transform':
        return this.transformData(step.transformation, data);
      case 'apiCall':
        return this.makeAPICall(step.apiDetails, data);
      case 'condition':
        return this.evaluateCondition(step.condition, data) ? data : null;
      default:
        throw new Error(\`Unknown step type: \${step.type}\`);
    }
  }

  transformData(transformation, data) {
    const result = {};
    for (const [key, value] of Object.entries(transformation)) {
      result[key] = value.split('.').reduce((o, i) => o[i], data);
    }
    return result;
  }

  async makeAPICall(apiDetails, data) {
    const { url, method, body } = apiDetails;
    const response = await axios({ method, url, data: body });
    return response.data;
  }

  evaluateCondition(condition, data) {
    const { left, operator, right } = condition;
    const leftValue = left.split('.').reduce((o, i) => o[i], data);
    switch (operator) {
      case '==':
        return leftValue == right;
      case '!=':
        return leftValue != right;
      case '>':
        return leftValue > right;
      case '<':
        return leftValue < right;
      default:
        throw new Error(\`Unknown operator: \${operator}\`);
    }
  }
}

module.exports = new WorkflowService();
EOF

# Create Workflow model
cat << EOF > "$project_dir/server/src/models/Workflow.js"
// src/models/Workflow.js
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

class WorkflowModel {
  async createWorkflow(workflowData) {
    const query = 'INSERT INTO workflows(name, description, trigger, steps) VALUES(\$1, \$2, \$3, \$4) RETURNING *';
    const values = [workflowData.name, workflowData.description, workflowData.trigger, JSON.stringify(workflowData.steps)];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getWorkflows() {
    const result = await pool.query('SELECT * FROM workflows');
    return result.rows;
  }

  async getWorkflowById(id) {
    const result = await pool.query('SELECT * FROM workflows WHERE id = \$1', [id]);
    return result.rows[0];
  }
}

module.exports = new WorkflowModel();
EOF

# Create workflow routes
cat << EOF > "$project_dir/server/src/routes/workflowRoutes.js"
// src/routes/workflowRoutes.js
const express = require('express');
const WorkflowModel = require('../models/Workflow');
const WorkflowService = require('../services/workflowService');

const router = express.Router();

router.post('/', async (req, res) => {
  try {
    const workflow = await WorkflowModel.createWorkflow(req.body);
    res.status(201).json(workflow);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

router.get('/', async (req, res) => {
  try {
    const workflows = await WorkflowModel.getWorkflows();
    res.json(workflows);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

router.post('/:id/execute', async (req, res) => {
  try {
    const workflow = await WorkflowModel.getWorkflowById(req.params.id);
    if (!workflow) {
      return res.status(404).json({ message: 'Workflow not found' });
    }
    const result = await WorkflowService.executeWorkflow(workflow, req.body);
    res.json(result);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

module.exports = router;
EOF

log "Workflows setup completed for $project_dir"

```


```

### generate-api-service.sh

```sh
#!/bin/bash
# generate-api-service.sh

set -euo pipefail

project_dir="$1"
api_name="$2"

if [ -z "$project_dir" ] || [ -z "$api_name" ]; then
  echo "Usage: $0 <project-dir> <api-name>"
  exit 1
fi

client_dir="$project_dir/client"
cd "$client_dir" || exit 1

mkdir -p src/services

cat << EOF > "src/services/${api_name}Service.js"
import axios from 'axios';

const API_BASE_URL = process.env.REACT_APP_API_BASE_URL || 'http://localhost:3000/api';

const ${api_name}Service = {
  // Previous methods remain the same

  // Add a new method for handling file uploads
  upload: async (endpoint, file, onUploadProgress) => {
    const formData = new FormData();
    formData.append('file', file);

    try {
      const response = await axios.post(\`\${API_BASE_URL}/\${endpoint}\`, formData, {
        headers: {
          'Content-Type': 'multipart/form-data'
        },
        onUploadProgress
      });
      return response.data;
    } catch (error) {
      console.error('Error uploading file:', error);
      throw error;
    }
  },

  // Add a method for cancellable requests
  getCancellable: (endpoint) => {
    const source = axios.CancelToken.source();
    const promise = axios.get(\`\${API_BASE_URL}/\${endpoint}\`, {
      cancelToken: source.token
    });
    return { promise, cancel: () => source.cancel('Request cancelled') };
  }
};

export default ${api_name}Service;
EOF

echo "Enhanced API service ${api_name}Service created in $client_dir/src/services"

```

### generate-config.sh

```sh
#!/bin/bash
# generate-config.sh

project_dir="$1"
config_type="$2"

if [ -z "$project_dir" ] || [ -z "$config_type" ]; then
  echo "Usage: $0 <project-dir> <config-type>"
  echo "Config types: webpack, babel, tsconfig"
  exit 1
fi

client_dir="$project_dir/client"
# cd "$client_dir"

case "$config_type" in
  webpack)
    cat << EOF > "$client_dir/webpack.config.js"
const path = require('path');
const HtmlWebpackPlugin = require('html-webpack-plugin');
const MiniCssExtractPlugin = require('mini-css-extract-plugin');

module.exports = {
  entry: './src/index.js',
  output: {
    path: path.resolve(__dirname, 'dist'),
    filename: '[name].[contenthash].js',
    clean: true,
  },
  module: {
    rules: [
      {
        test: /\.(js|jsx)$/,
        exclude: /node_modules/,
        use: {
          loader: 'babel-loader',
        },
      },
      {
        test: /\.(scss|css)$/,
        use: [MiniCssExtractPlugin.loader, 'css-loader', 'sass-loader'],
      },
    ],
  },
  plugins: [
    new HtmlWebpackPlugin({
      template: './public/index.html',
    }),
    new MiniCssExtractPlugin({
      filename: '[name].[contenthash].css',
    }),
  ],
  devServer: {
    static: path.join(__dirname, 'dist'),
    port: 3000,
    hot: true,
  },
  optimization: {
    moduleIds: 'deterministic',
    runtimeChunk: 'single',
    splitChunks: {
      cacheGroups: {
        vendor: {
          test: /[\\/]node_modules[\\/]/,
          name: 'vendors',
          chunks: 'all',
        },
      },
    },
  },
};
EOF
    echo "Webpack config generated in $client_dir"
    ;;
  babel)
    cat << EOF > "$client_dir/.babelrc"
{
  "presets": [
    ["@babel/preset-env", {
      "targets": {
        "browsers": [">0.25%", "not ie 11", "not op_mini all"]
      }
    }],
    "@babel/preset-react"
  ],
  "plugins": [
    "@babel/plugin-proposal-class-properties",
    "@babel/plugin-transform-runtime"
  ]
}
EOF
    echo "Babel config generated in $client_dir"
    ;;
  tsconfig)
    cat << EOF > "$client_dir/tsconfig.json"
{
  "compilerOptions": {
    "target": "es5",
    "lib": ["dom", "dom.iterable", "esnext"],
    "allowJs": true,
    "skipLibCheck": true,
    "esModuleInterop": true,
    "allowSyntheticDefaultImports": true,
    "strict": true,
    "forceConsistentCasingInFileNames": true,
    "module": "esnext",
    "moduleResolution": "node",
    "resolveJsonModule": true,
    "isolatedModules": true,
    "noEmit": true,
    "jsx": "react-jsx",
    "baseUrl": "src"
  },
  "include": ["src"]
}
EOF
    echo "TypeScript config generated in $client_dir"
    ;;
  *)
    echo "Invalid config type. Choose 'webpack', 'babel', or 'tsconfig'."
    exit 1
    ;;
esac

```

### generate-layout.sh

```sh
#!/bin/bash
# generate-layout.sh

project_dir="$1"
layout_type="$2"

if [ -z "$project_dir" ] || [ -z "$layout_type" ]; then
  echo "Usage: $0 <project-dir> <layout-type>"
  echo "Layout types: dashboard, landing"
  exit 1
fi

client_dir="$project_dir/client"
# cd "$client_dir"

mkdir -p "$client_dir/src/layouts"

generate_layout() {
  local name="$1"
  local file="$client_dir/src/layouts/${name}Layout.js"

  cat << EOF > "$file"
import React from 'react';
import styled from 'styled-components';

const ${name}Wrapper = styled.div\`
  display: flex;
  flex-direction: column;
  min-height: 100vh;
\`;

const Header = styled.header\`
  padding: 1rem;
  background-color: \${({ theme }) => theme.colors.background};
\`;

const Main = styled.main\`
  flex: 1;
  padding: 1rem;
\`;

const Footer = styled.footer\`
  padding: 1rem;
  background-color: \${({ theme }) => theme.colors.background};
\`;

const ${name}Layout = ({ children }) => (
  <${name}Wrapper>
    <Header>Header</Header>
    <Main>{children}</Main>
    <Footer>Footer</Footer>
  </${name}Wrapper>
);

export default ${name}Layout;
EOF

  echo "${name} layout generated in $file"
}

case "$layout_type" in
  dashboard)
    generate_layout "Dashboard"
    ;;
  landing)
    generate_layout "Landing"
    ;;
  *)
    echo "Invalid layout type. Choose 'dashboard' or 'landing'."
    exit 1
    ;;
esac

```

### generate-tests.sh

```sh
#!/bin/bash
# generate-tests.sh

set -e

project_name=$1

if [ -z "$project_name" ]; then
    echo "Usage: $0 <project-name>"
    exit 1
fi

project_dir="/d/Node/projects/$project_name"
tests_dir="$project_dir/server/tests"

echo "Creating test/unit and test/integration directories..."
mkdir -p "$tests_dir/unit" "$tests_dir/integration"

# Generate a sample unit test
cat << EOF > "$tests_dir/unit/sample.test.js"
describe('Sample Test', () => {
  it('should pass', () => {
    expect(true).toBe(true);
  });
});
EOF

# Generate a sample integration test
cat << EOF > "$tests_dir/integration/api.test.js"
const request = require('supertest');
const app = require('../../src/app');

describe('API Tests', () => {
  it('should return 200 OK for GET /', async () => {
    const res = await request(app).get('/');
    expect(res.statusCode).toBe(200);
  });
});
EOF

echo "Sample tests generated in $tests_dir"

```

### init-git.sh

```sh
#!/bin/bash
# init-git.sh
# Usage: ./init-git.sh <project-name>

project_name=$1
project_dir="/d/Node/projects/$project_name"

cd "$project_dir"

# Initialize Git
git init

# Create .gitignore
cat << EOF > .gitignore
# Dependencies
node_modules/
/.pnp
.pnp.js

# Testing
/coverage

# Production
/build

# Misc
.DS_Store
.env.local
.env.development.local
.env.test.local
.env.production.local

# Logs
npm-debug.log*
yarn-debug.log*
yarn-error.log*

# Environment variables
.env

# IDE specific files
.idea/
.vscode/
*.swp
*.swo

# Operating System Files
.DS_Store
.DS_Store?
._*
.Spotlight-V100
.Trashes
ehthumbs.db
Thumbs.db

# Optional npm cache directory
.npm

# Optional eslint cache
.eslintcache

# Optional REPL history
.node_repl_history

# Output of 'npm pack'
*.tgz

# Yarn Integrity file
.yarn-integrity

# dotenv environment variables file
.env
EOF

git add .
git commit -m "Initial commit"

echo "Git initialized with .gitignore for $project_name"

```

### master-setup.sh

```sh
#!/bin/bash
# master-setup.sh

set -euo pipefail

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

project_name=$1
log "$project_name"

# Parse command line options
verbose=false
while getopts "v" opt; do
  case $opt in
    v) verbose=true ;;
    *) echo "Usage: $0 [-v] <project-name>"; exit 1 ;;
  esac
done
shift $((OPTIND-1))

if $verbose; then
  set -x
fi

if [ -z "$project_name" ]; then
  echo "Usage: $0 [-v] <project-name>"
  exit 1
fi

project_dir="/d/Node/projects/$project_name"
log "$project_dir"
utils_dir="/d/Node/utils"

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

run_script() {
  local script=$1
  shift
  log "Running $script..."
  if [ -f "$utils_dir/$script" ]; then
    if ! "$utils_dir/$script" "$@"; then
      error_exit "Script $script failed. Stopping setup."
    fi
  else
    log "Warning: $script not found. Skipping..."
  fi
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

cleanup() {
  log "Setup interrupted. Cleaning up..."
  # Add cleanup actions here
  # For example, you might want to remove partially created directories
  # rm -rf "$project_dir"
}

trap cleanup EXIT

# Create project directory
mkdir -p "$project_dir"
cd "$project_dir"

# Core setup
run_script setup-project.sh "$project_name"
run_script set-configs.sh "$project_dir" "$project_name"
run_script generate-tests.sh "$project_name"
run_script init-git.sh "$project_name"

# Client setup
run_script setup-sass.sh "$project_dir"
run_script setup-styled-components.sh "$project_dir"
run_script setup-redux.sh "$project_dir"
run_script setup-redux-actions.sh "$project_name"
run_script generate-config.sh "$project_dir" webpack
run_script generate-config.sh "$project_dir" babel
run_script generate-config.sh "$project_dir" tsconfig
run_script generate-layout.sh "$project_dir" dashboard
run_script setup-state-management.sh "$project_dir" redux
run_script generate-api-service.sh "$project_dir" api
run_script setup-responsive-design.sh "$project_dir"
run_script setup-accessibility.sh "$project_dir"
run_script setup-performance-optimization.sh "$project_dir"

# Optional Client setups
read -p "Do you want to set up animations with Framer Motion? (y/n) " setup_animation
if [[ $setup_animation =~ ^[Yy]$ ]]; then
  run_script setup-animation.sh "$project_dir" framer-motion
fi

read -p "Do you want to set up internationalization (i18n)? (y/n) " setup_i18n
if [[ $setup_i18n =~ ^[Yy]$ ]]; then
  run_script setup-i18n.sh "$project_dir"
fi

read -p "Do you want to set up SEO? (y/n) " setup_seo
if [[ $setup_seo =~ ^[Yy]$ ]]; then
  run_script setup-seo.sh "$project_dir"
fi

read -p "Do you want to set up as a Progressive Web App (PWA)? (y/n) " setup_pwa
if [[ $setup_pwa =~ ^[Yy]$ ]]; then
  run_script setup-pwa.sh "$project_dir"
fi

read -p "Do you want to set up component documentation? (y/n) " setup_component_docs
if [[ $setup_component_docs =~ ^[Yy]$ ]]; then
  run_script setup-component-docs.sh "$project_dir"
fi

# Server setup
read -s -p "Enter PostgreSQL password for ${project_name}_user: " db_password
echo
run_script setup-postgresql.sh "$project_name" "${project_name}_user" "$db_password"
run_script setup-auth.sh "$project_name"
run_script run-migrations.sh "$project_name"

# Noloco-like functionality setup
read -p "Do you want to set up Noloco-like functionalities? (y/n) " setup_noloco
if [[ $setup_noloco =~ ^[Yy]$ ]]; then
  run_script setup-data-modeling.sh "$project_dir"
  run_script setup-api-generation.sh "$project_dir"
  run_script setup-rbac.sh "$project_dir"
  run_script setup-workflows.sh "$project_dir"
  run_script setup-dynamic-ui.sh "$project_dir"
  run_script setup-file-management.sh "$project_dir"
  run_script setup-email-templates.sh "$project_dir"
  run_script setup-dashboard.sh "$project_dir"
  run_script setup-noloco-theme.sh "$project_dir" "both"
fi

log "Project setup complete."
echo "Project $project_name has been set up successfully!"

# Remove the trap before exiting normally
trap - EXIT

```

### run-migrations.sh

```sh
#!/bin/bash
# run-migrations.sh


set -euo pipefail

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

project_name="$1"
db_user="$2"
db_pass="$3"

if [ -z "$project_name" ] || [ -z "$db_user" ] || [ -z "$db_pass" ]; then
  error_exit "Usage: $0 <project-name> <db-user> <db-pass>"
fi

log "Setting up migrations for $project_name"

project_dir="/d/Node/projects/$project_name"
server_dir="$project_dir/server"

if [ -z "$project_name" ]; then
  echo "Usage: $0 <project-name>"
  exit 1
fi

# Ensure the server directory exists
if [ ! -d "$server_dir" ]; then
  error_exit "Server directory not found: $server_dir"
fi

# Change to the server directory
cd "$server_dir" || error_exit "Failed to change to server directory"

# Ensure PostgreSQL is running
pg_isready || error_exit "PostgreSQL is not running"

# Check if DATABASE_URL is set
if [ -z "${DATABASE_URL:-}" ]; then
  error_exit "DATABASE_URL is not set"
fi

PGPASSWORD="${db_pass}" psql -U postgres -d "${project_name}" -c "GRANT ALL ON SCHEMA public TO ${db_user};"

# Run migrations
log "Running database migrations..."

if ! psql "$DATABASE_URL" -v ON_ERROR_STOP=1 <<-EOSQL
  CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
  );
EOSQL
then
  error_exit "Failed to run migrations"
fi

# Add any additional migrations here

log "Database migrations completed successfully."

```

### set-configs.sh

```sh
#!/bin/bash
# set-configs.sh

set -e

project_dir="$1"
project_name="$2"

if [ -z "$project_dir" ] || [ -z "$project_name" ]; then
    echo "Usage: $0 <project-dir> <project-name>"
    exit 1
fi

server_dir="$project_dir/server"
cd "$server_dir" || exit 1

# Create package.json
cat << EOF > ./package.json
{
  "name": "$project_name",
  "version": "1.0.0",
  "description": "Project created with DemTech Master Script Project Setup.",
  "main": "src/index.js",
  "scripts": {
    "start": "node src/index.js",
    "dev": "nodemon src/index.js",
    "test": "jest",
    "test:watch": "jest --watch",
    "test:coverage": "jest --coverage"
  },
  "author": "",
  "license": "ISC",
  "dependencies": {
    "express": "^4.17.1",
    "pg": "^8.7.1",
    "sequelize": "^6.6.5",
    "dotenv": "^10.0.0",
    "cors": "^2.8.5"
  },
  "devDependencies": {
    "jest": "^27.0.0",
    "supertest": "^6.1.3",
    "nodemon": "^2.0.12"
  }
}
EOF

# Create jest.config.js
cat << EOF > ./jest.config.js
module.exports = {
  testEnvironment: 'node',
  testMatch: ['**/tests/**/*.js', '**/?(*.)+(spec|test).js'],
  collectCoverageFrom: ['src/**/*.js'],
  coveragePathIgnorePatterns: ['/node_modules/', '/tests/'],
  coverageReporters: ['text', 'lcov'],
  setupFilesAfterEnv: ['./jest.setup.js']
};
EOF

# Create jest.setup.js
cat << EOF > ./jest.setup.js
// jest.setup.js

require('dotenv').config();

jest.setTimeout(30000);

expect.extend({
  toBeWithinRange(received, floor, ceiling) {
    const pass = received >= floor && received <= ceiling;
    if (pass) {
      return {
        message: () => \`expected \${received} not to be within range \${floor} - \${ceiling}\`,
        pass: true,
      };
    } else {
      return {
        message: () => \`expected \${received} to be within range \${floor} - \${ceiling}\`,
        pass: false,
      };
    }
  },
});

beforeAll(() => {
  console.log('Starting all tests...');
});

afterAll(() => {
  console.log('All tests completed.');
});

if (typeof fetch === 'undefined') {
  global.fetch = require('node-fetch');
}

global.createMockResponse = (data, status = 200) => {
  return new Response(JSON.stringify(data), {
    status,
    headers: { 'Content-Type': 'application/json' },
  });
};

global.wait = (ms) => new Promise(resolve => setTimeout(resolve, ms));

const mockDate = new Date('2024-08-05T12:00:00Z');
global.Date = class extends Date {
  constructor() {
    return mockDate;
  }
};
EOF

echo "Configuration files created successfully for $project_name"
echo "Jest configuration files created in $server_dir"

```

### setup-accessibility.sh

```sh
#!/bin/bash
# setup-accessibility.sh

set -euo pipefail

project_dir="$1"

if [ -z "$project_dir" ]; then
  echo "Usage: $0 <project-dir>"
  exit 1
fi

client_dir="$project_dir/client"
cd "$client_dir" || exit 1

# Create a FocusTrap component
cat << EOF > src/components/FocusTrap.js
import React, { useRef, useEffect } from 'react';

const FocusTrap = ({ children }) => {
  const trapRef = useRef(null);

  useEffect(() => {
    const trapElement = trapRef.current;
    const focusableElements = trapElement.querySelectorAll(
      'button, [href], input, select, textarea, [tabindex]:not([tabindex="-1"])'
    );
    const firstElement = focusableElements[0];
    const lastElement = focusableElements[focusableElements.length - 1];

    const handleKeyDown = (e) => {
      if (e.key === 'Tab') {
        if (e.shiftKey && document.activeElement === firstElement) {
          e.preventDefault();
          lastElement.focus();
        } else if (!e.shiftKey && document.activeElement === lastElement) {
          e.preventDefault();
          firstElement.focus();
        }
      }
    };

    trapElement.addEventListener('keydown', handleKeyDown);
    return () => trapElement.removeEventListener('keydown', handleKeyDown);
  }, []);

  return <div ref={trapRef}>{children}</div>;
};

export default FocusTrap;
EOF

echo "Enhanced accessibility setup completed for $client_dir"

```

### setup-animation.sh

```sh
#!/bin/bash
# setup-animation.sh

set -euo pipefail

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

project_dir="$1"
animation_lib="${2:-framer-motion}"

if [ -z "$project_dir" ]; then
  error_exit "Usage: $0 <project-dir> [animation-library]"
fi

client_dir="$project_dir/client"
cd "$client_dir" || error_exit "Failed to change to client directory"

log "Setting up $animation_lib for $client_dir"

case "$animation_lib" in
  framer-motion)
    npm install framer-motion

    # Create a sample animated component
    cat << EOF > src/components/AnimatedBox.js
import React from 'react';
import { motion } from 'framer-motion';

const AnimatedBox = () => (
  <motion.div
    initial={{ opacity: 0, scale: 0.5 }}
    animate={{ opacity: 1, scale: 1 }}
    transition={{ duration: 0.5 }}
    whileHover={{ scale: 1.1 }}
    whileTap={{ scale: 0.9 }}
    style={{
      width: 100,
      height: 100,
      background: 'blue',
      borderRadius: 10,
    }}
  />
);

export default AnimatedBox;
EOF
    ;;
  react-spring)
    npm install react-spring

    # Create a sample animated component
    cat << EOF > src/components/AnimatedBox.js
import React from 'react';
import { useSpring, animated } from 'react-spring';

const AnimatedBox = () => {
  const props = useSpring({
    to: { opacity: 1, scale: 1 },
    from: { opacity: 0, scale: 0.5 },
    config: { duration: 500 },
  });

  return (
    <animated.div
      style={{
        ...props,
        width: 100,
        height: 100,
        background: 'blue',
        borderRadius: 10,
      }}
    />
  );
};

export default AnimatedBox;
EOF
    ;;
  react-transition-group)
    npm install react-transition-group

    # Create a sample animated component
    cat << EOF > src/components/AnimatedBox.js
import React, { useState } from 'react';
import { CSSTransition } from 'react-transition-group';
import './AnimatedBox.css';

const AnimatedBox = () => {
  const [inProp, setInProp] = useState(false);
  return (
    <div>
      <CSSTransition in={inProp} timeout={300} classNames="fade">
        <div className="box" />
      </CSSTransition>
      <button onClick={() => setInProp(!inProp)}>
        Click to Toggle
      </button>
    </div>
  );
};

export default AnimatedBox;
EOF

    # Create CSS for the animated component
    cat << EOF > src/components/AnimatedBox.css
.box {
  width: 100px;
  height: 100px;
  background: blue;
  border-radius: 10px;
}

.fade-enter {
  opacity: 0;
}
.fade-enter-active {
  opacity: 1;
  transition: opacity 300ms ease-in;
}
.fade-exit {
  opacity: 1;
}
.fade-exit-active {
  opacity: 0;
  transition: opacity 300ms ease-in;
}
EOF
    ;;
  *)
    echo "Invalid animation library. Choose 'framer-motion', 'react-spring', or 'react-transition-group'."
    exit 1
    ;;
esac

echo "$animation_lib setup completed for $client_dir directory."

```

### setup-api-generation.sh

```sh
#!/bin/bash
# setup-api-generation.sh

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

server_dir="$project_dir/server"
mkdir -p "$server_dir/src/services" "$server_dir/src/routes"

log "Setting up API generation for $project_dir"

# Create API generation service
cat << EOF > "$server_dir/src/services/apiGenerationService.js"
// src/services/apiGenerationService.js
const express = require('express');
const { query } = require('../utils/db');

class APIGenerationService {
  generateAPI(modelName, fields) {
    const router = express.Router();

    // Create
    router.post('/', async (req, res) => {
      try {
        const keys = Object.keys(req.body);
        const values = Object.values(req.body);
        const sqlQuery = \`INSERT INTO \${modelName} (\${keys.join(', ')}) VALUES (\${values.map((_, i) => '$' + (i + 1)).join(', ')}) RETURNING *\`;
        const result = await query(sqlQuery, values);
        res.status(201).json(result.rows[0]);
      } catch (error) {
        res.status(400).json({ error: error.message });
      }
    });

    // Read all
    router.get('/', async (req, res) => {
      try {
        const result = await query(\`SELECT * FROM \${modelName}\`);
        res.json(result.rows);
      } catch (error) {
        res.status(500).json({ error: error.message });
      }
    });

    // Read one
    router.get('/:id', async (req, res) => {
      try {
        const result = await query(\`SELECT * FROM \${modelName} WHERE id = \$1\`, [req.params.id]);
        if (result.rows.length === 0) return res.status(404).json({ message: 'Document not found' });
        res.json(result.rows[0]);
      } catch (error) {
        res.status(500).json({ error: error.message });
      }
    });

    // Update
    router.put('/:id', async (req, res) => {
      try {
        const keys = Object.keys(req.body);
        const values = Object.values(req.body);
        const sqlQuery = \`UPDATE \${modelName} SET \${keys.map((key, i) => \`\${key} = \$\${i + 1}\`).join(', ')} WHERE id = \$\${keys.length + 1} RETURNING *\`;
        const result = await query(sqlQuery, [...values, req.params.id]);
        if (result.rows.length === 0) return res.status(404).json({ message: 'Document not found' });
        res.json(result.rows[0]);
      } catch (error) {
        res.status(400).json({ error: error.message });
      }
    });

    // Delete
    router.delete('/:id', async (req, res) => {
      try {
        const result = await query(\`DELETE FROM \${modelName} WHERE id = \$1 RETURNING *\`, [req.params.id]);
        if (result.rows.length === 0) return res.status(404).json({ message: 'Document not found' });
        res.json({ message: 'Document deleted successfully' });
      } catch (error) {
        res.status(500).json({ error: error.message });
      }
    });

    return router;
  }
}

module.exports = new APIGenerationService();
EOF

# Create dynamic API routes file
cat << EOF > "$server_dir/src/routes/dynamicApiRoutes.js"
// src/routes/dynamicApiRoutes.js
const express = require('express');
const apiGenerationService = require('../services/apiGenerationService');
const dataModelingService = require('../services/dataModelingService');

const router = express.Router();

// Function to set up dynamic routes
const setupDynamicRoutes = async () => {
  try {
    const models = await dataModelingService.getModels();
    models.forEach(model => {
      router.use(\`/\${model.name.toLowerCase()}\`, apiGenerationService.generateAPI(model.name, model.fields));
    });
    console.log('Dynamic API routes set up successfully');
  } catch (error) {
    console.error('Error setting up dynamic API routes:', error);
  }
};

// Set up routes immediately and export the router
setupDynamicRoutes();

module.exports = router;
EOF

log "API generation setup completed for $project_dir"

```

### setup-auth.sh

```sh
#!/bin/bash
# setup-auth.sh
# Usage: ./setup-auth.sh <project-name>

set -euo pipefail

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

project_name=$1

if [ -z "$project_name" ]; then
  echo "Usage: $0 <project-name>"
  exit 1
fi

project_dir="/d/Node/projects/$project_name"
server_dir="$project_dir/server"

# Install necessary packages
cd "$project_dir"
npm install jsonwebtoken bcryptjs

# Create an authentication middleware
mkdir -p "$server_dir/src/middleware"
cat << EOF > "$server_dir/src/middleware/auth.js"
// projects/grow-tracking-app/server/src/middleware/auth.js
const jwt = require('jsonwebtoken');

module.exports = function (req, res, next) {
  // Get token from header
  const token = req.header('x-auth-token');

  // Check if no token
  if (!token) {
    return res.status(401).json({ msg: 'No token, authorization denied' });
  }

  // Verify token
  try {
    const decoded = jwt.verify(token, process.env.JWT_SECRET);
    req.user = decoded.user;
    next();
  } catch (err) {
    res.status(401).json({ msg: 'Token is not valid' });
  }
};
EOF

# Create authentication routes
mkdir -p "$server_dir/src/routes"
cat << EOF > "$server_dir/src/routes/auth.js"
const express = require('express');
const router = express.Router();
const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');
const User = require('../models/User');
const auth = require('../middleware/auth');
require('dotenv').config();

// @route   POST api/auth/register
// @desc    Register user
// @access  Public
router.post('/register', async (req, res) => {
  const { name, email, password } = req.body;

  try {
    let user = await User.findOne({ email });
    if (user) {
      return res.status(400).json({ msg: 'User already exists' });
    }

    user = new User({
      name,
      email,
      password,
    });

    const salt = await bcrypt.genSalt(10);
    user.password = await bcrypt.hash(password, salt);

    await user.save();

    const payload = {
      user: {
        id: user.id,
      },
    };

    jwt.sign(
      payload,
      process.env.JWT_SECRET,
      { expiresIn: 3600 },
      (err, token) => {
        if (err) throw err;
        res.json({ token });
      }
    );
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Server error');
  }
});

// @route   POST api/auth/login
// @desc    Authenticate user & get token
// @access  Public
router.post('/login', async (req, res) => {
  const { email, password } = req.body;

  try {
    let user = await User.findOne({ email });
    if (!user) {
      return res.status(400).json({ msg: 'Invalid Credentials' });
    }

    const isMatch = await bcrypt.compare(password, user.password);
    if (!isMatch) {
      return res.status(400).json({ msg: 'Invalid Credentials' });
    }

    const payload = {
      user: {
        id: user.id,
      },
    };

    jwt.sign(
      payload,
      process.env.JWT_SECRET,
      { expiresIn: 3600 },
      (err, token) => {
        if (err) throw err;
        res.json({ token });
      }
    );
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Server error');
  }
});

// @route   GET api/auth/user
// @desc    Get logged in user
// @access  Private
router.get('/user', auth, async (req, res) => {
  try {
    const user = await User.findById(req.user.id).select('-password');
    res.json(user);
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Server Error');
  }
});

module.exports = router;
EOF

# Update .env file with JWT secret
echo "JWT_SECRET=mySecretKey" >> "$server_dir/.env"

echo "Authentication and authorization set up for $project_name"

```

### setup-component-docs.sh

```sh
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

```

### setup-dashboard.sh

```sh
#!/bin/bash
# setup-dashboard.sh

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

log "Setting up dashboard for $project_dir"

mkdir -p "$project_dir/client/src/components/Dashboard"

# Create Dashboard component
cat << EOF > "$project_dir/client/src/components/Dashboard/Dashboard.js"
import React, { useState, useEffect } from 'react';
import DynamicTable from '../DynamicUI/DynamicTable';

const Dashboard = () => {
  const [dashboardData, setDashboardData] = useState({});

  useEffect(() => {
    // Fetch dashboard data from API
    const fetchDashboardData = async () => {
      // Replace with actual API call
      const response = await fetch('/api/dashboard');
      const data = await response.json();
      setDashboardData(data);
    };

    fetchDashboardData();
  }, []);

  return (
    <div>
      <h1>Dashboard</h1>
      {Object.entries(dashboardData).map(([key, value]) => (
        <div key={key}>
          <h2>{key}</h2>
          {Array.isArray(value) ? (
            <DynamicTable
              data={value}
              columns={Object.keys(value[0]).map(col => ({ key: col, label: col }))}
            />
          ) : (
            <p>{value}</p>
          )}
        </div>
      ))}
    </div>
  );
};

export default Dashboard;
EOF

# Create DashboardWidget component
cat << EOF > "$project_dir/client/src/components/Dashboard/DashboardWidget.js"
import React from 'react';

const DashboardWidget = ({ title, value, icon }) => {
  return (
    <div className="dashboard-widget">
      <div className="widget-icon">{icon}</div>
      <div className="widget-content">
        <h3>{title}</h3>
        <p>{value}</p>
      </div>
    </div>
  );
};

export default DashboardWidget;
EOF

# Update App.js to include Dashboard
app_js_path="$project_dir/client/src/App.js"
if [ -f "$app_js_path" ]; then
  sed -i "/import React/a import Dashboard from './components/Dashboard/Dashboard';" "$app_js_path"
  sed -i "/<div className=\"App\">/a <Dashboard />" "$app_js_path"
else
  log "Warning: App.js not found at $app_js_path. Dashboard import not added."
fi

log "Dashboard setup completed for $project_dir"

```

### setup-data-modeling.sh

```sh
#!/bin/bash
# setup-data-modeling.sh

set -euo pipefail

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

project_dir="$1"
client_dir="$project_dir/client"

log "Setting up data modeling for $project_dir"

cd "$client_dir" || error_exit "Failed to change to client directory"

log "Installing class-variance-authority..."
npm install class-variance-authority

# Install Tailwind CSS
log "Installing Tailwind CSS..."
npm install -D tailwindcss postcss autoprefixer
npx tailwindcss init -p

# Update tailwind.config.js
log "Updating Tailwind CSS configuration..."
cat << EOF > tailwind.config.js
/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./src/**/*.{js,jsx,ts,tsx}",
  ],
  theme: {
    extend: {},
  },
  plugins: [],
}
EOF

# Update src/index.css
log "Updating src/index.css with Tailwind directives..."
cat << EOF > src/index.css
@tailwind base;
@tailwind components;
@tailwind utilities;
EOF

# Initialize shadcn-ui
npx shadcn-ui@latest init
log "Initializing shadcn-ui..."
echo '{
  "style": "default",
  "rsc": false,
  "tailwind": {
    "config": "tailwind.config.js",
    "css": "src/index.css",
    "baseColor": "slate",
    "cssVariables": true
  },
  "aliases": {
    "components": "@/components",
    "utils": "@/lib/utils"
  }
}' > components.json

# Add alert component
log "Adding shadcn-ui alert component..."
echo "y" | npx shadcn-ui@latest add alert || error_exit "Failed to add shadcn-ui alert component"

log "Data modeling setup completed for $client_dir"

```

### setup-dynamic-ui.sh

```sh
#!/bin/bash
# setup-dynamic-ui.sh

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

log "Setting up dynamic UI for $project_dir"

mkdir -p "$project_dir/client/src/components/DynamicUI"

# Create DynamicForm component
cat << EOF > "$project_dir/client/src/components/DynamicUI/DynamicForm.js"
import React from 'react';
import { useForm } from 'react-hook-form';

const DynamicForm = ({ fields, onSubmit }) => {
  const { register, handleSubmit, formState: { errors } } = useForm();

  const renderField = (field) => {
    switch (field.type) {
      case 'text':
      case 'email':
      case 'number':
        return (
          <input
            type={field.type}
            {...register(field.name, field.validation)}
            placeholder={field.placeholder}
          />
        );
      case 'select':
        return (
          <select {...register(field.name, field.validation)}>
            {field.options.map((option, index) => (
              <option key={index} value={option.value}>
                {option.label}
              </option>
            ))}
          </select>
        );
      case 'textarea':
        return (
          <textarea
            {...register(field.name, field.validation)}
            placeholder={field.placeholder}
          />
        );
      default:
        return null;
    }
  };

  return (
    <form onSubmit={handleSubmit(onSubmit)}>
      {fields.map((field, index) => (
        <div key={index}>
          <label>{field.label}</label>
          {renderField(field)}
          {errors[field.name] && <span>{errors[field.name].message}</span>}
        </div>
      ))}
      <button type="submit">Submit</button>
    </form>
  );
};

export default DynamicForm;
EOF

# Create DynamicTable component
cat << EOF > "$project_dir/client/src/components/DynamicUI/DynamicTable.js"
import React from 'react';

const DynamicTable = ({ data, columns }) => {
  return (
    <table>
      <thead>
        <tr>
          {columns.map((column, index) => (
            <th key={index}>{column.label}</th>
          ))}
        </tr>
      </thead>
      <tbody>
        {data.map((row, rowIndex) => (
          <tr key={rowIndex}>
            {columns.map((column, columnIndex) => (
              <td key={columnIndex}>{row[column.key]}</td>
            ))}
          </tr>
        ))}
      </tbody>
    </table>
  );
};

export default DynamicTable;
EOF

echo "Dynamic UI components setup completed for $project_dir"

```

### setup-email-templates.sh

```sh
#!/bin/bash
# setup-email-templates.sh

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

log "Setting up email templates for $project_dir"

mkdir -p "$project_dir/server/src/services"
mkdir -p "$project_dir/server/src/models"
mkdir -p "$project_dir/server/src/routes"

cd "$project_dir/server" || error_exit "Failed to change to server directory"
npm install nodemailer handlebars


# Create EmailService
cat << EOF > "$project_dir/server/src/services/emailService.js"
const nodemailer = require('nodemailer');
const handlebars = require('handlebars');
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

class EmailService {
  constructor() {
    this.transporter = nodemailer.createTransport({
      host: process.env.SMTP_HOST,
      port: process.env.SMTP_PORT,
      auth: {
        user: process.env.SMTP_USER,
        pass: process.env.SMTP_PASS
      }
    });
  }

  async sendEmail(to, subject, template, context) {
    const compiledTemplate = handlebars.compile(template);
    const html = compiledTemplate(context);

    const mailOptions = {
      from: process.env.EMAIL_FROM,
      to,
      subject,
      html
    };

    await this.transporter.sendMail(mailOptions);
  }

  async saveTemplate(templateData) {
    const query = 'INSERT INTO email_templates(name, subject, body) VALUES(\$1, \$2, \$3) RETURNING *';
    const values = [templateData.name, templateData.subject, templateData.body];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getTemplates() {
    const result = await pool.query('SELECT * FROM email_templates');
    return result.rows;
  }

  async getTemplateByName(name) {
    const result = await pool.query('SELECT * FROM email_templates WHERE name = \$1', [name]);
    return result.rows[0];
  }
}

module.exports = new EmailService();
EOF

# Create EmailTemplate model
cat << EOF > "$project_dir/server/src/models/EmailTemplate.js"
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

class EmailTemplateModel {
  async saveTemplate(templateData) {
    const query = 'INSERT INTO email_templates(name, subject, body) VALUES(\$1, \$2, \$3) RETURNING *';
    const values = [templateData.name, templateData.subject, templateData.body];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getTemplates() {
    const result = await pool.query('SELECT * FROM email_templates');
    return result.rows;
  }

  async getTemplateByName(name) {
    const result = await pool.query('SELECT * FROM email_templates WHERE name = \$1', [name]);
    return result.rows[0];
  }
}

module.exports = new EmailTemplateModel();
EOF

# Create email template routes
cat << EOF > "$project_dir/server/src/routes/emailTemplateRoutes.js"
const express = require('express');
const EmailService = require('../services/emailService');
const router = express.Router();

router.post('/', async (req, res) => {
  try {
    const template = await EmailService.saveTemplate(req.body);
    res.status(201).json(template);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

router.get('/', async (req, res) => {
  try {
    const templates = await EmailService.getTemplates();
    res.json(templates);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

router.post('/send', async (req, res) => {
  try {
    const { templateName, to, context } = req.body;
    const template = await EmailService.getTemplateByName(templateName);
    if (!template) {
      return res.status(404).json({ message: 'Template not found' });
    }
    await EmailService.sendEmail(to, template.subject, template.body, context);
    res.json({ message: 'Email sent successfully' });
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

module.exports = router;
EOF

log "Email templates setup completed for $project_dir"

```

### setup-file-management.sh

```sh
#!/bin/bash
# setup-file-management.sh

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

log "Setting up file management for $project_dir"

mkdir -p "$project_dir/server/src/services"
mkdir -p "$project_dir/server/src/routes"
mkdir -p "$project_dir/server/src/models"

cd "$project_dir/server" || error_exit "Failed to change to server directory"
npm install multer aws-sdk

# Create FileService
cat << EOF > "$project_dir/server/src/services/fileService.js"
const aws = require('aws-sdk');
const multer = require('multer');
const multerS3 = require('multer-s3');
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

aws.config.update({
  secretAccessKey: process.env.AWS_SECRET_ACCESS_KEY,
  accessKeyId: process.env.AWS_ACCESS_KEY_ID,
  region: process.env.AWS_REGION
});

const s3 = new aws.S3();

const upload = multer({
  storage: multerS3({
    s3: s3,
    bucket: process.env.S3_BUCKET,
    acl: 'public-read',
    metadata: function (req, file, cb) {
      cb(null, {fieldName: file.fieldname});
    },
    key: function (req, file, cb) {
      cb(null, Date.now().toString() + '-' + file.originalname)
    }
  })
});

class FileService {
  async saveFile(fileData) {
    const query = 'INSERT INTO files(filename, originalname, mimetype, size, url, uploadedby) VALUES(\$1, \$2, \$3, \$4, \$5, \$6) RETURNING *';
    const values = [fileData.filename, fileData.originalname, fileData.mimetype, fileData.size, fileData.url, fileData.uploadedby];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getFilesByUser(userId) {
    const query = 'SELECT * FROM files WHERE uploadedby = \$1';
    const result = await pool.query(query, [userId]);
    return result.rows;
  }
}

module.exports = { upload, FileService: new FileService() };
EOF

# Create File model
cat << EOF > "$project_dir/server/src/models/File.js"
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

class FileModel {
  async saveFile(fileData) {
    const query = 'INSERT INTO files(filename, originalname, mimetype, size, url, uploadedby) VALUES(\$1, \$2, \$3, \$4, \$5, \$6) RETURNING *';
    const values = [fileData.filename, fileData.originalname, fileData.mimetype, fileData.size, fileData.url, fileData.uploadedby];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getFilesByUser(userId) {
    const query = 'SELECT * FROM files WHERE uploadedby = \$1';
    const result = await pool.query(query, [userId]);
    return result.rows;
  }
}

module.exports = new FileModel();
EOF

# Create file routes
cat << EOF > "$project_dir/server/src/routes/fileRoutes.js"
const express = require('express');
const { upload, FileService } = require('../services/fileService');
const router = express.Router();

router.post('/upload', upload.single('file'), async (req, res) => {
  try {
    const fileData = {
      filename: req.file.key,
      originalname: req.file.originalname,
      mimetype: req.file.mimetype,
      size: req.file.size,
      url: req.file.location,
      uploadedby: req.user.id
    };
    const file = await FileService.saveFile(fileData);
    res.status(201).json(file);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

router.get('/', async (req, res) => {
  try {
    const files = await FileService.getFilesByUser(req.user.id);
    res.json(files);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

module.exports = router;
EOF

log "File management setup completed for $project_dir"

```

### setup-i18n.sh

```sh
#!/bin/bash
# setup-i18n.sh

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

log "Setting up internationalization for $client_dir"

# Install react-i18next, i18next, and related packages
npm install react-i18next i18next i18next-http-backend i18next-browser-languagedetector

# Create i18n configuration
mkdir -p src/i18n
cat << EOF > src/i18n/i18n.js
import i18n from 'i18next';
import { initReactI18next } from 'react-i18next';
import Backend from 'i18next-http-backend';
import LanguageDetector from 'i18next-browser-languagedetector';

i18n
  .use(Backend)
  .use(LanguageDetector)
  .use(initReactI18next)
  .init({
    fallbackLng: 'en',
    debug: process.env.NODE_ENV !== 'production',
    interpolation: {
      escapeValue: false,
    },
    backend: {
      loadPath: '/locales/{{lng}}/{{ns}}.json',
    },
  });

export default i18n;
EOF

# Create sample translation files
mkdir -p public/locales/en public/locales/es
echo '{"hello": "Hello", "welcome": "Welcome to our app!"}' > public/locales/en/translation.json
echo '{"hello": "Hola", "welcome": "¡Bienvenido a nuestra aplicación!"}' > public/locales/es/translation.json

# Update index.js to use i18n
sed -i '1iimport "./i18n/i18n";\n' src/index.js

# Create a language switcher component
cat << EOF > src/components/LanguageSwitcher.js
import React from 'react';
import { useTranslation } from 'react-i18next';

const LanguageSwitcher = () => {
  const { i18n } = useTranslation();

  const changeLanguage = (lng) => {
    i18n.changeLanguage(lng);
  };

  return (
    <div>
      <button onClick={() => changeLanguage('en')}>English</button>
      <button onClick={() => changeLanguage('es')}>Español</button>
    </div>
  );
};

export default LanguageSwitcher;
EOF

log "Internationalization setup completed for $client_dir directory."

```

### setup-noloco-theme.sh

```sh
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
FONT_FAMILY="'Inter', sans-serif"

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
    body: ${FONT_FAMILY},
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

```

### setup-performance-optimization.sh

```sh
#!/bin/bash
# setup-performance-optimization.sh

set -euo pipefail

project_dir="$1"

if [ -z "$project_dir" ]; then
  echo "Usage: $0 <project-dir>"
  exit 1
fi

client_dir="$project_dir/client"
cd "$client_dir" || exit 1

# Add a utility for image optimization
mkdir -p src/utils
cat << EOF > src/utils/imageOptimization.js
export const getOptimizedImageUrl = (url, width, height) => {
  // This is a placeholder. In a real-world scenario, you'd integrate with
  // an image optimization service like Cloudinary or Imgix.
  return `${url}?w=${width}&h=${height}&fit=crop&auto=format`;
};
EOF

# Add a custom hook for intersection observer (for lazy loading)
cat << EOF > src/utils/useIntersectionObserver.js
import { useState, useEffect } from 'react';

const useIntersectionObserver = (ref, options = {}) => {
  const [isIntersecting, setIsIntersecting] = useState(false);

  useEffect(() => {
    const observer = new IntersectionObserver(([entry]) => {
      setIsIntersecting(entry.isIntersecting);
    }, options);

    if (ref.current) {
      observer.observe(ref.current);
    }

    return () => {
      observer.disconnect();
    };
  }, [ref, options]);

  return isIntersecting;
};

export default useIntersectionObserver;
EOF

echo "Enhanced performance optimization setup completed for $client_dir"

```

### setup-postgresql.sh

```sh
#!/bin/bash
# setup-postgresql.sh

set -euo pipefail

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

project_name="$1"
db_user="$2"
db_pass="$3"

if [ -z "$project_name" ] || [ -z "$db_user" ] || [ -z "$db_pass" ]; then
  error_exit "Usage: $0 <project-name> <db-user> <db-pass>"
fi

log "Setting up PostgreSQL for $project_name"

# Check if PostgreSQL is installed
log "Checking if PostgreSQL is installed..."
if ! command -v psql &> /dev/null; then
    error_exit "PostgreSQL is not installed. Please install it and try again."
fi

log "PostgreSQL is installed. Proceeding with setup..."

project_dir="/d/Node/projects/$project_name"
server_dir="$project_dir/server"
cd "$server_dir" || error_exit "Failed to change to server directory"

# Create database and user
log "Attempting to create database and user..."
PGPASSWORD="${db_pass}" psql -U postgres -h localhost << EOF
CREATE DATABASE ${project_name} WITH OWNER ${db_user};
DO
\$\$
BEGIN
  IF NOT EXISTS (SELECT FROM pg_catalog.pg_roles WHERE rolname = '${db_user}') THEN
    CREATE USER ${db_user} WITH ENCRYPTED PASSWORD '${db_pass}';
  END IF;
END
\$\$;
GRANT ALL PRIVILEGES ON DATABASE ${project_name} TO ${db_user};
\c ${project_name}
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
EOF

if [ $? -ne 0 ]; then
    error_exit "Failed to set up database and user"
fi
log "Database and user setup completed."

log "Database and user created successfully."

# Update .env file
log "Updating .env file..."
if [ -f .env ]; then
    sed -i '/^DATABASE_URL/d' .env
fi
echo "DATABASE_URL=postgres://${db_user}:${db_pass}@localhost:5432/${project_name}" >> .env

log ".env file updated."

# Install necessary packages
log "Installing necessary npm packages..."
npm install express pg sequelize dotenv || error_exit "Failed to install npm packages"

log "NPM packages installed."

# Create database connection utility
log "Creating database connection utility..."
mkdir -p "$server_dir/src/config"
cat << EOF > "$server_dir/src/config/database.js"
// src/config/database.js
const { Pool } = require('pg');
const { Sequelize } = require('sequelize');
require('dotenv').config();

const sequelize = new Sequelize(process.env.DATABASE_URL, {
  dialect: 'postgres',
  logging: false,
  pool: {
    max: 5,
    min: 0,
    acquire: 30000,
    idle: 10000
  }
});

const pool = new Pool({
  connectionString: process.env.DATABASE_URL,
});

const testConnection = async () => {
  try {
    await sequelize.authenticate();
    console.log('Sequelize connection has been established successfully.');

    const client = await pool.connect();
    console.log('PostgreSQL pool connection has been established successfully.');
    client.release();
  } catch (error) {
    console.error('Unable to connect to the database:', error);
  }
};

testConnection();

module.exports = {
  sequelize,
  Sequelize,
  query: (text, params) => pool.query(text, params),
};
EOF

log "Database connection utility created."

# Create a basic model
log "Creating basic User model..."
mkdir -p "$server_dir/src/models"
cat << EOF > "$server_dir/src/models/User.js"
// src/models/User.js

const { Sequelize, DataTypes } = require('sequelize');
const sequelize = require('../config/database');

const User = sequelize.define('User', {
  name: {
    type: DataTypes.STRING,
    allowNull: false
  },
  email: {
    type: DataTypes.STRING,
    allowNull: false,
    unique: true
  },
  password: {
    type: DataTypes.STRING,
    allowNull: false
  }
});

module.exports = User;
EOF

log "Basic User model created."

log "PostgreSQL setup completed for $project_name"

```

### setup-project.sh

```sh
#!/bin/bash
# setup-project.sh

set -e

project_name=$1

if [ -z "$project_name" ]; then
  echo "Usage: $0 <project-name>"
  exit 1
fi

# Check for Node.js and npm
if ! command -v node > /dev/null 2>&1 || ! command -v npm > /dev/null 2>&1; then
    error_exit "Node.js and npm are required but not installed. Please install them and try again."
fi

project_dir="/d/Node/projects/$project_name"
client_dir="$project_dir/client"
server_dir="$project_dir/server"

log() {
  echo "$(date +"%Y-%m-%d %T") : $1"
}

error_exit() {
  echo "$(date +"%Y-%m-%d %T") : $1" 1>&2
  exit 1
}

log "Creating project directory..."
mkdir -p "$project_dir" || error_exit "Failed to create project directory"
cd "$project_dir" || error_exit "Failed to navigate to project directory"
touch .gitignore README.md || error_exit "Failed to create initial config files"
mkdir -p .github docs || error_exit "Failed to create project structure directories"

# Initialize project structure
log "Initializing project structure..."
mkdir -p "$server_dir/src/config" "$server_dir/src/controllers" "$server_dir/src/middleware" "$server_dir/src/models" "$server_dir/src/routes" "$server_dir/src/utils" "$server_dir/src/services" || error_exit "Failed to create server structure directories"
mkdir -p "$server_dir/tests" || error_exit "Failed to create tests directory"
cd "$server_dir" || error_exit "Failed to navigate to server directory"
touch "$server_dir/package.json" "$server_dir/src/app.js" "$server_dir/.env" "$server_dir/babel.config.js" "$server_dir/jest.config.js" "$server_dir/jest.setup.js" || error_exit "Failed to create initial server files"

cat << EOF > "$server_dir/package.json"
{
  "name": "${project_name}",
  "version": "1.0.0",
  "main": "index.js",
  "directories": {
    "doc": "docs"
  },
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "keywords": [],
  "author": "",
  "license": "ISC",
  "description": ""
}
EOF

log "Installing express pg sequelize cors dotenv dependencies..."
npm install express pg sequelize cors dotenv

log "Creating server/src/app.js..."
cat << EOF > "$server_dir/src/app.js"
const express = require('express');
const { Pool } = require('pg');
const session = require('express-session');
const pgSession = require('connect-pg-simple')(session);
const passport = require('passport');
const cors = require('cors');
const dotenv = require('dotenv');
const path = require('path');
const errorHandler = require('./middleware/error-handling-middleware');

dotenv.config();

const app = express();

// Middleware
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// PostgreSQL Pool
const pool = new Pool({
    connectionString: process.env.DATABASE_URL
});

// Session Management
app.use(session({
    store: new pgSession({
        pool: pool,
        tableName: 'session'
    }),
    secret: process.env.SESSION_SECRET || 'your_secret_key',
    resave: false,
    saveUninitialized: false,
    cookie: { secure: process.env.NODE_ENV === 'production' }
}));

// Passport middleware
app.use(passport.initialize());
app.use(passport.session());

// Passport Config
require('./config/passport')(passport);

// Routes
app.use('/api/models', require('./routes/models'));
// Add other routes as needed

// Serve static files from the React app in production
if (process.env.NODE_ENV === 'production') {
    app.use(express.static(path.join(__dirname, '../../client/build')));

    app.get('*', (req, res) => {
        res.sendFile(path.join(__dirname, '../../client/build', 'index.html'));
    });
}

// Error Handling Middleware
app.use(errorHandler);

module.exports = app;
EOF

log "Updating package.json with new dependencies..."
cd "$server_dir"
npm install express-session connect-pg-simple passport
npm install --save-dev @types/express-session @types/passport
cd -

log "Creating error handling middleware..."
mkdir -p "$server_dir/src/middleware"

cat << EOF > "$server_dir/src/middleware/error-handling-middleware.js"
const errorHandler = (err, req, res, next) => {
    console.error(err.stack);
    res.status(500).send('Something broke!');
};

module.exports = errorHandler;
EOF

log "Creating basic passport configuration..."
mkdir -p "$server_dir/src/config"
cat << EOF > "$server_dir/src/config/passport.js"
module.exports = (passport) => {
    // Add passport strategies and serialization here
    // This is a placeholder and should be expanded based on your auth requirements
};
EOF

log "Creating server/src/routes/models.js..."
cat << EOF > src/routes/models.js
const express = require('express');
const router = express.Router();
const DataModelingService = require('../services/dataModelingService');

router.post('/models', async (req, res, next) => {
  try {
    const { name, fields } = req.body;
    await DataModelingService.saveModel({ name, fields });
    res.status(201).json({ message: 'Model saved successfully' });
  } catch (error) {
    next(error);
  }
});

router.get('/models', async (req, res, next) => {
  try {
    const models = await DataModelingService.getModels();
    res.json(models);
  } catch (error) {
    next(error);
  }
});

module.exports = router;
EOF

log "Creating server/src/index.js..."
cat << EOF > "$server_dir/src/index.js"
const express = require('express');
const cors = require('cors');
require('dotenv').config();
const { sequelize } = require('./utils/db');
const modelRoutes = require('./routes/models');
const dynamicApiRoutes = require('./routes/dynamicApiRoutes');

const app = express();
const PORT = process.env.PORT || 3000;

// Middleware
app.use(cors());
app.use(express.json());

// Routes
app.use('/api/models', modelRoutes);
app.use('/api', dynamicApiRoutes);

app.get('/', (req, res) => {
  res.json({ message: 'Welcome to the API' });
});

// Error handling middleware
app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).send('Something broke!');
});

// Database connection and server start
const startServer = async () => {
  try {
    await sequelize.authenticate();
    console.log('Database connection has been established successfully.');

    app.listen(PORT, () => console.log(`Server running on port ${PORT}`));
  } catch (error) {
    console.error('Unable to connect to the database:', error);
  }
};

startServer();
EOF

log "Creating server/.env..."
cat << EOF > "$server_dir/.env"
DATABASE_URL=postgres://${project_name}_user:your_secure_password@localhost:5432/${project_name}
PORT=3000
BASE_URL=http://localhost:3000  # Optional, for local development
EOF

log "Creating project .gitignore..."
cat << EOF > "$project_dir/.gitignore"
node_modules/
.env
*.log
build/
EOF

log "Updating server/src/index.js to use app.js..."
sed -i '1i\const app = require(\'./app');' "$server_dir/src/index.js"
sed -i '/const app = express();/d' "$server_dir/src/index.js"
sed -i '/app\.use(cors());/d' "$server_dir/src/index.js"
sed -i '/app\.use(express\.json());/d' "$server_dir/src/index.js"

log "Setting up client..."
npx create-react-app "$client_dir"
cd "$client_dir" || error_exit "Failed to navigate to client directory"
npm install axios react-router-dom styled-components

log "Project $project_name set up successfully"

```

### setup-pwa.sh

```sh
#!/bin/bash
# setup-pwa.sh

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

log "Setting up PWA for $client_dir"

# Install workbox-webpack-plugin and other PWA-related packages
npm install --save-dev workbox-webpack-plugin
npm install workbox-window

# Update webpack.config.js to include workbox plugin
cat << EOF >> webpack.config.js

const WorkboxWebpackPlugin = require('workbox-webpack-plugin');

module.exports.plugins.push(
  new WorkboxWebpackPlugin.GenerateSW({
    clientsClaim: true,
    skipWaiting: true,
    runtimeCaching: [{
      urlPattern: /^https?.*/,
      handler: 'NetworkFirst',
      options: {
        cacheName: 'https-calls',
        networkTimeoutSeconds: 15,
        expiration: {
          maxEntries: 150,
          maxAgeSeconds: 30 * 24 * 60 * 60, // 1 month
        },
        cacheableResponse: {
          statuses: [0, 200],
        },
      },
    }],
  })
);
EOF

# Create a manifest.json file
cat << EOF > public/manifest.json
{
  "short_name": "Your App",
  "name": "Your Application Name",
  "icons": [
    {
      "src": "favicon.ico",
      "sizes": "64x64 32x32 24x24 16x16",
      "type": "image/x-icon"
    },
    {
      "src": "logo192.png",
      "type": "image/png",
      "sizes": "192x192"
    },
    {
      "src": "logo512.png",
      "type": "image/png",
      "sizes": "512x512"
    }
  ],
  "start_url": ".",
  "display": "standalone",
  "theme_color": "#000000",
  "background_color": "#ffffff"
}
EOF

# Update index.html to include manifest and theme-color
sed -i '/<\/head>/i\    <link rel="manifest" href="%PUBLIC_URL%/manifest.json" />' public/index.html
sed -i '/<\/head>/i\    <meta name="theme-color" content="#000000" />' public/index.html

# Create a service worker registration file
cat << EOF > src/serviceWorkerRegistration.js
import { Workbox } from 'workbox-window';

export function register() {
  if ('serviceWorker' in navigator) {
    const wb = new Workbox('/service-worker.js');

    wb.addEventListener('installed', event => {
      if (event.isUpdate) {
        if (confirm('New content is available! Click OK to refresh.')) {
          window.location.reload();
        }
      }
    });

    wb.register();
  }
}
EOF

# Update index.js to include service worker registration
cat << EOF >> src/index.js

import { register } from './serviceWorkerRegistration';

register();
EOF

log "PWA setup completed for $client_dir directory."

```

### setup-rbac.sh

```sh
#!/bin/bash
# setup-rbac.sh

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

server_dir="$project_dir/server"
src_dir="$server_dir/src"

mkdir -p "$src_dir/middlewares" "$src_dir/models" "$src_dir/routes"

log "Setting up RBAC for $project_dir"

# Install required packages
cd "$server_dir"
npm install bcryptjs jsonwebtoken
cd -

# Create RBAC middleware
cat << EOF > "$src_dir/middlewares/rbacMiddleware.js"
// src/middlewares/rbacMiddleware.js
const rbacMiddleware = (requiredRole) => {
  return (req, res, next) => {
    if (!req.user || !req.user.role) {
      return res.status(403).json({ message: 'Access denied' });
    }

    if (req.user.role !== requiredRole) {
      return res.status(403).json({ message: 'Insufficient permissions' });
    }

    next();
  };
};

module.exports = rbacMiddleware;
EOF

# Create User model with role
cat << EOF > "$src_dir/models/User.js"
const { Pool } = require('pg');
const bcrypt = require('bcryptjs');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

class UserService {
  async createUser(userData) {
    const hashedPassword = await bcrypt.hash(userData.password, 12);
    const query = 'INSERT INTO users (username, email, password, role) VALUES(\$1, \$2, \$3, \$4) RETURNING *';
    const values = [userData.username, userData.email, hashedPassword, userData.role];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async findUserByEmail(email) {
    const query = 'SELECT * FROM users WHERE email = \$1';
    const result = await pool.query(query, [email]);
    return result.rows[0];
  }

  async comparePassword(candidatePassword, storedPassword) {
    return bcrypt.compare(candidatePassword, storedPassword);
  }
}

module.exports = new UserService();
EOF

# Update auth routes to include role
cat << EOF > "$src_dir/routes/authRoutes.js"
// src/routes/authRoutes.js
const express = require('express');
const jwt = require('jsonwebtoken');
const UserService = require('../models/User');
const rbacMiddleware = require('../middlewares/rbacMiddleware');

const router = express.Router();

router.post('/register', async (req, res) => {
  try {
    const { username, email, password, role } = req.body;
    const user = await UserService.createUser({ username, email, password, role });
    res.status(201).json({ message: 'User registered successfully', user });
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

router.post('/login', async (req, res) => {
  try {
    const { email, password } = req.body;
    const user = await UserService.findUserByEmail(email);
    if (!user || !(await UserService.comparePassword(password, user.password))) {
      return res.status(401).json({ message: 'Invalid credentials' });
    }
    const token = jwt.sign({ userId: user.id, role: user.role }, process.env.JWT_SECRET, { expiresIn: '1d' });
    res.json({ token });
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

// Example of a protected route using RBAC
router.get('/admin-only', rbacMiddleware('admin'), (req, res) => {
  res.json({ message: 'Welcome, admin!' });
});

module.exports = router;
EOF

log "RBAC setup completed for $project_dir"

```

### setup-redux-actions.sh

```sh
#!/bin/bash
# setup-redux.sh

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
  echo "Usage: $0 <project-dir>"
  exit 1
fi

if ! command -v npm &> /dev/null; then
  error_exit "npm could not be found, please install Node.js and npm first."
fi

client_dir="$project_dir/client"
src_dir="$client_dir/src"

cd "$client_dir"

log "Installing Redux and related packages..."
npm install redux react-redux @reduxjs/toolkit

log "Creating Redux directory structure..."
mkdir -p "$src_dir/redux/slices"

log "Creating store.js..."
cat << EOF > "$src_dir/redux/store.js"
import { configureStore } from '@reduxjs/toolkit';
import rootReducer from './slices';

const store = configureStore({
  reducer: rootReducer,
  devTools: process.env.NODE_ENV !== 'production',
});

export default store;
EOF

log "Creating root reducer (index.js in slices directory)..."
cat << EOF > "$src_dir/redux/slices/index.js"
import { combineReducers } from 'redux';
import exampleSlice from './exampleSlice';

const rootReducer = combineReducers({
  example: exampleSlice,
});

export default rootReducer;
EOF

log "Creating an example slice..."
cat << EOF > "$src_dir/redux/slices/exampleSlice.js"
import { createSlice } from '@reduxjs/toolkit';

const initialState = {
  value: 0,
};

const exampleSlice = createSlice({
  name: 'example',
  initialState,
  reducers: {
    increment: (state) => {
      state.value += 1;
    },
    decrement: (state) => {
      state.value -= 1;
    },
  },
});

export const { increment, decrement } = exampleSlice.actions;
export default exampleSlice.reducer;
EOF

log "Updating index.js to use Redux..."
sed -i "1i import { Provider } from 'react-redux';" "$src_dir/index.js"
sed -i "2i import store from './redux/store';" "$src_dir/index.js"
sed -i "s/<React.StrictMode>/<Provider store={store}><React.StrictMode>/" "$src_dir/index.js"
sed -i "s/<\/React.StrictMode>/<\/React.StrictMode><\/Provider>/" "$src_dir/index.js"

log "Updating App.js to remove redundant Redux provider..."
cat << EOF > "$src_dir/App.js"
import React from 'react';

const App = () => {
  return (
    <div>
      {/* Your app content here */}
    </div>
  );
};

export default App;
EOF

log "Updating index.js to use Redux..."
index_file="$src_dir/index.js"
temp_file=$(mktemp)

cat << EOF > "$temp_file"
import React from 'react';
import ReactDOM from 'react-dom/client';
import { Provider } from 'react-redux';
import store from './redux/store';
import App from './App';
import './index.css';

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <React.StrictMode>
    <Provider store={store}>
      <App />
    </Provider>
  </React.StrictMode>
);
EOF

mv "$temp_file" "$index_file"

log "Redux setup completed for $client_dir directory."

```

### setup-redux.sh

```sh
#!/bin/bash
# setup-redux.sh

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
  echo "Usage: $0 <project-dir>"
  exit 1
fi

if ! command -v npm &> /dev/null; then
  error_exit "npm could not be found, please install Node.js and npm first."
fi

client_dir="$project_dir/client"
src_dir="$client_dir/src"

cd "$client_dir"

log "Installing Redux and related packages..."
npm install redux react-redux @reduxjs/toolkit

log "Creating Redux directory structure..."
mkdir -p "$src_dir/redux/slices"

log "Creating store.js..."
cat << EOF > "$src_dir/redux/store.js"
import { configureStore } from '@reduxjs/toolkit';
import rootReducer from './slices';

const store = configureStore({
  reducer: rootReducer,
  devTools: process.env.NODE_ENV !== 'production',
});

export default store;
EOF

log "Creating root reducer (index.js in slices directory)..."
cat << EOF > "$src_dir/redux/slices/index.js"
import { combineReducers } from 'redux';
import exampleSlice from './exampleSlice';

const rootReducer = combineReducers({
  example: exampleSlice,
});

export default rootReducer;
EOF

log "Creating an example slice..."
cat << EOF > "$src_dir/redux/slices/exampleSlice.js"
import { createSlice } from '@reduxjs/toolkit';

const initialState = {
  value: 0,
};

const exampleSlice = createSlice({
  name: 'example',
  initialState,
  reducers: {
    increment: (state) => {
      state.value += 1;
    },
    decrement: (state) => {
      state.value -= 1;
    },
  },
});

export const { increment, decrement } = exampleSlice.actions;
export default exampleSlice.reducer;
EOF

log "Updating index.js to use Redux..."
sed -i "1i import { Provider } from 'react-redux';" "$src_dir/index.js"
sed -i "2i import store from './redux/store';" "$src_dir/index.js"
sed -i "s/<React.StrictMode>/<Provider store={store}><React.StrictMode>/" "$src_dir/index.js"
sed -i "s/<\/React.StrictMode>/<\/React.StrictMode><\/Provider>/" "$src_dir/index.js"

log "Updating App.js to use Redux..."
cat << EOF > "$src_dir/App.js"
import React from 'react';

const App = () => {
  return (
    <div>
      {/* Your app content here */}
    </div>
  );
};

export default App;
EOF

log "Updating index.js to use Redux..."
index_file="$src_dir/index.js"
temp_file=$(mktemp)

cat << EOF > "$temp_file"
import React from 'react';
import ReactDOM from 'react-dom/client';
import { Provider } from 'react-redux';
import store from './redux/store';
import App from './App';
import './index.css';

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <React.StrictMode>
    <Provider store={store}>
      <App />
    </Provider>
  </React.StrictMode>
);
EOF

mv "$temp_file" "$index_file"

log "Redux setup completed for $client_dir directory."

```

### setup-responsive-design.sh

```sh
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

```

### setup-sass.sh

```sh
#!/bin/bash
# setup-sass.sh

project_dir="$1"

if [ -z "$project_dir" ]; then
  echo "Usage: $0 <project-dir>"
  exit 1
fi

client_dir="$project_dir/client"
cd "$client_dir"

# Install SASS
npm install sass

# Create SASS directory structure
mkdir -p src/styles/abstracts src/styles/base src/styles/components src/styles/layout src/styles/pages

# Create main SASS file
cat << EOF > src/styles/main.scss
@import 'abstracts/variables';
@import 'abstracts/mixins';

@import 'base/reset';
@import 'base/typography';

@import 'components/buttons';
@import 'components/forms';

@import 'layout/header';
@import 'layout/footer';

@import 'pages/home';
EOF

# Create example files
cat << EOF > src/styles/abstracts/_variables.scss
\$primary-color: #0070f3;
\$secondary-color: #0070f3;
\$font-stack: Arial, sans-serif;
EOF

cat << EOF > src/styles/abstracts/_mixins.scss
@mixin flexCenter {
  display: flex;
  justify-content: center;
  align-items: center;
}
EOF

cat << EOF > src/styles/base/_reset.scss
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}
EOF

# Update package.json scripts
npm pkg set scripts.sass="sass src/styles/main.scss src/styles/main.css"
npm pkg set scripts.sass:watch="sass src/styles/main.scss src/styles/main.css --watch"

echo "SASS setup completed for $client_dir directory."

```

### setup-seo.sh

```sh
#!/bin/bash
# setup-seo.sh

set -euo pipefail

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

project_dir="$1"
client_dir="$project_dir/client"

if [ -z "$project_dir" ]; then
  error_exit "Usage: $0 <project-dir>"
fi

cd "$client_dir" || error_exit "Failed to change to client directory"

log "Setting up SEO for $client_dir"

# Install react-helmet for managing document head
npm install react-helmet-async

# Create SEO component
cat << EOF > src/components/SEO.js
import React from 'react';
import { Helmet } from 'react-helmet-async';

const SEO = ({ title, description, keywords, image, url }) => (
  <Helmet>
    <title>{title}</title>
    <meta name="description" content={description} />
    <meta name="keywords" content={keywords} />
    <meta property="og:title" content={title} />
    <meta property="og:description" content={description} />
    <meta property="og:image" content={image} />
    <meta property="og:url" content={url} />
    <meta property="og:type" content="website" />
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:title" content={title} />
    <meta name="twitter:description" content={description} />
    <meta name="twitter:image" content={image} />
    <link rel="canonical" href={url} />
  </Helmet>
);

export default SEO;
EOF

mkdir -p "$client_dir/scripts"
cd "$client_dir"

# Create the sitemap generator JavaScript file
cat << 'EOF' > "$client_dir/scripts/generate-sitemap.js"
const fs = require('fs');
const path = require('path');
require('dotenv').config({ path: path.join(__dirname, '../../.env') });

const baseUrl = process.env.BASE_URL || `http://localhost:${process.env.PORT || 3000}`;
const publicDir = path.join(__dirname, '../public');

const getPages = () => {
  // This is a simplified example. In reality, you'd want to
  // generate this list based on your actual routes.
  return ['', 'register'];
};

const generateSitemap = () => {
  const pages = getPages();
  const sitemap = `<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
  ${pages.map(page => `
  <url>
    <loc>${baseUrl}/${page}</loc>
    <lastmod>${new Date().toISOString().split('T')[0]}</lastmod>
    <changefreq>weekly</changefreq>
    <priority>0.8</priority>
  </url>
  `).join('')}
</urlset>`;

  fs.writeFileSync(path.join(publicDir, 'sitemap.xml'), sitemap);
  console.log('Sitemap generated successfully');

  // Generate robots.txt
  const robotsTxt = `User-agent: *
Allow: /

Sitemap: ${baseUrl}/sitemap.xml
`;
  fs.writeFileSync(path.join(publicDir, 'robots.txt'), robotsTxt);
  console.log('robots.txt generated successfully');
};

generateSitemap();
EOF

# Run the sitemap generator
node "$client_dir/scripts/generate-sitemap.js"

# Add sitemap generation script to package.json
npm pkg set scripts.generate-sitemap="node scripts/generate-sitemap.js"

log "SEO setup completed for $project_dir"

```

### setup-state-management.sh

```sh
#!/bin/bash
# setup-state-management.sh

set -euo pipefail

project_dir="$1"
state_management="${2:-redux}"

if [ -z "$project_dir" ]; then
  echo "Usage: $0 <project-dir> [state-management]"
  echo "State management options: redux (default), mobx"
  exit 1
fi

client_dir="$project_dir/client"
cd "$client_dir" || exit 1

echo "Setting up $state_management for $client_dir"

case "$state_management" in
  redux)
    # Redux setup (as before)
    ;;
  mobx)
    # MobX setup (as before)
    ;;
  *)
    echo "Invalid state management type. Choose 'redux' or 'mobx'."
    exit 1
    ;;
esac

echo "$state_management setup completed for $client_dir"

```

### setup-styled-components.sh

```sh
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

```

### setup-workflows.sh

```sh
#!/bin/bash
# setup-workflows.sh

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

mkdir -p "$project_dir/server/src/services" "$project_dir/server/src/models" "$project_dir/server/src/routes"

log "Setting up workflows for $project_dir"

# Create Workflow service
cat << EOF > "$project_dir/server/src/services/workflowService.js"
// src/services/workflowService.js
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});
const axios = require('axios');

class WorkflowService {
  async executeWorkflow(workflowDefinition, triggerData) {
    let currentData = triggerData;

    for (const step of workflowDefinition.steps) {
      currentData = await this.executeStep(step, currentData);
    }

    return currentData;
  }

  async executeStep(step, data) {
    switch (step.type) {
      case 'transform':
        return this.transformData(step.transformation, data);
      case 'apiCall':
        return this.makeAPICall(step.apiDetails, data);
      case 'condition':
        return this.evaluateCondition(step.condition, data) ? data : null;
      default:
        throw new Error(\`Unknown step type: \${step.type}\`);
    }
  }

  transformData(transformation, data) {
    const result = {};
    for (const [key, value] of Object.entries(transformation)) {
      result[key] = value.split('.').reduce((o, i) => o[i], data);
    }
    return result;
  }

  async makeAPICall(apiDetails, data) {
    const { url, method, body } = apiDetails;
    const response = await axios({ method, url, data: body });
    return response.data;
  }

  evaluateCondition(condition, data) {
    const { left, operator, right } = condition;
    const leftValue = left.split('.').reduce((o, i) => o[i], data);
    switch (operator) {
      case '==':
        return leftValue == right;
      case '!=':
        return leftValue != right;
      case '>':
        return leftValue > right;
      case '<':
        return leftValue < right;
      default:
        throw new Error(\`Unknown operator: \${operator}\`);
    }
  }
}

module.exports = new WorkflowService();
EOF

# Create Workflow model
cat << EOF > "$project_dir/server/src/models/Workflow.js"
// src/models/Workflow.js
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

class WorkflowModel {
  async createWorkflow(workflowData) {
    const query = 'INSERT INTO workflows(name, description, trigger, steps) VALUES(\$1, \$2, \$3, \$4) RETURNING *';
    const values = [workflowData.name, workflowData.description, workflowData.trigger, JSON.stringify(workflowData.steps)];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getWorkflows() {
    const result = await pool.query('SELECT * FROM workflows');
    return result.rows;
  }

  async getWorkflowById(id) {
    const result = await pool.query('SELECT * FROM workflows WHERE id = \$1', [id]);
    return result.rows[0];
  }
}

module.exports = new WorkflowModel();
EOF

# Create workflow routes
cat << EOF > "$project_dir/server/src/routes/workflowRoutes.js"
// src/routes/workflowRoutes.js
const express = require('express');
const WorkflowModel = require('../models/Workflow');
const WorkflowService = require('../services/workflowService');

const router = express.Router();

router.post('/', async (req, res) => {
  try {
    const workflow = await WorkflowModel.createWorkflow(req.body);
    res.status(201).json(workflow);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

router.get('/', async (req, res) => {
  try {
    const workflows = await WorkflowModel.getWorkflows();
    res.json(workflows);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

router.post('/:id/execute', async (req, res) => {
  try {
    const workflow = await WorkflowModel.getWorkflowById(req.params.id);
    if (!workflow) {
      return res.status(404).json({ message: 'Workflow not found' });
    }
    const result = await WorkflowService.executeWorkflow(workflow, req.body);
    res.json(result);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

module.exports = router;
EOF

log "Workflows setup completed for $project_dir"

```


```

## shared-utils

### generate-ai-tools.js

```js
// generate-ai-tools.js
const generateAITools = () => {
    const aiTools = [
      {
        name: 'SmartContractGenerator',
        description: 'AI-powered contract generation based on project details'
      },
      {
        name: 'AutomaticTimeTracker',
        description: 'AI-driven time tracking using computer vision and activity monitoring'
      },
      {
        name: 'IntelligentInvoicing',
        description: 'Automated invoice creation with smart line item suggestions'
      },
      {
        name: 'PredictiveAnalytics',
        description: 'AI-powered forecasting for project timelines and budgets'
      },
      {
        name: 'ClientInsightEngine',
        description: 'AI analysis of client interactions for relationship management'
      },
      {
        name: 'NLPFormProcessor',
        description: 'Natural Language Processing for form creation and analysis'
      },
      {
        name: 'AutomatedBookkeeper',
        description: 'AI-driven categorization and reconciliation of financial transactions'
      },
      {
        name: 'TaskPrioritizer',
        description: 'AI-powered task prioritization and scheduling optimization'
      },
      {
        name: 'ProjectOptimizer',
        description: 'Machine learning-based project timeline and resource allocation'
      },
      {
        name: 'SentimentAnalyzer',
        description: 'AI-driven analysis of client communication for sentiment insights'
      }
    ];

    aiTools.forEach(tool => {
      generateAIToolFile(tool.name, tool.description);
    });
  };

  const generateAIToolFile = (name, description) => {
    // Generate AI tool integration file
    // Include necessary API calls and data processing logic
    // Save to appropriate directory
  };

  generateAITools();

```

### generate-charts.js

```js
// generate-charts.js
const generateCharts = () => {
    const charts = [
      {
        name: 'RevenueOverTime',
        type: 'LineChart',
        data: 'invoices'
      },
      {
        name: 'ProjectStatus',
        type: 'PieChart',
        data: 'projects'
      },
      {
        name: 'TimeAllocation',
        type: 'BarChart',
        data: 'timeEntries'
      },
      {
        name: 'ExpenseCategories',
        type: 'DoughnutChart',
        data: 'expenses'
      },
      {
        name: 'ClientAcquisition',
        type: 'FunnelChart',
        data: 'clients'
      },
      {
        name: 'TaskCompletion',
        type: 'GanttChart',
        data: 'tasks'
      }
    ];

    charts.forEach(chart => {
      generateChartComponent(chart.name, chart.type, chart.data);
    });
  };

  const generateChartComponent = (name, type, data) => {
    // Generate React component for the chart
    // Include data fetching and processing logic
    // Integrate with a charting library (e.g., Chart.js, D3.js)
    // Save to appropriate directory
  };

  generateCharts();

```

### generate-components.js

```js
// generate-components.js
const generateComponents = () => {
    const components = [
      'Dashboard',
      'ProjectList',
      'ProjectDetails',
      'TaskBoard',
      'TimeTracker',
      'InvoiceGenerator',
      'ProposalBuilder',
      'ContractEditor',
      'ClientPortal',
      'FormBuilder',
      'ExpenseTracker',
      'ReportingDashboard',
      'AIInsights'
    ];

    components.forEach(component => {
      generateComponentFile(component);
    });
  };

  const generateComponentFile = (name) => {
    // Generate React component with basic structure
    // Include AI integration where applicable
    // Save to appropriate directory
  };

  generateComponents();

```

### generate-forms-templates.js

```js
// generate-forms-templates.js
const generateFormsAndTemplates = () => {
    const items = [
      {
        type: 'form',
        name: 'ClientOnboarding'
      },
      {
        type: 'form',
        name: 'ProjectFeedback'
      },
      {
        type: 'template',
        name: 'InvoiceTemplate'
      },
      {
        type: 'template',
        name: 'ProposalTemplate'
      },
      {
        type: 'template',
        name: 'ContractTemplate'
      },
      {
        type: 'template',
        name: 'ProjectBrief'
      }
    ];

    items.forEach(item => {
      if (item.type === 'form') {
        generateFormBuilder(item.name);
      } else {
        generateTemplateBuilder(item.name);
      }
    });
  };

  const generateFormBuilder = (name) => {
    // Generate dynamic form builder component
    // Include drag-and-drop functionality
    // Save to appropriate directory
  };

  const generateTemplateBuilder = (name) => {
    // Generate template builder with customizable sections
    // Include placeholder system for dynamic content
    // Save to appropriate directory
  };

  generateFormsAndTemplates();

```

### generate-mock-data.js

```js
// generate-mock-data.js
const fs = require('fs');
const path = require('path');

function generateMockData(projectName, dataType, count) {
  const projectDir = path.join('/d/Node/projects', projectName, 'server/src/mockData');

  if (!fs.existsSync(projectDir)) {
    fs.mkdirSync(projectDir, { recursive: true });
  }

  let data;

  switch (dataType) {
    case 'users':
      data = generateUsers(count);
      break;
    case 'products':
      data = generateProducts(count);
      break;
    case 'orders':
      data = generateOrders(count);
      break;
    default:
      console.error('Invalid data type');
      return;
  }

  fs.writeFileSync(path.join(projectDir, `${dataType}.json`), JSON.stringify(data, null, 2));
  console.log(`Mock ${dataType} data generated successfully.`);
}

function generateUsers(count) {
  return Array.from({ length: count }, (_, i) => ({
    id: i + 1,
    name: `User ${i + 1}`,
    email: `user${i + 1}@example.com`,
    age: Math.floor(Math.random() * 50) + 18
  }));
}

function generateProducts(count) {
  return Array.from({ length: count }, (_, i) => ({
    id: i + 1,
    name: `Product ${i + 1}`,
    price: parseFloat((Math.random() * 100).toFixed(2)),
    category: ['Electronics', 'Clothing', 'Books', 'Food'][Math.floor(Math.random() * 4)]
  }));
}

function generateOrders(count) {
  return Array.from({ length: count }, (_, i) => ({
    id: i + 1,
    userId: Math.floor(Math.random() * 100) + 1,
    products: Array.from({ length: Math.floor(Math.random() * 5) + 1 }, () => ({
      productId: Math.floor(Math.random() * 100) + 1,
      quantity: Math.floor(Math.random() * 5) + 1
    })),
    totalAmount: parseFloat((Math.random() * 500).toFixed(2)),
    date: new Date(Date.now() - Math.floor(Math.random() * 10000000000)).toISOString()
  }));
}

// Usage
const [,, projectName, dataType, count] = process.argv;
generateMockData(projectName, dataType, parseInt(count) || 10);

```

### generate-models.js

```js
// generate-models.js
const generateModels = () => {
    const models = [
      {
        name: 'User',
        fields: ['name', 'email', 'password', 'role']
      },
      {
        name: 'Client',
        fields: ['name', 'email', 'company', 'projects']
      },
      {
        name: 'Project',
        fields: ['name', 'description', 'client', 'tasks', 'timeline', 'budget']
      },
      {
        name: 'Task',
        fields: ['name', 'description', 'project', 'assignee', 'status', 'dueDate']
      },
      {
        name: 'TimeEntry',
        fields: ['user', 'project', 'task', 'duration', 'date']
      },
      {
        name: 'Invoice',
        fields: ['client', 'project', 'items', 'total', 'status', 'dueDate']
      },
      {
        name: 'Proposal',
        fields: ['client', 'project', 'content', 'status', 'expiryDate']
      },
      {
        name: 'Contract',
        fields: ['client', 'project', 'content', 'status', 'signatureDate']
      },
      {
        name: 'Form',
        fields: ['name', 'fields', 'responses']
      },
      {
        name: 'Expense',
        fields: ['user', 'project', 'amount', 'category', 'date']
      }
    ];

    models.forEach(model => {
      generateModelFile(model.name, model.fields);
    });
  };

  const generateModelFile = (name, fields) => {
    // Generate Mongoose schema and model
    // Save to appropriate directory
  };

  generateModels();

```

### generate-project-readme.js

```js
// utils/generate-project-readme.js
const fs = require('fs');
const path = require('path');

const excludeExtensions = ['.pkl', '.png', '.jpg', '.jpeg', '.svg', '.ico', '.txt'];
const excludeDirectories = ['node_modules', '.git', '.vscode', 'venv', '.bak'];
const excludeFiles = ['package-lock.json'];

function log(message) {
    console.log(`[DEBUG]: ${message}`);
}

function generateReadmeForDirectory(directoryPath, directoryName, depth = 0) {
    let readmeContent = `${'#'.repeat(depth + 1)} ${directoryName}\n\n`;

    const files = fs.readdirSync(directoryPath);
    files.forEach(file => {
        const filePath = path.join(directoryPath, file);
        const stat = fs.statSync(filePath);

        if (stat.isDirectory()) {
            if (!excludeDirectories.includes(file)) {
                log(`Including directory: ${file}`);
                readmeContent += generateReadmeForDirectory(filePath, file, depth + 1);
            } else {
                log(`Excluding directory: ${file}`);
            }
        } else if (stat.isFile()) {
            if (file === 'package.json' || (!excludeFiles.includes(file) && !excludeExtensions.includes(path.extname(file)))) {
                log(`Including file: ${file}`);
                readmeContent += `### ${file}\n\n`;
                readmeContent += '```' + path.extname(file).slice(1) + '\n';
                readmeContent += fs.readFileSync(filePath, 'utf-8') + '\n';
                readmeContent += '```\n\n';
            } else {
                log(`Excluding file: ${file}`);
            }
        }
    });

    return readmeContent;
}

const rootDirs = ['/Node'];
let fullReadmeContent = '# Project Documentation\n\n';

rootDirs.forEach(dir => {
    fullReadmeContent += generateReadmeForDirectory(dir, path.basename(dir));
});

fs.writeFileSync(path.join('/Node', 'README.md'), fullReadmeContent);
console.log('/Node/README.md generated successfully.');

```

### generate-routes.js

```js
// generate-routes.js
const generateRoutes = () => {
    const routes = [
      { path: '/api/users', methods: ['GET', 'POST', 'PUT', 'DELETE'] },
      { path: '/api/clients', methods: ['GET', 'POST', 'PUT', 'DELETE'] },
      { path: '/api/projects', methods: ['GET', 'POST', 'PUT', 'DELETE'] },
      { path: '/api/tasks', methods: ['GET', 'POST', 'PUT', 'DELETE'] },
      { path: '/api/time-entries', methods: ['GET', 'POST', 'PUT', 'DELETE'] },
      { path: '/api/invoices', methods: ['GET', 'POST', 'PUT', 'DELETE'] },
      { path: '/api/proposals', methods: ['GET', 'POST', 'PUT', 'DELETE'] },
      { path: '/api/contracts', methods: ['GET', 'POST', 'PUT', 'DELETE'] },
      { path: '/api/forms', methods: ['GET', 'POST', 'PUT', 'DELETE'] },
      { path: '/api/expenses', methods: ['GET', 'POST', 'PUT', 'DELETE'] },
      { path: '/api/reports', methods: ['GET'] },
      { path: '/api/ai-insights', methods: ['GET'] }
    ];

    routes.forEach(route => {
      generateRouteFile(route.path, route.methods);
    });
  };

  const generateRouteFile = (path, methods) => {
    // Generate Express.js route file with CRUD operations
    // Include input validation and error handling
    // Save to appropriate directory
  };

  generateRoutes();

```

### generate-structure.js

```js
// generate-structure.js
const fs = require('fs');
const path = require('path');

const outputFile = '/Node/PROJECT_STRUCTURE.txt';
const excludeDirs = ['node_modules', '.git', '.vscode', 'venv', '.github', '.bak'];
const rootDirs = ['/Node'];

function generateStructure(dirPath, prefix = '') {
    const files = fs.readdirSync(dirPath);
    let treeContent = '';
    files.forEach((file, index) => {
        const filePath = path.join(dirPath, file);
        const stats = fs.statSync(filePath);
        const isLast = index === files.length - 1;
        const newPrefix = prefix + (isLast ? '└── ' : '├── ');

        if (!excludeDirs.includes(file)) {
            treeContent += `${prefix}${newPrefix}${file}\n`;
            if (stats.isDirectory()) {
                treeContent += generateStructure(filePath, prefix + (isLast ? '    ' : '│   '));
            }
        }
    });
    return treeContent;
}

let fullTreeContent = 'Project Structure:\n';

rootDirs.forEach(dir => {
    fullTreeContent += `\n${path.basename(dir)}/\n`;
    fullTreeContent += generateStructure(dir);
});

fs.writeFileSync(outputFile, fullTreeContent);
console.log(`${outputFile} generated successfully.`);

```

### package.json

```json
{
  "name": "shared-utils",
  "version": "1.0.0",
  "main": "generate-project-readme.js",
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "keywords": [],
  "author": "",
  "license": "ISC",
  "description": ""
}

```

## utils

### continue-master-setup.sh

```sh
#!/bin/bash
# continue-master-setup.sh

set -euo pipefail

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

project_name=$1
log "$project_name"

# Parse command line options
verbose=false
while getopts "v" opt; do
  case $opt in
    v) verbose=true ;;
    *) echo "Usage: $0 [-v] <project-name>"; exit 1 ;;
  esac
done
shift $((OPTIND-1))

if $verbose; then
  set -x
fi

if [ -z "$project_name" ]; then
  echo "Usage: $0 [-v] <project-name>"
  exit 1
fi

project_dir="/d/Node/projects/$project_name"
utils_dir="/d/Node/utils"

run_script() {
  local script=$1
  shift
  log "Running $script..."
  if [ -f "$utils_dir/$script" ]; then
    if ! "$utils_dir/$script" "$@"; then
      error_exit "Script $script failed. Stopping setup."
    fi
  else
    log "Warning: $script not found. Skipping..."
  fi
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

cleanup() {
  log "Setup interrupted. Cleaning up..."
  # Add cleanup actions here
  # For example, you might want to remove partially created directories
  # rm -rf "$project_dir"
}

trap cleanup EXIT

# Server setup
read -s -p "Enter PostgreSQL password for ${project_name}_user: " db_password
echo
run_script setup-postgresql.sh "$project_name" "${project_name}_user" "$db_password"
run_script setup-auth.sh "$project_name"
run_script run-migrations.sh "$project_name" "${project_name}_user" "$db_password"
run_script enhance-error-handling.sh "$project_name"

# API Route setup
read -p "Do you want to create an API route? (y/n) " create_route
if [[ $create_route =~ ^[Yy]$ ]]; then
  read -p "Enter the route name: " route_name
  run_script create-api-route.sh "$project_name" "$route_name"
fi

# Noloco-like functionality setup
read -p "Do you want to set up Noloco-like functionalities? (y/n) " setup_noloco
if [[ $setup_noloco =~ ^[Yy]$ ]]; then
  run_script setup-data-modeling.sh "$project_dir"
  run_script setup-api-generation.sh "$project_dir"
  run_script setup-rbac.sh "$project_dir"
  run_script setup-workflows.sh "$project_dir"
  run_script setup-dynamic-ui.sh "$project_dir"
  run_script setup-file-management.sh "$project_dir"
  run_script setup-email-templates.sh "$project_dir"
  run_script setup-dashboard.sh "$project_dir"
  run_script setup-noloco-theme.sh "$project_dir" "both"
fi

log "Project setup complete."
echo "Project $project_name has been set up successfully!"

# Remove the trap before exiting normally
trap - EXIT

```

### create-api-route.sh

```sh
#!/bin/bash

# create-api-route.sh
# Usage: create-api-route.sh <project-name> <route-name>
# Description: Creates a new API route with controller and model for PostgreSQL

set -euo pipefail

if [ $# -ne 2 ]; then
    echo "Usage: $0 <project-name> <route-name>"
    exit 1
fi

project_name=$1
route_name=$2

project_dir="/d/Node/projects/$project_name"
src_dir="$project_dir/server/src"
routes_dir="$src_dir/routes"
controllers_dir="$src_dir/controllers"
models_dir="$src_dir/models"

# Ensure directories exist
mkdir -p "$routes_dir" "$controllers_dir" "$models_dir"

# Create route file
cat << EOF > "$routes_dir/${route_name}.js"
const express = require('express');
const router = express.Router();
const ${route_name}Controller = require('../controllers/${route_name}');

router.get('/', ${route_name}Controller.getAll);
router.post('/', ${route_name}Controller.create);
router.get('/:id', ${route_name}Controller.getById);
router.put('/:id', ${route_name}Controller.update);
router.delete('/:id', ${route_name}Controller.delete);

module.exports = router;
EOF

# Create controller file
cat << EOF > "$controllers_dir/${route_name}.js"
const ${route_name}Model = require('../models/${route_name}');

exports.getAll = async (req, res) => {
  try {
    const items = await ${route_name}Model.findAll();
    res.json(items);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

exports.create = async (req, res) => {
  try {
    const newItem = await ${route_name}Model.create(req.body);
    res.status(201).json(newItem);
  } catch (error) {
    res.status(400).json({ message: error.message });
  }
};

exports.getById = async (req, res) => {
  try {
    const item = await ${route_name}Model.findByPk(req.params.id);
    if (!item) {
      return res.status(404).json({ message: 'Item not found' });
    }
    res.json(item);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

exports.update = async (req, res) => {
  try {
    const [updated] = await ${route_name}Model.update(req.body, {
      where: { id: req.params.id }
    });
    if (updated) {
      const updatedItem = await ${route_name}Model.findByPk(req.params.id);
      res.json(updatedItem);
    } else {
      res.status(404).json({ message: 'Item not found' });
    }
  } catch (error) {
    res.status(400).json({ message: error.message });
  }
};

exports.delete = async (req, res) => {
  try {
    const deleted = await ${route_name}Model.destroy({
      where: { id: req.params.id }
    });
    if (deleted) {
      res.json({ message: 'Item deleted' });
    } else {
      res.status(404).json({ message: 'Item not found' });
    }
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};
EOF

# Create model file
cat << EOF > "$models_dir/${route_name}.js"
const { DataTypes } = require('sequelize');
const sequelize = require('../config/database');

const ${route_name} = sequelize.define('${route_name}', {
  // Define your model fields here
  name: {
    type: DataTypes.STRING,
    allowNull: false
  },
  // Add more fields as needed
});

module.exports = ${route_name};
EOF

echo "API route, controller, and model for $route_name created successfully in $project_name"

```

### FULL_README.md

```md
# Project Documentation

# Node

## git

### Node

### LICENSE

```
MIT License

Copyright (c) 2024 Haris Babic

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

```

## projects

### ultimate

### .env

```

```

### .gitignore

```
node_modules/
.env
*.log
build/

```

#### client

### .babelrc

```
{
  "presets": [
    ["@babel/preset-env", {
      "targets": {
        "browsers": [">0.25%", "not ie 11", "not op_mini all"]
      }
    }],
    "@babel/preset-react"
  ],
  "plugins": [
    "@babel/plugin-proposal-class-properties",
    "@babel/plugin-transform-runtime"
  ]
}

```

### .gitignore

```
# See https://help.github.com/articles/ignoring-files/ for more about ignoring files.

# dependencies
/node_modules
/.pnp
.pnp.js

# testing
/coverage

# production
/build

# misc
.DS_Store
.env.local
.env.development.local
.env.test.local
.env.production.local

npm-debug.log*
yarn-debug.log*
yarn-error.log*

*storybook.log
```

##### .storybook

### main.js

```js
/** @type { import('@storybook/react-webpack5').StorybookConfig } */
const config = {
  stories: ["../src/**/*.mdx", "../src/**/*.stories.@(js|jsx|mjs|ts|tsx)"],
  addons: [
    "@storybook/preset-create-react-app",
    "@storybook/addon-onboarding",
    "@storybook/addon-links",
    "@storybook/addon-essentials",
    "@chromatic-com/storybook",
    "@storybook/addon-interactions",
  ],
  framework: {
    name: "@storybook/react-webpack5",
    options: {},
  },
  staticDirs: ["..\\public"],
};
export default config;

```

### preview.js

```js
/** @type { import('@storybook/react').Preview } */
const preview = {
  parameters: {
    controls: {
      matchers: {
        color: /(background|color)$/i,
        date: /Date$/i,
      },
    },
  },
};

export default preview;

```

### components.json

```json
{
  "style": "new-york",
  "rsc": false,
  "tsx": true,
  "tailwind": {
    "config": "tailwind.config.js",
    "css": "src/index.css",
    "baseColor": "slate",
    "cssVariables": true
  },
  "aliases": {
    "components": "@/components",
    "utils": "@/lib/utils"
  }
}
```

### package.json

```json
{
  "name": "client",
  "version": "0.1.0",
  "private": true,
  "dependencies": {
    "@radix-ui/react-icons": "^1.3.0",
    "@reduxjs/toolkit": "^2.2.7",
    "@testing-library/jest-dom": "^5.17.0",
    "@testing-library/react": "^13.4.0",
    "@testing-library/user-event": "^13.5.0",
    "axios": "^1.7.3",
    "class-variance-authority": "^0.7.0",
    "clsx": "^2.1.1",
    "framer-motion": "^11.3.21",
    "i18next": "^23.12.2",
    "i18next-browser-languagedetector": "^8.0.0",
    "i18next-http-backend": "^2.5.2",
    "react": "^18.3.1",
    "react-dom": "^18.3.1",
    "react-helmet-async": "^2.0.5",
    "react-i18next": "^15.0.0",
    "react-icons": "^4.12.0",
    "react-redux": "^9.1.2",
    "react-router-dom": "^6.26.0",
    "react-scripts": "5.0.1",
    "redux": "^5.0.1",
    "sass": "^1.77.8",
    "styled-components": "^5.3.11",
    "tailwind-merge": "^2.4.0",
    "tailwindcss-animate": "^1.0.7",
    "web-vitals": "^2.1.4",
    "workbox-window": "^7.1.0"
  },
  "scripts": {
    "start": "react-scripts start",
    "build": "react-scripts build",
    "test": "react-scripts test",
    "eject": "react-scripts eject",
    "sass": "sass src/styles/main.scss src/styles/main.css",
    "sass:watch": "sass src/styles/main.scss src/styles/main.css --watch",
    "generate-sitemap": "node scripts/generate-sitemap.js",
    "storybook": "storybook dev -p 6006",
    "build-storybook": "storybook build"
  },
  "eslintConfig": {
    "extends": [
      "react-app",
      "react-app/jest",
      "plugin:storybook/recommended"
    ]
  },
  "browserslist": {
    "production": [
      ">0.2%",
      "not dead",
      "not op_mini all"
    ],
    "development": [
      "last 1 chrome version",
      "last 1 firefox version",
      "last 1 safari version"
    ]
  },
  "devDependencies": {
    "@chromatic-com/storybook": "^1.6.1",
    "@storybook/addon-essentials": "^8.2.7",
    "@storybook/addon-interactions": "^8.2.7",
    "@storybook/addon-links": "^8.2.7",
    "@storybook/addon-onboarding": "^8.2.7",
    "@storybook/blocks": "^8.2.7",
    "@storybook/preset-create-react-app": "^8.2.7",
    "@storybook/react": "^8.2.7",
    "@storybook/react-webpack5": "^8.2.7",
    "@storybook/test": "^8.2.7",
    "autoprefixer": "^10.4.20",
    "eslint-plugin-storybook": "^0.8.0",
    "postcss": "^8.4.41",
    "prop-types": "^15.8.1",
    "storybook": "^8.2.7",
    "tailwindcss": "^3.4.7",
    "webpack": "^5.93.0",
    "workbox-webpack-plugin": "^7.1.0"
  }
}

```

### postcss.config.js

```js
module.exports = {
  plugins: {
    tailwindcss: {},
    autoprefixer: {},
  },
}

```

##### public

### index.html

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <link rel="icon" href="%PUBLIC_URL%/favicon.ico" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="theme-color" content="#000000" />
    <meta
      name="description"
      content="Web site created using create-react-app"
    />
    <link rel="apple-touch-icon" href="%PUBLIC_URL%/logo192.png" />
    <!--
      manifest.json provides metadata used when your web app is installed on a
      user's mobile device or desktop. See https://developers.google.com/web/fundamentals/web-app-manifest/
    -->
    <link rel="manifest" href="%PUBLIC_URL%/manifest.json" />
    <!--
      Notice the use of %PUBLIC_URL% in the tags above.
      It will be replaced with the URL of the `public` folder during the build.
      Only files inside the `public` folder can be referenced from the HTML.

      Unlike "/favicon.ico" or "favicon.ico", "%PUBLIC_URL%/favicon.ico" will
      work correctly both with client-side routing and a non-root public URL.
      Learn how to configure a non-root public URL by running `npm run build`.
    -->
    <title>React App</title>
    <link rel="manifest" href="%PUBLIC_URL%/manifest.json" />
    <meta name="theme-color" content="#000000" />
  </head>
  <body>
    <noscript>You need to enable JavaScript to run this app.</noscript>
    <div id="root"></div>
    <!--
      This HTML file is a template.
      If you open it directly in the browser, you will see an empty page.

      You can add webfonts, meta tags, or analytics to this file.
      The build step will place the bundled scripts into the <body> tag.

      To begin the development, run `npm start` or `yarn start`.
      To create a production bundle, use `npm run build` or `yarn build`.
    -->
  </body>
</html>

```

###### locales

####### en

### translation.json

```json
{"hello": "Hello", "welcome": "Welcome to our app!"}

```

####### es

### translation.json

```json
{"hello": "Hola", "welcome": "¡Bienvenido a nuestra aplicación!"}

```

### manifest.json

```json
{
  "short_name": "Your App",
  "name": "Your Application Name",
  "icons": [
    {
      "src": "favicon.ico",
      "sizes": "64x64 32x32 24x24 16x16",
      "type": "image/x-icon"
    },
    {
      "src": "logo192.png",
      "type": "image/png",
      "sizes": "192x192"
    },
    {
      "src": "logo512.png",
      "type": "image/png",
      "sizes": "512x512"
    }
  ],
  "start_url": ".",
  "display": "standalone",
  "theme_color": "#000000",
  "background_color": "#ffffff"
}

```

### sitemap.xml

```xml
<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
  
  <url>
    <loc>http://localhost:3000/</loc>
    <lastmod>2024-08-07</lastmod>
    <changefreq>weekly</changefreq>
    <priority>0.8</priority>
  </url>
  
  <url>
    <loc>http://localhost:3000/register</loc>
    <lastmod>2024-08-07</lastmod>
    <changefreq>weekly</changefreq>
    <priority>0.8</priority>
  </url>
  
</urlset>
```

### README.md

```md
# Getting Started with Create React App

This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).

## Available Scripts

In the project directory, you can run:

### `npm start`

Runs the app in the development mode.\
Open [http://localhost:3000](http://localhost:3000) to view it in your browser.

The page will reload when you make changes.\
You may also see any lint errors in the console.

### `npm test`

Launches the test runner in the interactive watch mode.\
See the section about [running tests](https://facebook.github.io/create-react-app/docs/running-tests) for more information.

### `npm run build`

Builds the app for production to the `build` folder.\
It correctly bundles React in production mode and optimizes the build for the best performance.

The build is minified and the filenames include the hashes.\
Your app is ready to be deployed!

See the section about [deployment](https://facebook.github.io/create-react-app/docs/deployment) for more information.

### `npm run eject`

**Note: this is a one-way operation. Once you `eject`, you can't go back!**

If you aren't satisfied with the build tool and configuration choices, you can `eject` at any time. This command will remove the single build dependency from your project.

Instead, it will copy all the configuration files and the transitive dependencies (webpack, Babel, ESLint, etc) right into your project so you have full control over them. All of the commands except `eject` will still work, but they will point to the copied scripts so you can tweak them. At this point you're on your own.

You don't have to ever use `eject`. The curated feature set is suitable for small and middle deployments, and you shouldn't feel obligated to use this feature. However we understand that this tool wouldn't be useful if you couldn't customize it when you are ready for it.

## Learn More

You can learn more in the [Create React App documentation](https://facebook.github.io/create-react-app/docs/getting-started).

To learn React, check out the [React documentation](https://reactjs.org/).

### Code Splitting

This section has moved here: [https://facebook.github.io/create-react-app/docs/code-splitting](https://facebook.github.io/create-react-app/docs/code-splitting)

### Analyzing the Bundle Size

This section has moved here: [https://facebook.github.io/create-react-app/docs/analyzing-the-bundle-size](https://facebook.github.io/create-react-app/docs/analyzing-the-bundle-size)

### Making a Progressive Web App

This section has moved here: [https://facebook.github.io/create-react-app/docs/making-a-progressive-web-app](https://facebook.github.io/create-react-app/docs/making-a-progressive-web-app)

### Advanced Configuration

This section has moved here: [https://facebook.github.io/create-react-app/docs/advanced-configuration](https://facebook.github.io/create-react-app/docs/advanced-configuration)

### Deployment

This section has moved here: [https://facebook.github.io/create-react-app/docs/deployment](https://facebook.github.io/create-react-app/docs/deployment)

### `npm run build` fails to minify

This section has moved here: [https://facebook.github.io/create-react-app/docs/troubleshooting#npm-run-build-fails-to-minify](https://facebook.github.io/create-react-app/docs/troubleshooting#npm-run-build-fails-to-minify)

```

##### scripts

### generate-sitemap.js

```js
const fs = require('fs');
const path = require('path');
require('dotenv').config({ path: path.join(__dirname, '../../.env') });

const baseUrl = process.env.BASE_URL || `http://localhost:${process.env.PORT || 3000}`;
const publicDir = path.join(__dirname, '../public');

const getPages = () => {
  // This is a simplified example. In reality, you'd want to
  // generate this list based on your actual routes.
  return ['', 'register'];
};

const generateSitemap = () => {
  const pages = getPages();
  const sitemap = `<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
  ${pages.map(page => `
  <url>
    <loc>${baseUrl}/${page}</loc>
    <lastmod>${new Date().toISOString().split('T')[0]}</lastmod>
    <changefreq>weekly</changefreq>
    <priority>0.8</priority>
  </url>
  `).join('')}
</urlset>`;

  fs.writeFileSync(path.join(publicDir, 'sitemap.xml'), sitemap);
  console.log('Sitemap generated successfully');

  // Generate robots.txt
  const robotsTxt = `User-agent: *
Allow: /

Sitemap: ${baseUrl}/sitemap.xml
`;
  fs.writeFileSync(path.join(publicDir, 'robots.txt'), robotsTxt);
  console.log('robots.txt generated successfully');
};

generateSitemap();

```

##### src

###### @

####### components

######## ui

### alert.tsx

```tsx
import * as React from "react"
import { cva, VariantProps } from "class-variance-authority"
import { cn } from "@/lib/utils"

const alertVariants = cva(
  "relative w-full rounded-lg border p-4 [&>svg~*]:pl-7 [&>svg+div]:translate-y-[-3px] [&>svg]:absolute [&>svg]:left-4 [&>svg]:top-4 [&>svg]:text-foreground",
  {
    variants: {
      variant: {
        default: "bg-background text-foreground",
        destructive:
          "border-destructive/50 text-destructive dark:border-destructive [&>svg]:text-destructive",
      },
    },
    defaultVariants: {
      variant: "default",
    },
  }
)

const Alert = React.forwardRef<
  HTMLDivElement,
  React.HTMLAttributes<HTMLDivElement> & VariantProps<typeof alertVariants>
>(({ className, variant, ...props }, ref) => (
  <div
    ref={ref}
    role="alert"
    className={cn(alertVariants({ variant }), className)}
    {...props}
  />
))
Alert.displayName = "Alert"

const AlertTitle = React.forwardRef<
  HTMLParagraphElement,
  React.HTMLAttributes<HTMLHeadingElement>
>(({ className, ...props }, ref) => (
  <h5
    ref={ref}
    className={cn("mb-1 font-medium leading-none tracking-tight", className)}
    {...props}
  />
))
AlertTitle.displayName = "AlertTitle"

const AlertDescription = React.forwardRef<
  HTMLParagraphElement,
  React.HTMLAttributes<HTMLParagraphElement>
>(({ className, ...props }, ref) => (
  <div
    ref={ref}
    className={cn("text-sm [&_p]:leading-relaxed", className)}
    {...props}
  />
))
AlertDescription.displayName = "AlertDescription"

export { Alert, AlertTitle, AlertDescription }

```

####### lib

### utils.ts

```ts
import { type ClassValue, clsx } from "clsx"
import { twMerge } from "tailwind-merge"

export function cn(...inputs: ClassValue[]) {
  return twMerge(clsx(inputs))
}

```

### App.css

```css
.App {
  text-align: center;
}

.App-logo {
  height: 40vmin;
  pointer-events: none;
}

@media (prefers-reduced-motion: no-preference) {
  .App-logo {
    animation: App-logo-spin infinite 20s linear;
  }
}

.App-header {
  background-color: #282c34;
  min-height: 100vh;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  font-size: calc(10px + 2vmin);
  color: white;
}

.App-link {
  color: #61dafb;
}

@keyframes App-logo-spin {
  from {
    transform: rotate(0deg);
  }
  to {
    transform: rotate(360deg);
  }
}

```

### App.js

```js
import React from 'react';

const App = () => {
  return (
    <div>
      {/* Your app content here */}
    </div>
  );
};

export default App;

```

### App.test.js

```js
import { render, screen } from '@testing-library/react';
import App from './App';

test('renders learn react link', () => {
  render(<App />);
  const linkElement = screen.getByText(/learn react/i);
  expect(linkElement).toBeInTheDocument();
});

```

###### components

### AnimatedBox.js

```js
import React from 'react';
import { motion } from 'framer-motion';

const AnimatedBox = () => (
  <motion.div
    initial={{ opacity: 0, scale: 0.5 }}
    animate={{ opacity: 1, scale: 1 }}
    transition={{ duration: 0.5 }}
    whileHover={{ scale: 1.1 }}
    whileTap={{ scale: 0.9 }}
    style={{
      width: 100,
      height: 100,
      background: 'blue',
      borderRadius: 10,
    }}
  />
);

export default AnimatedBox;

```

####### Dashboard

### Dashboard.js

```js
import React, { useState, useEffect } from 'react';
import DynamicTable from '../DynamicUI/DynamicTable';

const Dashboard = () => {
  const [dashboardData, setDashboardData] = useState({});

  useEffect(() => {
    // Fetch dashboard data from API
    const fetchDashboardData = async () => {
      // Replace with actual API call
      const response = await fetch('/api/dashboard');
      const data = await response.json();
      setDashboardData(data);
    };

    fetchDashboardData();
  }, []);

  return (
    <div>
      <h1>Dashboard</h1>
      {Object.entries(dashboardData).map(([key, value]) => (
        <div key={key}>
          <h2>{key}</h2>
          {Array.isArray(value) ? (
            <DynamicTable
              data={value}
              columns={Object.keys(value[0]).map(col => ({ key: col, label: col }))}
            />
          ) : (
            <p>{value}</p>
          )}
        </div>
      ))}
    </div>
  );
};

export default Dashboard;

```

### DashboardWidget.js

```js
import React from 'react';

const DashboardWidget = ({ title, value, icon }) => {
  return (
    <div className="dashboard-widget">
      <div className="widget-icon">{icon}</div>
      <div className="widget-content">
        <h3>{title}</h3>
        <p>{value}</p>
      </div>
    </div>
  );
};

export default DashboardWidget;

```

####### DynamicUI

### DynamicForm.js

```js
import React from 'react';
import { useForm } from 'react-hook-form';

const DynamicForm = ({ fields, onSubmit }) => {
  const { register, handleSubmit, formState: { errors } } = useForm();

  const renderField = (field) => {
    switch (field.type) {
      case 'text':
      case 'email':
      case 'number':
        return (
          <input
            type={field.type}
            {...register(field.name, field.validation)}
            placeholder={field.placeholder}
          />
        );
      case 'select':
        return (
          <select {...register(field.name, field.validation)}>
            {field.options.map((option, index) => (
              <option key={index} value={option.value}>
                {option.label}
              </option>
            ))}
          </select>
        );
      case 'textarea':
        return (
          <textarea
            {...register(field.name, field.validation)}
            placeholder={field.placeholder}
          />
        );
      default:
        return null;
    }
  };

  return (
    <form onSubmit={handleSubmit(onSubmit)}>
      {fields.map((field, index) => (
        <div key={index}>
          <label>{field.label}</label>
          {renderField(field)}
          {errors[field.name] && <span>{errors[field.name].message}</span>}
        </div>
      ))}
      <button type="submit">Submit</button>
    </form>
  );
};

export default DynamicForm;

```

### DynamicTable.js

```js
import React from 'react';

const DynamicTable = ({ data, columns }) => {
  return (
    <table>
      <thead>
        <tr>
          {columns.map((column, index) => (
            <th key={index}>{column.label}</th>
          ))}
        </tr>
      </thead>
      <tbody>
        {data.map((row, rowIndex) => (
          <tr key={rowIndex}>
            {columns.map((column, columnIndex) => (
              <td key={columnIndex}>{row[column.key]}</td>
            ))}
          </tr>
        ))}
      </tbody>
    </table>
  );
};

export default DynamicTable;

```

### FocusTrap.js

```js
import React, { useRef, useEffect } from 'react';

const FocusTrap = ({ children }) => {
  const trapRef = useRef(null);

  useEffect(() => {
    const trapElement = trapRef.current;
    const focusableElements = trapElement.querySelectorAll(
      'button, [href], input, select, textarea, [tabindex]:not([tabindex="-1"])'
    );
    const firstElement = focusableElements[0];
    const lastElement = focusableElements[focusableElements.length - 1];

    const handleKeyDown = (e) => {
      if (e.key === 'Tab') {
        if (e.shiftKey && document.activeElement === firstElement) {
          e.preventDefault();
          lastElement.focus();
        } else if (!e.shiftKey && document.activeElement === lastElement) {
          e.preventDefault();
          firstElement.focus();
        }
      }
    };

    trapElement.addEventListener('keydown', handleKeyDown);
    return () => trapElement.removeEventListener('keydown', handleKeyDown);
  }, []);

  return <div ref={trapRef}>{children}</div>;
};

export default FocusTrap;

```

### LanguageSwitcher.js

```js
import React from 'react';
import { useTranslation } from 'react-i18next';

const LanguageSwitcher = () => {
  const { i18n } = useTranslation();

  const changeLanguage = (lng) => {
    i18n.changeLanguage(lng);
  };

  return (
    <div>
      <button onClick={() => changeLanguage('en')}>English</button>
      <button onClick={() => changeLanguage('es')}>Español</button>
    </div>
  );
};

export default LanguageSwitcher;

```

####### Noloco

### Button.js

```js
import styled from 'styled-components';

const Button = styled.button`
  background-color: ${props => props.theme.colors.secondary};
  color: white;
  border: none;
  padding: 10px 20px;
  border-radius: 4px;
  font-weight: 600;
  cursor: pointer;
  transition: background-color 0.3s ease;

  &:hover {
    background-color: ${props => props.theme.colors.primary};
  }
`;

export default Button;

```

### Card.js

```js
import styled from 'styled-components';

const Card = styled.div`
  background-color: white;
  border-radius: 8px;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  padding: 20px;
  margin-bottom: 20px;
`;

export default Card;

```

### Container.js

```js
import styled from 'styled-components';

const Container = styled.div`
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 20px;
`;

export default Container;

```

### ResponsiveGrid.js

```js
import styled from 'styled-components';
import { mediaQueries } from '../styles/breakpoints';

const ResponsiveGrid = styled.div`
  display: grid;
  grid-template-columns: 1fr;
  gap: 1rem;

  ${mediaQueries.tablet} {
    grid-template-columns: repeat(2, 1fr);
  }

  ${mediaQueries.desktop} {
    grid-template-columns: repeat(3, 1fr);
  }

  ${mediaQueries.largeDesktop} {
    grid-template-columns: repeat(4, 1fr);
  }
`;

export default ResponsiveGrid;

```

### SEO.js

```js
import React from 'react';
import { Helmet } from 'react-helmet-async';

const SEO = ({ title, description, keywords, image, url }) => (
  <Helmet>
    <title>{title}</title>
    <meta name="description" content={description} />
    <meta name="keywords" content={keywords} />
    <meta property="og:title" content={title} />
    <meta property="og:description" content={description} />
    <meta property="og:image" content={image} />
    <meta property="og:url" content={url} />
    <meta property="og:type" content="website" />
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:title" content={title} />
    <meta name="twitter:description" content={description} />
    <meta name="twitter:image" content={image} />
    <link rel="canonical" href={url} />
  </Helmet>
);

export default SEO;

```

###### i18n

### i18n.js

```js
import i18n from 'i18next';
import { initReactI18next } from 'react-i18next';
import Backend from 'i18next-http-backend';
import LanguageDetector from 'i18next-browser-languagedetector';

i18n
  .use(Backend)
  .use(LanguageDetector)
  .use(initReactI18next)
  .init({
    fallbackLng: 'en',
    debug: process.env.NODE_ENV !== 'production',
    interpolation: {
      escapeValue: false,
    },
    backend: {
      loadPath: '/locales/{{lng}}/{{ns}}.json',
    },
  });

export default i18n;

```

### index.css

```css
@tailwind base;
@tailwind components;
@tailwind utilities;

@layer base {
  :root {
    --background: 0 0% 100%;
    --foreground: 222.2 84% 4.9%;
    --card: 0 0% 100%;
    --card-foreground: 222.2 84% 4.9%;
    --popover: 0 0% 100%;
    --popover-foreground: 222.2 84% 4.9%;
    --primary: 222.2 47.4% 11.2%;
    --primary-foreground: 210 40% 98%;
    --secondary: 210 40% 96.1%;
    --secondary-foreground: 222.2 47.4% 11.2%;
    --muted: 210 40% 96.1%;
    --muted-foreground: 215.4 16.3% 46.9%;
    --accent: 210 40% 96.1%;
    --accent-foreground: 222.2 47.4% 11.2%;
    --destructive: 0 84.2% 60.2%;
    --destructive-foreground: 210 40% 98%;
    --border: 214.3 31.8% 91.4%;
    --input: 214.3 31.8% 91.4%;
    --ring: 222.2 84% 4.9%;
    --radius: 0.5rem;
    --chart-1: 12 76% 61%;
    --chart-2: 173 58% 39%;
    --chart-3: 197 37% 24%;
    --chart-4: 43 74% 66%;
    --chart-5: 27 87% 67%;
  }

  .dark {
    --background: 222.2 84% 4.9%;
    --foreground: 210 40% 98%;
    --card: 222.2 84% 4.9%;
    --card-foreground: 210 40% 98%;
    --popover: 222.2 84% 4.9%;
    --popover-foreground: 210 40% 98%;
    --primary: 210 40% 98%;
    --primary-foreground: 222.2 47.4% 11.2%;
    --secondary: 217.2 32.6% 17.5%;
    --secondary-foreground: 210 40% 98%;
    --muted: 217.2 32.6% 17.5%;
    --muted-foreground: 215 20.2% 65.1%;
    --accent: 217.2 32.6% 17.5%;
    --accent-foreground: 210 40% 98%;
    --destructive: 0 62.8% 30.6%;
    --destructive-foreground: 210 40% 98%;
    --border: 217.2 32.6% 17.5%;
    --input: 217.2 32.6% 17.5%;
    --ring: 212.7 26.8% 83.9%;
    --chart-1: 220 70% 50%;
    --chart-2: 160 60% 45%;
    --chart-3: 30 80% 55%;
    --chart-4: 280 65% 60%;
    --chart-5: 340 75% 55%;
  }
}

@layer base {
  * {
    @apply border-border;
  }
  body {
    @apply bg-background text-foreground;
  }
}
```

### index.js

```js
import React from 'react';
import ReactDOM from 'react-dom/client';
import { Provider } from 'react-redux';
import store from './redux/store';
import App from './App';
import './index.css';

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <React.StrictMode>
    <Provider store={store}>
      <App />
    </Provider>
  </React.StrictMode>
);

```

###### layouts

### DashboardLayout.js

```js
import React from 'react';
import styled from 'styled-components';

const DashboardWrapper = styled.div`
  display: flex;
  flex-direction: column;
  min-height: 100vh;
`;

const Header = styled.header`
  padding: 1rem;
  background-color: ${({ theme }) => theme.colors.background};
`;

const Main = styled.main`
  flex: 1;
  padding: 1rem;
`;

const Footer = styled.footer`
  padding: 1rem;
  background-color: ${({ theme }) => theme.colors.background};
`;

const DashboardLayout = ({ children }) => (
  <DashboardWrapper>
    <Header>Header</Header>
    <Main>{children}</Main>
    <Footer>Footer</Footer>
  </DashboardWrapper>
);

export default DashboardLayout;

```

###### redux

####### slices

### exampleSlice.js

```js
import { createSlice } from '@reduxjs/toolkit';

const initialState = {
  value: 0,
};

const exampleSlice = createSlice({
  name: 'example',
  initialState,
  reducers: {
    increment: (state) => {
      state.value += 1;
    },
    decrement: (state) => {
      state.value -= 1;
    },
  },
});

export const { increment, decrement } = exampleSlice.actions;
export default exampleSlice.reducer;

```

### index.js

```js
import { combineReducers } from 'redux';
import exampleSlice from './exampleSlice';

const rootReducer = combineReducers({
  example: exampleSlice,
});

export default rootReducer;

```

### store.js

```js
import { configureStore } from '@reduxjs/toolkit';
import rootReducer from './slices';

const store = configureStore({
  reducer: rootReducer,
  devTools: process.env.NODE_ENV !== 'production',
});

export default store;

```

### reportWebVitals.js

```js
const reportWebVitals = onPerfEntry => {
  if (onPerfEntry && onPerfEntry instanceof Function) {
    import('web-vitals').then(({ getCLS, getFID, getFCP, getLCP, getTTFB }) => {
      getCLS(onPerfEntry);
      getFID(onPerfEntry);
      getFCP(onPerfEntry);
      getLCP(onPerfEntry);
      getTTFB(onPerfEntry);
    });
  }
};

export default reportWebVitals;

```

###### services

### apiService.js

```js
import axios from 'axios';

const API_BASE_URL = process.env.REACT_APP_API_BASE_URL || 'http://localhost:3000/api';

const apiService = {
  // Previous methods remain the same

  // Add a new method for handling file uploads
  upload: async (endpoint, file, onUploadProgress) => {
    const formData = new FormData();
    formData.append('file', file);

    try {
      const response = await axios.post(`${API_BASE_URL}/${endpoint}`, formData, {
        headers: {
          'Content-Type': 'multipart/form-data'
        },
        onUploadProgress
      });
      return response.data;
    } catch (error) {
      console.error('Error uploading file:', error);
      throw error;
    }
  },

  // Add a method for cancellable requests
  getCancellable: (endpoint) => {
    const source = axios.CancelToken.source();
    const promise = axios.get(`${API_BASE_URL}/${endpoint}`, {
      cancelToken: source.token
    });
    return { promise, cancel: () => source.cancel('Request cancelled') };
  }
};

export default apiService;

```

### serviceWorkerRegistration.js

```js
import { Workbox } from 'workbox-window';

export function register() {
  if ('serviceWorker' in navigator) {
    const wb = new Workbox('/service-worker.js');

    wb.addEventListener('installed', event => {
      if (event.isUpdate) {
        if (confirm('New content is available! Click OK to refresh.')) {
          window.location.reload();
        }
      }
    });

    wb.register();
  }
}

```

### setupTests.js

```js
// jest-dom adds custom jest matchers for asserting on DOM nodes.
// allows you to do things like:
// expect(element).toHaveTextContent(/react/i)
// learn more: https://github.com/testing-library/jest-dom
import '@testing-library/jest-dom';

```

###### stories

####### assets

### avif-test-image.avif

```avif
    ftypavif    avifmif1miafMA1B   �meta       (hdlr        pict            libavif    pitm        iloc    D          #   (iinf        infe      av01Color    jiprp   Kipco   ispe           pixi       av1C�     colrnclx   �   ipma        �  +mdat 

"!��4 2�L��4Cxp� ���(Zyf�M;��ʾ�$��������r�b�F�s�*t�e�>7��혠�ꪙ3so���Z�r���K���O8\���J������(�6�FՖ��o���P�PDf�]�Tڟ���haS8,��_v�E<�{th0&td�3摞X[��_��r��x��V���H-��p������Ua���*.zy���;�<�M�:��	��s!G	-<�4_y?>�
{�0�_�9ϻ��U(m\V��㳱S�B#�}&�J���&5
6���8Ε�ӹ�&c�<Q<ԗ۴����F�O���:��E��p:�36v��b�����^ŉdv���g@����o�L�4X/���d*
r�OuPgƩ7�^@ƣ�ᥳ"Ǥ�=��{��E���U\z��o�cC���(e��|���Qĥ��\8�S��a� �A}�[lI�N�4�����R��.���Ѽ�	˂����􊪠��������cC�6���O��� ��W����9w�nqcIC_y�
```

### button.css

```css
.storybook-button {
  font-family: 'Nunito Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif;
  font-weight: 700;
  border: 0;
  border-radius: 3em;
  cursor: pointer;
  display: inline-block;
  line-height: 1;
}
.storybook-button--primary {
  color: white;
  background-color: #1ea7fd;
}
.storybook-button--secondary {
  color: #333;
  background-color: transparent;
  box-shadow: rgba(0, 0, 0, 0.15) 0px 0px 0px 1px inset;
}
.storybook-button--small {
  font-size: 12px;
  padding: 10px 16px;
}
.storybook-button--medium {
  font-size: 14px;
  padding: 11px 20px;
}
.storybook-button--large {
  font-size: 16px;
  padding: 12px 24px;
}

```

### Button.jsx

```jsx
import React from 'react';
import PropTypes from 'prop-types';
import './button.css';

/**
 * Primary UI component for user interaction
 */
export const Button = ({ primary, backgroundColor, size, label, ...props }) => {
  const mode = primary ? 'storybook-button--primary' : 'storybook-button--secondary';
  return (
    <button
      type="button"
      className={['storybook-button', `storybook-button--${size}`, mode].join(' ')}
      style={backgroundColor && { backgroundColor }}
      {...props}
    >
      {label}
    </button>
  );
};

Button.propTypes = {
  /**
   * Is this the principal call to action on the page?
   */
  primary: PropTypes.bool,
  /**
   * What background color to use
   */
  backgroundColor: PropTypes.string,
  /**
   * How large should the button be?
   */
  size: PropTypes.oneOf(['small', 'medium', 'large']),
  /**
   * Button contents
   */
  label: PropTypes.string.isRequired,
  /**
   * Optional click handler
   */
  onClick: PropTypes.func,
};

Button.defaultProps = {
  backgroundColor: null,
  primary: false,
  size: 'medium',
  onClick: undefined,
};

```

### Button.stories.js

```js
import { fn } from '@storybook/test';
import { Button } from './Button';

// More on how to set up stories at: https://storybook.js.org/docs/writing-stories#default-export
export default {
  title: 'Example/Button',
  component: Button,
  parameters: {
    // Optional parameter to center the component in the Canvas. More info: https://storybook.js.org/docs/configure/story-layout
    layout: 'centered',
  },
  // This component will have an automatically generated Autodocs entry: https://storybook.js.org/docs/writing-docs/autodocs
  tags: ['autodocs'],
  // More on argTypes: https://storybook.js.org/docs/api/argtypes
  argTypes: {
    backgroundColor: { control: 'color' },
  },
  // Use `fn` to spy on the onClick arg, which will appear in the actions panel once invoked: https://storybook.js.org/docs/essentials/actions#action-args
  args: { onClick: fn() },
};

// More on writing stories with args: https://storybook.js.org/docs/writing-stories/args
export const Primary = {
  args: {
    primary: true,
    label: 'Button',
  },
};

export const Secondary = {
  args: {
    label: 'Button',
  },
};

export const Large = {
  args: {
    size: 'large',
    label: 'Button',
  },
};

export const Small = {
  args: {
    size: 'small',
    label: 'Button',
  },
};

```

### Configure.mdx

```mdx
import { Meta } from "@storybook/blocks";

import Github from "./assets/github.svg";
import Discord from "./assets/discord.svg";
import Youtube from "./assets/youtube.svg";
import Tutorials from "./assets/tutorials.svg";
import Styling from "./assets/styling.png";
import Context from "./assets/context.png";
import Assets from "./assets/assets.png";
import Docs from "./assets/docs.png";
import Share from "./assets/share.png";
import FigmaPlugin from "./assets/figma-plugin.png";
import Testing from "./assets/testing.png";
import Accessibility from "./assets/accessibility.png";
import Theming from "./assets/theming.png";
import AddonLibrary from "./assets/addon-library.png";

export const RightArrow = () => <svg 
    viewBox="0 0 14 14" 
    width="8px" 
    height="14px" 
    style={{ 
      marginLeft: '4px',
      display: 'inline-block',
      shapeRendering: 'inherit',
      verticalAlign: 'middle',
      fill: 'currentColor',
      'path fill': 'currentColor'
    }}
>
  <path d="m11.1 7.35-5.5 5.5a.5.5 0 0 1-.7-.7L10.04 7 4.9 1.85a.5.5 0 1 1 .7-.7l5.5 5.5c.2.2.2.5 0 .7Z" />
</svg>

<Meta title="Configure your project" />

<div className="sb-container">
  <div className='sb-section-title'>
    # Configure your project

    Because Storybook works separately from your app, you'll need to configure it for your specific stack and setup. Below, explore guides for configuring Storybook with popular frameworks and tools. If you get stuck, learn how you can ask for help from our community.
  </div>
  <div className="sb-section">
    <div className="sb-section-item">
      <img
        src={Styling}
        alt="A wall of logos representing different styling technologies"
      />
      <h4 className="sb-section-item-heading">Add styling and CSS</h4>
      <p className="sb-section-item-paragraph">Like with web applications, there are many ways to include CSS within Storybook. Learn more about setting up styling within Storybook.</p>
      <a
        href="https://storybook.js.org/docs/configure/styling-and-css/?renderer=react"
        target="_blank"
      >Learn more<RightArrow /></a>
    </div>
    <div className="sb-section-item">
      <img
        src={Context}
        alt="An abstraction representing the composition of data for a component"
      />
      <h4 className="sb-section-item-heading">Provide context and mocking</h4>
      <p className="sb-section-item-paragraph">Often when a story doesn't render, it's because your component is expecting a specific environment or context (like a theme provider) to be available.</p>
      <a
        href="https://storybook.js.org/docs/writing-stories/decorators/?renderer=react#context-for-mocking"
        target="_blank"
      >Learn more<RightArrow /></a>
    </div>
    <div className="sb-section-item">
      <img src={Assets} alt="A representation of typography and image assets" />
      <div>
        <h4 className="sb-section-item-heading">Load assets and resources</h4>
        <p className="sb-section-item-paragraph">To link static files (like fonts) to your projects and stories, use the
        `staticDirs` configuration option to specify folders to load when
        starting Storybook.</p>
        <a
          href="https://storybook.js.org/docs/configure/images-and-assets/?renderer=react"
          target="_blank"
        >Learn more<RightArrow /></a>
      </div>
    </div>
  </div>
</div>
<div className="sb-container">
  <div className='sb-section-title'>
    # Do more with Storybook

    Now that you know the basics, let's explore other parts of Storybook that will improve your experience. This list is just to get you started. You can customise Storybook in many ways to fit your needs.
  </div>

  <div className="sb-section">
    <div className="sb-features-grid">
      <div className="sb-grid-item">
        <img src={Docs} alt="A screenshot showing the autodocs tag being set, pointing a docs page being generated" />
        <h4 className="sb-section-item-heading">Autodocs</h4>
        <p className="sb-section-item-paragraph">Auto-generate living,
          interactive reference documentation from your components and stories.</p>
        <a
          href="https://storybook.js.org/docs/writing-docs/autodocs/?renderer=react"
          target="_blank"
        >Learn more<RightArrow /></a>
      </div>
      <div className="sb-grid-item">
        <img src={Share} alt="A browser window showing a Storybook being published to a chromatic.com URL" />
        <h4 className="sb-section-item-heading">Publish to Chromatic</h4>
        <p className="sb-section-item-paragraph">Publish your Storybook to review and collaborate with your entire team.</p>
        <a
          href="https://storybook.js.org/docs/sharing/publish-storybook/?renderer=react#publish-storybook-with-chromatic"
          target="_blank"
        >Learn more<RightArrow /></a>
      </div>
      <div className="sb-grid-item">
        <img src={FigmaPlugin} alt="Windows showing the Storybook plugin in Figma" />
        <h4 className="sb-section-item-heading">Figma Plugin</h4>
        <p className="sb-section-item-paragraph">Embed your stories into Figma to cross-reference the design and live
          implementation in one place.</p>
        <a
          href="https://storybook.js.org/docs/sharing/design-integrations/?renderer=react#embed-storybook-in-figma-with-the-plugin"
          target="_blank"
        >Learn more<RightArrow /></a>
      </div>
      <div className="sb-grid-item">
        <img src={Testing} alt="Screenshot of tests passing and failing" />
        <h4 className="sb-section-item-heading">Testing</h4>
        <p className="sb-section-item-paragraph">Use stories to test a component in all its variations, no matter how
          complex.</p>
        <a
          href="https://storybook.js.org/docs/writing-tests/?renderer=react"
          target="_blank"
        >Learn more<RightArrow /></a>
      </div>
      <div className="sb-grid-item">
        <img src={Accessibility} alt="Screenshot of accessibility tests passing and failing" />
        <h4 className="sb-section-item-heading">Accessibility</h4>
        <p className="sb-section-item-paragraph">Automatically test your components for a11y issues as you develop.</p>
        <a
          href="https://storybook.js.org/docs/writing-tests/accessibility-testing/?renderer=react"
          target="_blank"
        >Learn more<RightArrow /></a>
      </div>
      <div className="sb-grid-item">
        <img src={Theming} alt="Screenshot of Storybook in light and dark mode" />
        <h4 className="sb-section-item-heading">Theming</h4>
        <p className="sb-section-item-paragraph">Theme Storybook's UI to personalize it to your project.</p>
        <a
          href="https://storybook.js.org/docs/configure/theming/?renderer=react"
          target="_blank"
        >Learn more<RightArrow /></a>
      </div>
    </div>
  </div>
</div>
<div className='sb-addon'>
  <div className='sb-addon-text'>
    <h4>Addons</h4>
    <p className="sb-section-item-paragraph">Integrate your tools with Storybook to connect workflows.</p>
    <a
        href="https://storybook.js.org/addons/"
        target="_blank"
      >Discover all addons<RightArrow /></a>
  </div>
  <div className='sb-addon-img'>
    <img src={AddonLibrary} alt="Integrate your tools with Storybook to connect workflows." />
  </div>
</div>

<div className="sb-section sb-socials">
    <div className="sb-section-item">
      <img src={Github} alt="Github logo" className="sb-explore-image"/>
      Join our contributors building the future of UI development.

      <a
        href="https://github.com/storybookjs/storybook"
        target="_blank"
      >Star on GitHub<RightArrow /></a>
    </div>
    <div className="sb-section-item">
      <img src={Discord} alt="Discord logo" className="sb-explore-image"/>
      <div>
        Get support and chat with frontend developers.

        <a
          href="https://discord.gg/storybook"
          target="_blank"
        >Join Discord server<RightArrow /></a>
      </div>
    </div>
    <div className="sb-section-item">
      <img src={Youtube} alt="Youtube logo" className="sb-explore-image"/>
      <div>
        Watch tutorials, feature previews and interviews.

        <a
          href="https://www.youtube.com/@chromaticui"
          target="_blank"
        >Watch on YouTube<RightArrow /></a>
      </div>
    </div>
    <div className="sb-section-item">
      <img src={Tutorials} alt="A book" className="sb-explore-image"/>
      <p>Follow guided walkthroughs on for key workflows.</p>

      <a
          href="https://storybook.js.org/tutorials/"
          target="_blank"
        >Discover tutorials<RightArrow /></a>
    </div>
</div>

<style>
  {`
  .sb-container {
    margin-bottom: 48px;
  }

  .sb-section {
    width: 100%;
    display: flex;
    flex-direction: row;
    gap: 20px;
  }

  img {
    object-fit: cover;
  }

  .sb-section-title {
    margin-bottom: 32px;
  }

  .sb-section a:not(h1 a, h2 a, h3 a) {
    font-size: 14px;
  }

  .sb-section-item, .sb-grid-item {
    flex: 1;
    display: flex;
    flex-direction: column;
  }

  .sb-section-item-heading {
    padding-top: 20px !important;
    padding-bottom: 5px !important;
    margin: 0 !important;
  }
  .sb-section-item-paragraph {
    margin: 0;
    padding-bottom: 10px;
  }

  .sb-chevron {
    margin-left: 5px;
  }

  .sb-features-grid {
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    grid-gap: 32px 20px;
  }

  .sb-socials {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
  }

  .sb-socials p {
    margin-bottom: 10px;
  }

  .sb-explore-image {
    max-height: 32px;
    align-self: flex-start;
  }

  .sb-addon {
    width: 100%;
    display: flex;
    align-items: center;
    position: relative;
    background-color: #EEF3F8;
    border-radius: 5px;
    border: 1px solid rgba(0, 0, 0, 0.05);
    background: #EEF3F8;
    height: 180px;
    margin-bottom: 48px;
    overflow: hidden;
  }

  .sb-addon-text {
    padding-left: 48px;
    max-width: 240px;
  }

  .sb-addon-text h4 {
    padding-top: 0px;
  }

  .sb-addon-img {
    position: absolute;
    left: 345px;
    top: 0;
    height: 100%;
    width: 200%;
    overflow: hidden;
  }

  .sb-addon-img img {
    width: 650px;
    transform: rotate(-15deg);
    margin-left: 40px;
    margin-top: -72px;
    box-shadow: 0 0 1px rgba(255, 255, 255, 0);
    backface-visibility: hidden;
  }

  @media screen and (max-width: 800px) {
    .sb-addon-img {
      left: 300px;
    }
  }

  @media screen and (max-width: 600px) {
    .sb-section {
      flex-direction: column;
    }

    .sb-features-grid {
      grid-template-columns: repeat(1, 1fr);
    }

    .sb-socials {
      grid-template-columns: repeat(2, 1fr);
    }

    .sb-addon {
      height: 280px;
      align-items: flex-start;
      padding-top: 32px;
      overflow: hidden;
    }

    .sb-addon-text {
      padding-left: 24px;
    }

    .sb-addon-img {
      right: 0;
      left: 0;
      top: 130px;
      bottom: 0;
      overflow: hidden;
      height: auto;
      width: 124%;
    }

    .sb-addon-img img {
      width: 1200px;
      transform: rotate(-12deg);
      margin-left: 0;
      margin-top: 48px;
      margin-bottom: -40px;
      margin-left: -24px;
    }
  }
  `}
</style>

```

### header.css

```css
.storybook-header {
  font-family: 'Nunito Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif;
  border-bottom: 1px solid rgba(0, 0, 0, 0.1);
  padding: 15px 20px;
  display: flex;
  align-items: center;
  justify-content: space-between;
}

.storybook-header svg {
  display: inline-block;
  vertical-align: top;
}

.storybook-header h1 {
  font-weight: 700;
  font-size: 20px;
  line-height: 1;
  margin: 6px 0 6px 10px;
  display: inline-block;
  vertical-align: top;
}

.storybook-header button + button {
  margin-left: 10px;
}

.storybook-header .welcome {
  color: #333;
  font-size: 14px;
  margin-right: 10px;
}

```

### Header.jsx

```jsx
import React from 'react';
import PropTypes from 'prop-types';

import { Button } from './Button';
import './header.css';

export const Header = ({ user, onLogin, onLogout, onCreateAccount }) => (
  <header>
    <div className="storybook-header">
      <div>
        <svg width="32" height="32" viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg">
          <g fill="none" fillRule="evenodd">
            <path
              d="M10 0h12a10 10 0 0110 10v12a10 10 0 01-10 10H10A10 10 0 010 22V10A10 10 0 0110 0z"
              fill="#FFF"
            />
            <path
              d="M5.3 10.6l10.4 6v11.1l-10.4-6v-11zm11.4-6.2l9.7 5.5-9.7 5.6V4.4z"
              fill="#555AB9"
            />
            <path
              d="M27.2 10.6v11.2l-10.5 6V16.5l10.5-6zM15.7 4.4v11L6 10l9.7-5.5z"
              fill="#91BAF8"
            />
          </g>
        </svg>
        <h1>Acme</h1>
      </div>
      <div>
        {user ? (
          <>
            <span className="welcome">
              Welcome, <b>{user.name}</b>!
            </span>
            <Button size="small" onClick={onLogout} label="Log out" />
          </>
        ) : (
          <>
            <Button size="small" onClick={onLogin} label="Log in" />
            <Button primary size="small" onClick={onCreateAccount} label="Sign up" />
          </>
        )}
      </div>
    </div>
  </header>
);

Header.propTypes = {
  user: PropTypes.shape({
    name: PropTypes.string.isRequired,
  }),
  onLogin: PropTypes.func.isRequired,
  onLogout: PropTypes.func.isRequired,
  onCreateAccount: PropTypes.func.isRequired,
};

Header.defaultProps = {
  user: null,
};

```

### Header.stories.js

```js
import { Header } from './Header';
import { fn } from '@storybook/test';

export default {
  title: 'Example/Header',
  component: Header,
  // This component will have an automatically generated Autodocs entry: https://storybook.js.org/docs/writing-docs/autodocs
  tags: ['autodocs'],
  parameters: {
    // More on how to position stories at: https://storybook.js.org/docs/configure/story-layout
    layout: 'fullscreen',
  },
  args: {
    onLogin: fn(),
    onLogout: fn(),
    onCreateAccount: fn(),
  },
};

export const LoggedIn = {
  args: {
    user: {
      name: 'Jane Doe',
    },
  },
};

export const LoggedOut = {};

```

### page.css

```css
.storybook-page {
  font-family: 'Nunito Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif;
  font-size: 14px;
  line-height: 24px;
  padding: 48px 20px;
  margin: 0 auto;
  max-width: 600px;
  color: #333;
}

.storybook-page h2 {
  font-weight: 700;
  font-size: 32px;
  line-height: 1;
  margin: 0 0 4px;
  display: inline-block;
  vertical-align: top;
}

.storybook-page p {
  margin: 1em 0;
}

.storybook-page a {
  text-decoration: none;
  color: #1ea7fd;
}

.storybook-page ul {
  padding-left: 30px;
  margin: 1em 0;
}

.storybook-page li {
  margin-bottom: 8px;
}

.storybook-page .tip {
  display: inline-block;
  border-radius: 1em;
  font-size: 11px;
  line-height: 12px;
  font-weight: 700;
  background: #e7fdd8;
  color: #66bf3c;
  padding: 4px 12px;
  margin-right: 10px;
  vertical-align: top;
}

.storybook-page .tip-wrapper {
  font-size: 13px;
  line-height: 20px;
  margin-top: 40px;
  margin-bottom: 40px;
}

.storybook-page .tip-wrapper svg {
  display: inline-block;
  height: 12px;
  width: 12px;
  margin-right: 4px;
  vertical-align: top;
  margin-top: 3px;
}

.storybook-page .tip-wrapper svg path {
  fill: #1ea7fd;
}

```

### Page.jsx

```jsx
import React from 'react';

import { Header } from './Header';
import './page.css';

export const Page = () => {
  const [user, setUser] = React.useState();

  return (
    <article>
      <Header
        user={user}
        onLogin={() => setUser({ name: 'Jane Doe' })}
        onLogout={() => setUser(undefined)}
        onCreateAccount={() => setUser({ name: 'Jane Doe' })}
      />

      <section className="storybook-page">
        <h2>Pages in Storybook</h2>
        <p>
          We recommend building UIs with a{' '}
          <a href="https://componentdriven.org" target="_blank" rel="noopener noreferrer">
            <strong>component-driven</strong>
          </a>{' '}
          process starting with atomic components and ending with pages.
        </p>
        <p>
          Render pages with mock data. This makes it easy to build and review page states without
          needing to navigate to them in your app. Here are some handy patterns for managing page
          data in Storybook:
        </p>
        <ul>
          <li>
            Use a higher-level connected component. Storybook helps you compose such data from the
            "args" of child component stories
          </li>
          <li>
            Assemble data in the page component from your services. You can mock these services out
            using Storybook.
          </li>
        </ul>
        <p>
          Get a guided tutorial on component-driven development at{' '}
          <a href="https://storybook.js.org/tutorials/" target="_blank" rel="noopener noreferrer">
            Storybook tutorials
          </a>
          . Read more in the{' '}
          <a href="https://storybook.js.org/docs" target="_blank" rel="noopener noreferrer">
            docs
          </a>
          .
        </p>
        <div className="tip-wrapper">
          <span className="tip">Tip</span> Adjust the width of the canvas with the{' '}
          <svg width="10" height="10" viewBox="0 0 12 12" xmlns="http://www.w3.org/2000/svg">
            <g fill="none" fillRule="evenodd">
              <path
                d="M1.5 5.2h4.8c.3 0 .5.2.5.4v5.1c-.1.2-.3.3-.4.3H1.4a.5.5 0 01-.5-.4V5.7c0-.3.2-.5.5-.5zm0-2.1h6.9c.3 0 .5.2.5.4v7a.5.5 0 01-1 0V4H1.5a.5.5 0 010-1zm0-2.1h9c.3 0 .5.2.5.4v9.1a.5.5 0 01-1 0V2H1.5a.5.5 0 010-1zm4.3 5.2H2V10h3.8V6.2z"
                id="a"
                fill="#999"
              />
            </g>
          </svg>
          Viewports addon in the toolbar
        </div>
      </section>
    </article>
  );
};

```

### Page.stories.js

```js
import { within, userEvent, expect } from '@storybook/test';

import { Page } from './Page';

export default {
  title: 'Example/Page',
  component: Page,
  parameters: {
    // More on how to position stories at: https://storybook.js.org/docs/configure/story-layout
    layout: 'fullscreen',
  },
};

export const LoggedOut = {};

// More on interaction testing: https://storybook.js.org/docs/writing-tests/interaction-testing
export const LoggedIn = {
  play: async ({ canvasElement }) => {
    const canvas = within(canvasElement);
    const loginButton = canvas.getByRole('button', { name: /Log in/i });
    await expect(loginButton).toBeInTheDocument();
    await userEvent.click(loginButton);
    await expect(loginButton).not.toBeInTheDocument();

    const logoutButton = canvas.getByRole('button', { name: /Log out/i });
    await expect(logoutButton).toBeInTheDocument();
  },
};

```

###### styles

####### abstracts

### _mixins.scss

```scss
@mixin flexCenter {
  display: flex;
  justify-content: center;
  align-items: center;
}

```

### _variables.scss

```scss
$primary-color: #0070f3;
$secondary-color: #0070f3;
$font-stack: Arial, sans-serif;

```

####### base

### _reset.scss

```scss
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

```

### breakpoints.js

```js
const sizes = {
  mobile: '576px',
  tablet: '768px',
  desktop: '1024px',
  largeDesktop: '1440px',
};

export const devices = {
  mobile: `(min-width: ${sizes.mobile})`,
  tablet: `(min-width: ${sizes.tablet})`,
  desktop: `(min-width: ${sizes.desktop})`,
  largeDesktop: `(min-width: ${sizes.largeDesktop})`,
};

export const mediaQueries = {
  mobile: `@media ${devices.mobile}`,
  tablet: `@media ${devices.tablet}`,
  desktop: `@media ${devices.desktop}`,
  largeDesktop: `@media ${devices.largeDesktop}`,
};

```

####### components

### GlobalStyle.js

```js
import { createGlobalStyle } from 'styled-components';

const GlobalStyle = createGlobalStyle`
  body {
    margin: 0;
    padding: 0;
    font-family: ${({ theme }) => theme.fonts.body};
    background-color: ${({ theme }) => theme.colors.background};
    color: ${({ theme }) => theme.colors.text};
  }
`;

export default GlobalStyle;

```

####### layout

### main.scss

```scss
@import 'abstracts/variables';
@import 'abstracts/mixins';

@import 'base/reset';
@import 'base/typography';

@import 'components/buttons';
@import 'components/forms';

@import 'layout/header';
@import 'layout/footer';

@import 'pages/home';

```

### NolocoTheme.js

```js
// src/styles/NolocoTheme.js
const NolocoTheme = {
    colors: {
        primary: '#0F172A',
        secondary: '#3B82F6',
        background: '#F8FAFC',
        text: '#1E293B',
    },
    fonts: {
      body: 'Inter, sans-serif',
    },
  };

  export default NolocoTheme;

```

####### pages

### ResponsiveWrapper.js

```js
import styled from 'styled-components';
import { mediaQueries } from './breakpoints';

const ResponsiveWrapper = styled.div`
  padding: 1rem;
  width: 100%;
  max-width: 100%;

  ${mediaQueries.tablet} {
    padding: 2rem;
    max-width: 720px;
    margin: 0 auto;
  }

  ${mediaQueries.desktop} {
    padding: 3rem;
    max-width: 960px;
  }

  ${mediaQueries.largeDesktop} {
    max-width: 1200px;
  }
`;

export default ResponsiveWrapper;

```

### theme.js

```js
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

```

###### utils

### imageOptimization.js

```js
export const getOptimizedImageUrl = (url, width, height) => {
  // This is a placeholder. In a real-world scenario, you'd integrate with
  // an image optimization service like Cloudinary or Imgix.
  return ;
};

```

### useIntersectionObserver.js

```js
import { useState, useEffect } from 'react';

const useIntersectionObserver = (ref, options = {}) => {
  const [isIntersecting, setIsIntersecting] = useState(false);

  useEffect(() => {
    const observer = new IntersectionObserver(([entry]) => {
      setIsIntersecting(entry.isIntersecting);
    }, options);

    if (ref.current) {
      observer.observe(ref.current);
    }

    return () => {
      observer.disconnect();
    };
  }, [ref, options]);

  return isIntersecting;
};

export default useIntersectionObserver;

```

### tailwind.config.js

```js
/** @type {import('tailwindcss').Config} */
module.exports = {
  darkMode: ["class"],
  content: [
    './pages/**/*.{ts,tsx}',
    './components/**/*.{ts,tsx}',
    './app/**/*.{ts,tsx}',
    './src/**/*.{ts,tsx}',
  ],
  prefix: "",
  theme: {
    container: {
      center: true,
      padding: "2rem",
      screens: {
        "2xl": "1400px",
      },
    },
    extend: {
      colors: {
        border: "hsl(var(--border))",
        input: "hsl(var(--input))",
        ring: "hsl(var(--ring))",
        background: "hsl(var(--background))",
        foreground: "hsl(var(--foreground))",
        primary: {
          DEFAULT: "hsl(var(--primary))",
          foreground: "hsl(var(--primary-foreground))",
        },
        secondary: {
          DEFAULT: "hsl(var(--secondary))",
          foreground: "hsl(var(--secondary-foreground))",
        },
        destructive: {
          DEFAULT: "hsl(var(--destructive))",
          foreground: "hsl(var(--destructive-foreground))",
        },
        muted: {
          DEFAULT: "hsl(var(--muted))",
          foreground: "hsl(var(--muted-foreground))",
        },
        accent: {
          DEFAULT: "hsl(var(--accent))",
          foreground: "hsl(var(--accent-foreground))",
        },
        popover: {
          DEFAULT: "hsl(var(--popover))",
          foreground: "hsl(var(--popover-foreground))",
        },
        card: {
          DEFAULT: "hsl(var(--card))",
          foreground: "hsl(var(--card-foreground))",
        },
      },
      borderRadius: {
        lg: "var(--radius)",
        md: "calc(var(--radius) - 2px)",
        sm: "calc(var(--radius) - 4px)",
      },
      keyframes: {
        "accordion-down": {
          from: { height: "0" },
          to: { height: "var(--radix-accordion-content-height)" },
        },
        "accordion-up": {
          from: { height: "var(--radix-accordion-content-height)" },
          to: { height: "0" },
        },
      },
      animation: {
        "accordion-down": "accordion-down 0.2s ease-out",
        "accordion-up": "accordion-up 0.2s ease-out",
      },
    },
  },
  plugins: [require("tailwindcss-animate")],
}
```

### tsconfig.json

```json
{
  "compilerOptions": {
    "target": "es5",
    "lib": ["dom", "dom.iterable", "esnext"],
    "allowJs": true,
    "skipLibCheck": true,
    "esModuleInterop": true,
    "allowSyntheticDefaultImports": true,
    "strict": true,
    "forceConsistentCasingInFileNames": true,
    "module": "esnext",
    "moduleResolution": "node",
    "resolveJsonModule": true,
    "isolatedModules": true,
    "noEmit": true,
    "jsx": "react-jsx",
    "baseUrl": "src"
  },
  "include": ["src"]
}

```

### webpack.config.js

```js
const path = require('path');
const HtmlWebpackPlugin = require('html-webpack-plugin');
const MiniCssExtractPlugin = require('mini-css-extract-plugin');

module.exports = {
  entry: './src/index.js',
  output: {
    path: path.resolve(__dirname, 'dist'),
    filename: '[name].[contenthash].js',
    clean: true,
  },
  module: {
    rules: [
      {
        test: /\.(js|jsx)$/,
        exclude: /node_modules/,
        use: {
          loader: 'babel-loader',
        },
      },
      {
        test: /\.(scss|css)$/,
        use: [MiniCssExtractPlugin.loader, 'css-loader', 'sass-loader'],
      },
    ],
  },
  plugins: [
    new HtmlWebpackPlugin({
      template: './public/index.html',
    }),
    new MiniCssExtractPlugin({
      filename: '[name].[contenthash].css',
    }),
  ],
  devServer: {
    static: path.join(__dirname, 'dist'),
    port: 3000,
    hot: true,
  },
  optimization: {
    moduleIds: 'deterministic',
    runtimeChunk: 'single',
    splitChunks: {
      cacheGroups: {
        vendor: {
          test: /[\/]node_modules[\/]/,
          name: 'vendors',
          chunks: 'all',
        },
      },
    },
  },
};

const WorkboxWebpackPlugin = require('workbox-webpack-plugin');

module.exports.plugins.push(
  new WorkboxWebpackPlugin.GenerateSW({
    clientsClaim: true,
    skipWaiting: true,
    runtimeCaching: [{
      urlPattern: /^https?.*/,
      handler: 'NetworkFirst',
      options: {
        cacheName: 'https-calls',
        networkTimeoutSeconds: 15,
        expiration: {
          maxEntries: 150,
          maxAgeSeconds: 30 * 24 * 60 * 60, // 1 month
        },
        cacheableResponse: {
          statuses: [0, 200],
        },
      },
    }],
  })
);

```

### package.json

```json
{
  "dependencies": {
    "bcryptjs": "^2.4.3",
    "jsonwebtoken": "^9.0.2"
  }
}

```

### README.md

```md

```

#### server

### .env

```
PORT=3000
BASE_URL=http://localhost:3000  # Optional, for local development
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
JWT_SECRET=mySecretKey
DATABASE_URL=postgres://ultimate_user:postgres@localhost:5432/ultimate
JWT_SECRET=mySecretKey

```

### babel.config.js

```js

```

### jest.config.js

```js
module.exports = {
  testEnvironment: 'node',
  testMatch: ['**/tests/**/*.js', '**/?(*.)+(spec|test).js'],
  collectCoverageFrom: ['src/**/*.js'],
  coveragePathIgnorePatterns: ['/node_modules/', '/tests/'],
  coverageReporters: ['text', 'lcov'],
  setupFilesAfterEnv: ['./jest.setup.js']
};

```

### jest.setup.js

```js
// jest.setup.js

require('dotenv').config();

jest.setTimeout(30000);

expect.extend({
  toBeWithinRange(received, floor, ceiling) {
    const pass = received >= floor && received <= ceiling;
    if (pass) {
      return {
        message: () => `expected ${received} not to be within range ${floor} - ${ceiling}`,
        pass: true,
      };
    } else {
      return {
        message: () => `expected ${received} to be within range ${floor} - ${ceiling}`,
        pass: false,
      };
    }
  },
});

beforeAll(() => {
  console.log('Starting all tests...');
});

afterAll(() => {
  console.log('All tests completed.');
});

if (typeof fetch === 'undefined') {
  global.fetch = require('node-fetch');
}

global.createMockResponse = (data, status = 200) => {
  return new Response(JSON.stringify(data), {
    status,
    headers: { 'Content-Type': 'application/json' },
  });
};

global.wait = (ms) => new Promise(resolve => setTimeout(resolve, ms));

const mockDate = new Date('2024-08-05T12:00:00Z');
global.Date = class extends Date {
  constructor() {
    return mockDate;
  }
};

```

### package.json

```json
{
  "name": "ultimate",
  "version": "1.0.0",
  "description": "Project created with DemTech Master Script Project Setup.",
  "main": "src/index.js",
  "scripts": {
    "start": "node src/index.js",
    "dev": "nodemon src/index.js",
    "test": "jest",
    "test:watch": "jest --watch",
    "test:coverage": "jest --coverage"
  },
  "author": "",
  "license": "ISC",
  "dependencies": {
    "aws-sdk": "^2.1669.0",
    "bcryptjs": "^2.4.3",
    "cors": "^2.8.5",
    "dotenv": "^10.0.0",
    "express": "^4.19.2",
    "handlebars": "^4.7.8",
    "jsonwebtoken": "^9.0.2",
    "multer": "^1.4.5-lts.1",
    "nodemailer": "^6.9.14",
    "pg": "^8.12.0",
    "sequelize": "^6.37.3"
  },
  "devDependencies": {
    "jest": "^27.0.0",
    "nodemon": "^2.0.12",
    "supertest": "^6.1.3"
  }
}

```

### psql_output.log

```log
CREATE DATABASE
CREATE ROLE
GRANT
You are now connected to database "ultimate" as user "postgres".
CREATE EXTENSION

```

##### src

### app.js

```js
const express = require('express');
const { Pool } = require('pg');
const session = require('express-session');
const pgSession = require('connect-pg-simple')(session);
const passport = require('passport');
const cors = require('cors');
const dotenv = require('dotenv');
const path = require('path');
const errorHandler = require('./middleware/error-handling-middleware');

dotenv.config();

const app = express();

// Middleware
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// PostgreSQL Pool
const pool = new Pool({
    connectionString: process.env.DATABASE_URL
});

// Session Management
app.use(session({
    store: new pgSession({
        pool: pool,
        tableName: 'session'
    }),
    secret: process.env.SESSION_SECRET || 'your_secret_key',
    resave: false,
    saveUninitialized: false,
    cookie: { secure: process.env.NODE_ENV === 'production' }
}));

// Passport middleware
app.use(passport.initialize());
app.use(passport.session());

// Passport Config
require('./config/passport')(passport);

// Routes
app.use('/api/models', require('./routes/models'));
// Add other routes as needed

// Serve static files from the React app in production
if (process.env.NODE_ENV === 'production') {
    app.use(express.static(path.join(__dirname, '../../client/build')));

    app.get('*', (req, res) => {
        res.sendFile(path.join(__dirname, '../../client/build', 'index.html'));
    });
}

// Error Handling Middleware
app.use(errorHandler);

module.exports = app;

```

###### config

### database.js

```js
// src/config/database.js
const { Pool } = require('pg');
const { Sequelize } = require('sequelize');
require('dotenv').config();

const sequelize = new Sequelize(process.env.DATABASE_URL, {
  dialect: 'postgres',
  logging: false,
  pool: {
    max: 5,
    min: 0,
    acquire: 30000,
    idle: 10000
  }
});

const pool = new Pool({
  connectionString: process.env.DATABASE_URL,
});

const testConnection = async () => {
  try {
    await sequelize.authenticate();
    console.log('Sequelize connection has been established successfully.');

    const client = await pool.connect();
    console.log('PostgreSQL pool connection has been established successfully.');
    client.release();
  } catch (error) {
    console.error('Unable to connect to the database:', error);
  }
};

testConnection();

module.exports = {
  sequelize,
  Sequelize,
  query: (text, params) => pool.query(text, params),
};

```

### passport.js

```js
module.exports = (passport) => {
    // Add passport strategies and serialization here
    // This is a placeholder and should be expanded based on your auth requirements
};

```

###### controllers

### about.js

```js
const aboutModel = require('../models/about');

exports.getAll = async (req, res) => {
  try {
    const items = await aboutModel.findAll();
    res.json(items);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

exports.create = async (req, res) => {
  try {
    const newItem = await aboutModel.create(req.body);
    res.status(201).json(newItem);
  } catch (error) {
    res.status(400).json({ message: error.message });
  }
};

exports.getById = async (req, res) => {
  try {
    const item = await aboutModel.findByPk(req.params.id);
    if (!item) {
      return res.status(404).json({ message: 'Item not found' });
    }
    res.json(item);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

exports.update = async (req, res) => {
  try {
    const [updated] = await aboutModel.update(req.body, {
      where: { id: req.params.id }
    });
    if (updated) {
      const updatedItem = await aboutModel.findByPk(req.params.id);
      res.json(updatedItem);
    } else {
      res.status(404).json({ message: 'Item not found' });
    }
  } catch (error) {
    res.status(400).json({ message: error.message });
  }
};

exports.delete = async (req, res) => {
  try {
    const deleted = await aboutModel.destroy({
      where: { id: req.params.id }
    });
    if (deleted) {
      res.json({ message: 'Item deleted' });
    } else {
      res.status(404).json({ message: 'Item not found' });
    }
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

```

### contact.js

```js
const contactModel = require('../models/contact');

exports.getAll = async (req, res) => {
  try {
    const items = await contactModel.findAll();
    res.json(items);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

exports.create = async (req, res) => {
  try {
    const newItem = await contactModel.create(req.body);
    res.status(201).json(newItem);
  } catch (error) {
    res.status(400).json({ message: error.message });
  }
};

exports.getById = async (req, res) => {
  try {
    const item = await contactModel.findByPk(req.params.id);
    if (!item) {
      return res.status(404).json({ message: 'Item not found' });
    }
    res.json(item);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

exports.update = async (req, res) => {
  try {
    const [updated] = await contactModel.update(req.body, {
      where: { id: req.params.id }
    });
    if (updated) {
      const updatedItem = await contactModel.findByPk(req.params.id);
      res.json(updatedItem);
    } else {
      res.status(404).json({ message: 'Item not found' });
    }
  } catch (error) {
    res.status(400).json({ message: error.message });
  }
};

exports.delete = async (req, res) => {
  try {
    const deleted = await contactModel.destroy({
      where: { id: req.params.id }
    });
    if (deleted) {
      res.json({ message: 'Item deleted' });
    } else {
      res.status(404).json({ message: 'Item not found' });
    }
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

```

### docs.js

```js
const docsModel = require('../models/docs');

exports.getAll = async (req, res) => {
  try {
    const items = await docsModel.findAll();
    res.json(items);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

exports.create = async (req, res) => {
  try {
    const newItem = await docsModel.create(req.body);
    res.status(201).json(newItem);
  } catch (error) {
    res.status(400).json({ message: error.message });
  }
};

exports.getById = async (req, res) => {
  try {
    const item = await docsModel.findByPk(req.params.id);
    if (!item) {
      return res.status(404).json({ message: 'Item not found' });
    }
    res.json(item);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

exports.update = async (req, res) => {
  try {
    const [updated] = await docsModel.update(req.body, {
      where: { id: req.params.id }
    });
    if (updated) {
      const updatedItem = await docsModel.findByPk(req.params.id);
      res.json(updatedItem);
    } else {
      res.status(404).json({ message: 'Item not found' });
    }
  } catch (error) {
    res.status(400).json({ message: error.message });
  }
};

exports.delete = async (req, res) => {
  try {
    const deleted = await docsModel.destroy({
      where: { id: req.params.id }
    });
    if (deleted) {
      res.json({ message: 'Item deleted' });
    } else {
      res.status(404).json({ message: 'Item not found' });
    }
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

```

### index.js

```js
const app = require(./app);
const express = require('express');
const cors = require('cors');
require('dotenv').config();
const { sequelize } = require('./utils/db');
const modelRoutes = require('./routes/models');
const dynamicApiRoutes = require('./routes/dynamicApiRoutes');

const PORT = process.env.PORT || 3000;

// Middleware

// Routes
app.use('/api/models', modelRoutes);
app.use('/api', dynamicApiRoutes);

app.get('/', (req, res) => {
  res.json({ message: 'Welcome to the API' });
});

// Error handling middleware
app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).send('Something broke!');
});

// Database connection and server start
const startServer = async () => {
  try {
    await sequelize.authenticate();
    console.log('Database connection has been established successfully.');

    app.listen(PORT, () => console.log());
  } catch (error) {
    console.error('Unable to connect to the database:', error);
  }
};

startServer();

```

###### middleware

### auth.js

```js
// projects/grow-tracking-app/server/src/middleware/auth.js
const jwt = require('jsonwebtoken');

module.exports = function (req, res, next) {
  // Get token from header
  const token = req.header('x-auth-token');

  // Check if no token
  if (!token) {
    return res.status(401).json({ msg: 'No token, authorization denied' });
  }

  // Verify token
  try {
    const decoded = jwt.verify(token, process.env.JWT_SECRET);
    req.user = decoded.user;
    next();
  } catch (err) {
    res.status(401).json({ msg: 'Token is not valid' });
  }
};

```

### error-handling-middleware.js

```js
const errorHandler = (err, req, res, next) => {
    console.error(err.stack);
    res.status(500).send('Something broke!');
};

module.exports = errorHandler;

```

### errorHandler.js

```js
const { sendError } = require('../utils/apiResponse');

const errorHandler = (err, req, res, next) => {
  console.error(err.stack);

  const statusCode = err.statusCode || 500;
  const message = err.message || 'Internal Server Error';

  sendError(res, statusCode, message);
};

module.exports = errorHandler;

```

###### middlewares

### rbacMiddleware.js

```js
// src/middlewares/rbacMiddleware.js
const rbacMiddleware = (requiredRole) => {
  return (req, res, next) => {
    if (!req.user || !req.user.role) {
      return res.status(403).json({ message: 'Access denied' });
    }

    if (req.user.role !== requiredRole) {
      return res.status(403).json({ message: 'Insufficient permissions' });
    }

    next();
  };
};

module.exports = rbacMiddleware;

```

###### models

### about.js

```js
const { DataTypes } = require('sequelize');
const sequelize = require('../config/database');

const about = sequelize.define('about', {
  // Define your model fields here
  name: {
    type: DataTypes.STRING,
    allowNull: false
  },
  // Add more fields as needed
});

module.exports = about;

```

### contact.js

```js
const { DataTypes } = require('sequelize');
const sequelize = require('../config/database');

const contact = sequelize.define('contact', {
  // Define your model fields here
  name: {
    type: DataTypes.STRING,
    allowNull: false
  },
  // Add more fields as needed
});

module.exports = contact;

```

### docs.js

```js
const { DataTypes } = require('sequelize');
const sequelize = require('../config/database');

const docs = sequelize.define('docs', {
  // Define your model fields here
  name: {
    type: DataTypes.STRING,
    allowNull: false
  },
  // Add more fields as needed
});

module.exports = docs;

```

### EmailTemplate.js

```js
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

class EmailTemplateModel {
  async saveTemplate(templateData) {
    const query = 'INSERT INTO email_templates(name, subject, body) VALUES($1, $2, $3) RETURNING *';
    const values = [templateData.name, templateData.subject, templateData.body];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getTemplates() {
    const result = await pool.query('SELECT * FROM email_templates');
    return result.rows;
  }

  async getTemplateByName(name) {
    const result = await pool.query('SELECT * FROM email_templates WHERE name = $1', [name]);
    return result.rows[0];
  }
}

module.exports = new EmailTemplateModel();

```

### File.js

```js
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

class FileModel {
  async saveFile(fileData) {
    const query = 'INSERT INTO files(filename, originalname, mimetype, size, url, uploadedby) VALUES($1, $2, $3, $4, $5, $6) RETURNING *';
    const values = [fileData.filename, fileData.originalname, fileData.mimetype, fileData.size, fileData.url, fileData.uploadedby];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getFilesByUser(userId) {
    const query = 'SELECT * FROM files WHERE uploadedby = $1';
    const result = await pool.query(query, [userId]);
    return result.rows;
  }
}

module.exports = new FileModel();

```

### User.js

```js
// src/models/User.js

const { Sequelize, DataTypes } = require('sequelize');
const sequelize = require('../config/database');

const User = sequelize.define('User', {
  name: {
    type: DataTypes.STRING,
    allowNull: false
  },
  email: {
    type: DataTypes.STRING,
    allowNull: false,
    unique: true
  },
  password: {
    type: DataTypes.STRING,
    allowNull: false
  }
});

module.exports = User;

```

### Workflow.js

```js
// src/models/Workflow.js
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

class WorkflowModel {
  async createWorkflow(workflowData) {
    const query = 'INSERT INTO workflows(name, description, trigger, steps) VALUES($1, $2, $3, $4) RETURNING *';
    const values = [workflowData.name, workflowData.description, workflowData.trigger, JSON.stringify(workflowData.steps)];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getWorkflows() {
    const result = await pool.query('SELECT * FROM workflows');
    return result.rows;
  }

  async getWorkflowById(id) {
    const result = await pool.query('SELECT * FROM workflows WHERE id = $1', [id]);
    return result.rows[0];
  }
}

module.exports = new WorkflowModel();

```

###### redux

####### actions

### authActions.js

```js
import axios from 'axios';
import { setAuthToken } from '../../utils/setAuthToken';
import {
  REGISTER_SUCCESS,
  REGISTER_FAIL,
  USER_LOADED,
  AUTH_ERROR,
  LOGIN_SUCCESS,
  LOGIN_FAIL,
  LOGOUT
} from './types';

// Load User
export const loadUser = () => async dispatch => {
  if (localStorage.token) {
    setAuthToken(localStorage.token);
  }

  try {
    const res = await axios.get('/api/auth');
    dispatch({
      type: USER_LOADED,
      payload: res.data
    });
  } catch (err) {
    dispatch({
      type: AUTH_ERROR
    });
  }
};

// Register User
export const register = (formData) => async dispatch => {
  try {
    const res = await axios.post('/api/users', formData);
    dispatch({
      type: REGISTER_SUCCESS,
      payload: res.data
    });
    dispatch(loadUser());
  } catch (err) {
    dispatch({
      type: REGISTER_FAIL,
      payload: err.response.data.msg
    });
  }
};

// Login User
export const login = (email, password) => async dispatch => {
  const config = {
    headers: {
      'Content-Type': 'application/json'
    }
  };

  const body = JSON.stringify({ email, password });

  try {
    const res = await axios.post('/api/auth', body, config);
    dispatch({
      type: LOGIN_SUCCESS,
      payload: res.data
    });
    dispatch(loadUser());
  } catch (err) {
    dispatch({
      type: LOGIN_FAIL,
      payload: err.response.data.msg
    });
  }
};

// Logout
export const logout = () => dispatch => {
  dispatch({ type: LOGOUT });
};

```

### projectActions.js

```js
import axios from 'axios';
import {
  GET_PROJECTS,
  ADD_PROJECT,
  DELETE_PROJECT,
  SET_CURRENT,
  CLEAR_CURRENT,
  PROJECT_ERROR
} from './types';

// Get Projects
export const getProjects = () => async dispatch => {
  try {
    const res = await axios.get('/api/projects');
    dispatch({
      type: GET_PROJECTS,
      payload: res.data
    });
  } catch (err) {
    dispatch({
      type: PROJECT_ERROR,
      payload: err.response.msg
    });
  }
};

// Add Project
export const addProject = (project) => async dispatch => {
  const config = {
    headers: {
      'Content-Type': 'application/json'
    }
  };

  try {
    const res = await axios.post('/api/projects', project, config);
    dispatch({
      type: ADD_PROJECT,
      payload: res.data
    });
  } catch (err) {
    dispatch({
      type: PROJECT_ERROR,
      payload: err.response.msg
    });
  }
};

// Delete Project
export const deleteProject = (id) => async dispatch => {
  try {
    await axios.delete(`/api/projects/${id}`);
    dispatch({
      type: DELETE_PROJECT,
      payload: id
    });
  } catch (err) {
    dispatch({
      type: PROJECT_ERROR,
      payload: err.response.msg
    });
  }
};

// Set Current Project
export const setCurrentProject = (project) => {
  return {
    type: SET_CURRENT,
    payload: project
  };
};

// Clear Current Project
export const clearCurrentProject = () => {
  return { type: CLEAR_CURRENT };
};

```

### taskActions.js

```js
import axios from 'axios';
import {
  GET_TASKS,
  ADD_TASK,
  DELETE_TASK,
  SET_CURRENT,
  CLEAR_CURRENT,
  TASK_ERROR
} from './types';

// Get Tasks
export const getTasks = () => async dispatch => {
  try {
    const res = await axios.get('/api/tasks');
    dispatch({
      type: GET_TASKS,
      payload: res.data
    });
  } catch (err) {
    dispatch({
      type: TASK_ERROR,
      payload: err.response.msg
    });
  }
};

// Add Task
export const addTask = (task) => async dispatch => {
  const config = {
    headers: {
      'Content-Type': 'application/json'
    }
  };

  try {
    const res = await axios.post('/api/tasks', task, config);
    dispatch({
      type: ADD_TASK,
      payload: res.data
    });
  } catch (err) {
    dispatch({
      type: TASK_ERROR,
      payload: err.response.msg
    });
  }
};

// Delete Task
export const deleteTask = (id) => async dispatch => {
  try {
    await axios.delete(`/api/tasks/${id}`);
    dispatch({
      type: DELETE_TASK,
      payload: id
    });
  } catch (err) {
    dispatch({
      type: TASK_ERROR,
      payload: err.response.msg
    });
  }
};

// Set Current Task
export const setCurrentTask = (task) => {
  return {
    type: SET_CURRENT,
    payload: task
  };
};

// Clear Current Task
export const clearCurrentTask = () => {
  return { type: CLEAR_CURRENT };
};

```

###### routes

### about.js

```js
const express = require('express');
const router = express.Router();
const aboutController = require('../controllers/about');

router.get('/', aboutController.getAll);
router.post('/', aboutController.create);
router.get('/:id', aboutController.getById);
router.put('/:id', aboutController.update);
router.delete('/:id', aboutController.delete);

module.exports = router;

```

### auth.js

```js
const express = require('express');
const router = express.Router();
const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');
const User = require('../models/User');
const auth = require('../middleware/auth');
require('dotenv').config();

// @route   POST api/auth/register
// @desc    Register user
// @access  Public
router.post('/register', async (req, res) => {
  const { name, email, password } = req.body;

  try {
    let user = await User.findOne({ email });
    if (user) {
      return res.status(400).json({ msg: 'User already exists' });
    }

    user = new User({
      name,
      email,
      password,
    });

    const salt = await bcrypt.genSalt(10);
    user.password = await bcrypt.hash(password, salt);

    await user.save();

    const payload = {
      user: {
        id: user.id,
      },
    };

    jwt.sign(
      payload,
      process.env.JWT_SECRET,
      { expiresIn: 3600 },
      (err, token) => {
        if (err) throw err;
        res.json({ token });
      }
    );
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Server error');
  }
});

// @route   POST api/auth/login
// @desc    Authenticate user & get token
// @access  Public
router.post('/login', async (req, res) => {
  const { email, password } = req.body;

  try {
    let user = await User.findOne({ email });
    if (!user) {
      return res.status(400).json({ msg: 'Invalid Credentials' });
    }

    const isMatch = await bcrypt.compare(password, user.password);
    if (!isMatch) {
      return res.status(400).json({ msg: 'Invalid Credentials' });
    }

    const payload = {
      user: {
        id: user.id,
      },
    };

    jwt.sign(
      payload,
      process.env.JWT_SECRET,
      { expiresIn: 3600 },
      (err, token) => {
        if (err) throw err;
        res.json({ token });
      }
    );
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Server error');
  }
});

// @route   GET api/auth/user
// @desc    Get logged in user
// @access  Private
router.get('/user', auth, async (req, res) => {
  try {
    const user = await User.findById(req.user.id).select('-password');
    res.json(user);
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Server Error');
  }
});

module.exports = router;

```

### authRoutes.js

```js
// src/routes/authRoutes.js
const express = require('express');
const jwt = require('jsonwebtoken');
const UserService = require('../models/User');
const rbacMiddleware = require('../middlewares/rbacMiddleware');

const router = express.Router();

router.post('/register', async (req, res) => {
  try {
    const { username, email, password, role } = req.body;
    const user = await UserService.createUser({ username, email, password, role });
    res.status(201).json({ message: 'User registered successfully', user });
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

router.post('/login', async (req, res) => {
  try {
    const { email, password } = req.body;
    const user = await UserService.findUserByEmail(email);
    if (!user || !(await UserService.comparePassword(password, user.password))) {
      return res.status(401).json({ message: 'Invalid credentials' });
    }
    const token = jwt.sign({ userId: user.id, role: user.role }, process.env.JWT_SECRET, { expiresIn: '1d' });
    res.json({ token });
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

// Example of a protected route using RBAC
router.get('/admin-only', rbacMiddleware('admin'), (req, res) => {
  res.json({ message: 'Welcome, admin!' });
});

module.exports = router;

```

### contact.js

```js
const express = require('express');
const router = express.Router();
const contactController = require('../controllers/contact');

router.get('/', contactController.getAll);
router.post('/', contactController.create);
router.get('/:id', contactController.getById);
router.put('/:id', contactController.update);
router.delete('/:id', contactController.delete);

module.exports = router;

```

### docs.js

```js
const express = require('express');
const router = express.Router();
const docsController = require('../controllers/docs');

router.get('/', docsController.getAll);
router.post('/', docsController.create);
router.get('/:id', docsController.getById);
router.put('/:id', docsController.update);
router.delete('/:id', docsController.delete);

module.exports = router;

```

### dynamicApiRoutes.js

```js
// src/routes/dynamicApiRoutes.js
const express = require('express');
const apiGenerationService = require('../services/apiGenerationService');
const dataModelingService = require('../services/dataModelingService');

const router = express.Router();

// Function to set up dynamic routes
const setupDynamicRoutes = async () => {
  try {
    const models = await dataModelingService.getModels();
    models.forEach(model => {
      router.use(`/${model.name.toLowerCase()}`, apiGenerationService.generateAPI(model.name, model.fields));
    });
    console.log('Dynamic API routes set up successfully');
  } catch (error) {
    console.error('Error setting up dynamic API routes:', error);
  }
};

// Set up routes immediately and export the router
setupDynamicRoutes();

module.exports = router;

```

### emailTemplateRoutes.js

```js
const express = require('express');
const EmailService = require('../services/emailService');
const router = express.Router();

router.post('/', async (req, res) => {
  try {
    const template = await EmailService.saveTemplate(req.body);
    res.status(201).json(template);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

router.get('/', async (req, res) => {
  try {
    const templates = await EmailService.getTemplates();
    res.json(templates);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

router.post('/send', async (req, res) => {
  try {
    const { templateName, to, context } = req.body;
    const template = await EmailService.getTemplateByName(templateName);
    if (!template) {
      return res.status(404).json({ message: 'Template not found' });
    }
    await EmailService.sendEmail(to, template.subject, template.body, context);
    res.json({ message: 'Email sent successfully' });
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

module.exports = router;

```

### fileRoutes.js

```js
const express = require('express');
const { upload, FileService } = require('../services/fileService');
const router = express.Router();

router.post('/upload', upload.single('file'), async (req, res) => {
  try {
    const fileData = {
      filename: req.file.key,
      originalname: req.file.originalname,
      mimetype: req.file.mimetype,
      size: req.file.size,
      url: req.file.location,
      uploadedby: req.user.id
    };
    const file = await FileService.saveFile(fileData);
    res.status(201).json(file);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

router.get('/', async (req, res) => {
  try {
    const files = await FileService.getFilesByUser(req.user.id);
    res.json(files);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

module.exports = router;

```

### models.js

```js
const express = require('express');
const router = express.Router();
const DataModelingService = require('../services/dataModelingService');

router.post('/models', async (req, res, next) => {
  try {
    const { name, fields } = req.body;
    await DataModelingService.saveModel({ name, fields });
    res.status(201).json({ message: 'Model saved successfully' });
  } catch (error) {
    next(error);
  }
});

router.get('/models', async (req, res, next) => {
  try {
    const models = await DataModelingService.getModels();
    res.json(models);
  } catch (error) {
    next(error);
  }
});

module.exports = router;

```

### workflowRoutes.js

```js
// src/routes/workflowRoutes.js
const express = require('express');
const WorkflowModel = require('../models/Workflow');
const WorkflowService = require('../services/workflowService');

const router = express.Router();

router.post('/', async (req, res) => {
  try {
    const workflow = await WorkflowModel.createWorkflow(req.body);
    res.status(201).json(workflow);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

router.get('/', async (req, res) => {
  try {
    const workflows = await WorkflowModel.getWorkflows();
    res.json(workflows);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

router.post('/:id/execute', async (req, res) => {
  try {
    const workflow = await WorkflowModel.getWorkflowById(req.params.id);
    if (!workflow) {
      return res.status(404).json({ message: 'Workflow not found' });
    }
    const result = await WorkflowService.executeWorkflow(workflow, req.body);
    res.json(result);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

module.exports = router;

```

###### services

### apiGenerationService.js

```js
// src/services/apiGenerationService.js
const express = require('express');
const { query } = require('../utils/db');

class APIGenerationService {
  generateAPI(modelName, fields) {
    const router = express.Router();

    // Create
    router.post('/', async (req, res) => {
      try {
        const keys = Object.keys(req.body);
        const values = Object.values(req.body);
        const sqlQuery = `INSERT INTO ${modelName} (${keys.join(', ')}) VALUES (${values.map((_, i) => '$' + (i + 1)).join(', ')}) RETURNING *`;
        const result = await query(sqlQuery, values);
        res.status(201).json(result.rows[0]);
      } catch (error) {
        res.status(400).json({ error: error.message });
      }
    });

    // Read all
    router.get('/', async (req, res) => {
      try {
        const result = await query(`SELECT * FROM ${modelName}`);
        res.json(result.rows);
      } catch (error) {
        res.status(500).json({ error: error.message });
      }
    });

    // Read one
    router.get('/:id', async (req, res) => {
      try {
        const result = await query(`SELECT * FROM ${modelName} WHERE id = $1`, [req.params.id]);
        if (result.rows.length === 0) return res.status(404).json({ message: 'Document not found' });
        res.json(result.rows[0]);
      } catch (error) {
        res.status(500).json({ error: error.message });
      }
    });

    // Update
    router.put('/:id', async (req, res) => {
      try {
        const keys = Object.keys(req.body);
        const values = Object.values(req.body);
        const sqlQuery = `UPDATE ${modelName} SET ${keys.map((key, i) => `${key} = $${i + 1}`).join(', ')} WHERE id = $${keys.length + 1} RETURNING *`;
        const result = await query(sqlQuery, [...values, req.params.id]);
        if (result.rows.length === 0) return res.status(404).json({ message: 'Document not found' });
        res.json(result.rows[0]);
      } catch (error) {
        res.status(400).json({ error: error.message });
      }
    });

    // Delete
    router.delete('/:id', async (req, res) => {
      try {
        const result = await query(`DELETE FROM ${modelName} WHERE id = $1 RETURNING *`, [req.params.id]);
        if (result.rows.length === 0) return res.status(404).json({ message: 'Document not found' });
        res.json({ message: 'Document deleted successfully' });
      } catch (error) {
        res.status(500).json({ error: error.message });
      }
    });

    return router;
  }
}

module.exports = new APIGenerationService();

```

### emailService.js

```js
const nodemailer = require('nodemailer');
const handlebars = require('handlebars');
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

class EmailService {
  constructor() {
    this.transporter = nodemailer.createTransport({
      host: process.env.SMTP_HOST,
      port: process.env.SMTP_PORT,
      auth: {
        user: process.env.SMTP_USER,
        pass: process.env.SMTP_PASS
      }
    });
  }

  async sendEmail(to, subject, template, context) {
    const compiledTemplate = handlebars.compile(template);
    const html = compiledTemplate(context);

    const mailOptions = {
      from: process.env.EMAIL_FROM,
      to,
      subject,
      html
    };

    await this.transporter.sendMail(mailOptions);
  }

  async saveTemplate(templateData) {
    const query = 'INSERT INTO email_templates(name, subject, body) VALUES($1, $2, $3) RETURNING *';
    const values = [templateData.name, templateData.subject, templateData.body];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getTemplates() {
    const result = await pool.query('SELECT * FROM email_templates');
    return result.rows;
  }

  async getTemplateByName(name) {
    const result = await pool.query('SELECT * FROM email_templates WHERE name = $1', [name]);
    return result.rows[0];
  }
}

module.exports = new EmailService();

```

### fileService.js

```js
const aws = require('aws-sdk');
const multer = require('multer');
const multerS3 = require('multer-s3');
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

aws.config.update({
  secretAccessKey: process.env.AWS_SECRET_ACCESS_KEY,
  accessKeyId: process.env.AWS_ACCESS_KEY_ID,
  region: process.env.AWS_REGION
});

const s3 = new aws.S3();

const upload = multer({
  storage: multerS3({
    s3: s3,
    bucket: process.env.S3_BUCKET,
    acl: 'public-read',
    metadata: function (req, file, cb) {
      cb(null, {fieldName: file.fieldname});
    },
    key: function (req, file, cb) {
      cb(null, Date.now().toString() + '-' + file.originalname)
    }
  })
});

class FileService {
  async saveFile(fileData) {
    const query = 'INSERT INTO files(filename, originalname, mimetype, size, url, uploadedby) VALUES($1, $2, $3, $4, $5, $6) RETURNING *';
    const values = [fileData.filename, fileData.originalname, fileData.mimetype, fileData.size, fileData.url, fileData.uploadedby];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getFilesByUser(userId) {
    const query = 'SELECT * FROM files WHERE uploadedby = $1';
    const result = await pool.query(query, [userId]);
    return result.rows;
  }
}

module.exports = { upload, FileService: new FileService() };

```

### workflowService.js

```js
// src/services/workflowService.js
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});
const axios = require('axios');

class WorkflowService {
  async executeWorkflow(workflowDefinition, triggerData) {
    let currentData = triggerData;

    for (const step of workflowDefinition.steps) {
      currentData = await this.executeStep(step, currentData);
    }

    return currentData;
  }

  async executeStep(step, data) {
    switch (step.type) {
      case 'transform':
        return this.transformData(step.transformation, data);
      case 'apiCall':
        return this.makeAPICall(step.apiDetails, data);
      case 'condition':
        return this.evaluateCondition(step.condition, data) ? data : null;
      default:
        throw new Error(`Unknown step type: ${step.type}`);
    }
  }

  transformData(transformation, data) {
    const result = {};
    for (const [key, value] of Object.entries(transformation)) {
      result[key] = value.split('.').reduce((o, i) => o[i], data);
    }
    return result;
  }

  async makeAPICall(apiDetails, data) {
    const { url, method, body } = apiDetails;
    const response = await axios({ method, url, data: body });
    return response.data;
  }

  evaluateCondition(condition, data) {
    const { left, operator, right } = condition;
    const leftValue = left.split('.').reduce((o, i) => o[i], data);
    switch (operator) {
      case '==':
        return leftValue == right;
      case '!=':
        return leftValue != right;
      case '>':
        return leftValue > right;
      case '<':
        return leftValue < right;
      default:
        throw new Error(`Unknown operator: ${operator}`);
    }
  }
}

module.exports = new WorkflowService();

```

###### utils

### apiResponse.js

```js
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

```

##### tests

###### integration

### api.test.js

```js
const request = require('supertest');
const app = require('../../src/app');

describe('API Tests', () => {
  it('should return 200 OK for GET /', async () => {
    const res = await request(app).get('/');
    expect(res.statusCode).toBe(200);
  });
});

```

###### unit

### sample.test.js

```js
describe('Sample Test', () => {
  it('should pass', () => {
    expect(true).toBe(true);
  });
});

```

## shared-utils

### generate-project-readme.js

```js
// utils/generate-project-readme.js
const fs = require('fs');
const path = require('path');

const excludeExtensions = ['.pkl', '.png', '.jpg', '.jpeg', '.svg', '.ico', '.txt'];
const excludeDirectories = ['node_modules', '.git', '.github', '.vscode', 'venv', '.bak', 'docs'];
const excludeFiles = ['package-lock.json'];

function log(message) {
    console.log(`[DEBUG]: ${message}`);
}

function generateReadmeForDirectory(directoryPath, directoryName, depth = 0) {
    let readmeContent = `${'#'.repeat(depth + 1)} ${directoryName}\n\n`;

    const files = fs.readdirSync(directoryPath);
    files.forEach(file => {
        const filePath = path.join(directoryPath, file);
        const stat = fs.statSync(filePath);

        if (stat.isDirectory()) {
            if (!excludeDirectories.includes(file)) {
                log(`Including directory: ${file}`);
                readmeContent += generateReadmeForDirectory(filePath, file, depth + 1);
            } else {
                log(`Excluding directory: ${file}`);
            }
        } else if (stat.isFile()) {
            if (file === 'package.json' || (!excludeFiles.includes(file) && !excludeExtensions.includes(path.extname(file)))) {
                log(`Including file: ${file}`);
                readmeContent += `### ${file}\n\n`;
                readmeContent += '```' + path.extname(file).slice(1) + '\n';
                readmeContent += fs.readFileSync(filePath, 'utf-8') + '\n';
                readmeContent += '```\n\n';
            } else {
                log(`Excluding file: ${file}`);
            }
        }
    });

    return readmeContent;
}

const rootDirs = ['/Node'];
let fullReadmeContent = '# Project Documentation\n\n';

rootDirs.forEach(dir => {
    fullReadmeContent += generateReadmeForDirectory(dir, path.basename(dir));
});

fs.writeFileSync(path.join('/Node/utils', 'FULL_README.md'), fullReadmeContent);
console.log('/Node/utils/FULL_README.md generated successfully.');

```

### generate-tree.js

```js
// utils/generate-tree.js
const fs = require('fs');
const path = require('path');

const outputFile = '/Node/utils/FULL_PROJECT_TREE.txt';
const excludeDirs = ['node_modules', '.git', '.vscode', 'venv', '.github', '.bak'];
const rootDirs = ['/Node'];

function generateStructure(dirPath, prefix = '') {
    const files = fs.readdirSync(dirPath);
    let treeContent = '';
    files.forEach((file, index) => {
        const filePath = path.join(dirPath, file);
        const stats = fs.statSync(filePath);
        const isLast = index === files.length - 1;
        const newPrefix = prefix + (isLast ? '└── ' : '├── ');

        if (!excludeDirs.includes(file)) {
            treeContent += `${prefix}${newPrefix}${file}\n`;
            if (stats.isDirectory()) {
                treeContent += generateStructure(filePath, prefix + (isLast ? '    ' : '│   '));
            }
        }
    });
    return treeContent;
}

let fullTreeContent = 'Project Structure:\n';

rootDirs.forEach(dir => {
    fullTreeContent += `\n${path.basename(dir)}/\n`;
    fullTreeContent += generateStructure(dir);
});

fs.writeFileSync(outputFile, fullTreeContent);
console.log(`Full project tree generated: ${outputFile}`);

```

### package.json

```json
{
  "name": "shared-utils",
  "version": "1.0.0",
  "main": "generate-project-readme.js",
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "keywords": [],
  "author": "",
  "license": "ISC",
  "description": ""
}

```

## utils

### continue-master-setup.sh

```sh
#!/bin/bash
# continue-master-setup.sh

set -euo pipefail

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

project_name=$1
log "$project_name"

# Parse command line options
verbose=false
while getopts "v" opt; do
  case $opt in
    v) verbose=true ;;
    *) echo "Usage: $0 [-v] <project-name>"; exit 1 ;;
  esac
done
shift $((OPTIND-1))

if $verbose; then
  set -x
fi

if [ -z "$project_name" ]; then
  echo "Usage: $0 [-v] <project-name>"
  exit 1
fi

project_dir="/d/Node/projects/$project_name"
utils_dir="/d/Node/utils"

run_script() {
  local script=$1
  shift
  log "Running $script..."
  if [ -f "$utils_dir/$script" ]; then
    if ! "$utils_dir/$script" "$@"; then
      error_exit "Script $script failed. Stopping setup."
    fi
  else
    log "Warning: $script not found. Skipping..."
  fi
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

cleanup() {
  log "Setup interrupted. Cleaning up..."
  # Add cleanup actions here
  # For example, you might want to remove partially created directories
  # rm -rf "$project_dir"
}

trap cleanup EXIT

# Client setup
run_script setup-redux.sh "$project_dir"
# Server setup
read -s -p "Enter PostgreSQL password for ${project_name}_user: " db_password
echo
run_script setup-postgresql.sh "$project_name" "${project_name}_user" "$db_password"
run_script setup-auth.sh "$project_name"
run_script run-migrations.sh "$project_name" "${project_name}_user" "$db_password"
run_script enhance-error-handling.sh "$project_name"

# API Route setup
read -p "Do you want to create an API route? (y/n) " create_route
if [[ $create_route =~ ^[Yy]$ ]]; then
  read -p "Enter the route name: " route_name
  run_script create-api-route.sh "$project_name" "$route_name"
fi

# Noloco-like functionality setup
read -p "Do you want to set up Noloco-like functionalities? (y/n) " setup_noloco
if [[ $setup_noloco =~ ^[Yy]$ ]]; then
  run_script setup-data-modeling.sh "$project_dir"
  run_script setup-api-generation.sh "$project_dir"
  run_script setup-rbac.sh "$project_dir"
  run_script setup-workflows.sh "$project_dir"
  run_script setup-dynamic-ui.sh "$project_dir"
  run_script setup-file-management.sh "$project_dir"
  run_script setup-email-templates.sh "$project_dir"
  run_script setup-dashboard.sh "$project_dir"
  run_script setup-noloco-theme.sh "$project_dir" "both"
fi

log "Project setup complete."
echo "Project $project_name has been set up successfully!"

# Remove the trap before exiting normally
trap - EXIT

```

### create-api-route.sh

```sh
#!/bin/bash

# create-api-route.sh
# Usage: create-api-route.sh <project-name> <route-name>
# Description: Creates a new API route with controller and model for PostgreSQL

set -euo pipefail

if [ $# -ne 2 ]; then
    echo "Usage: $0 <project-name> <route-name>"
    exit 1
fi

project_name=$1
route_name=$2

project_dir="/d/Node/projects/$project_name"
src_dir="$project_dir/server/src"
routes_dir="$src_dir/routes"
controllers_dir="$src_dir/controllers"
models_dir="$src_dir/models"

# Ensure directories exist
mkdir -p "$routes_dir" "$controllers_dir" "$models_dir"

# Create route file
cat << EOF > "$routes_dir/${route_name}.js"
const express = require('express');
const router = express.Router();
const ${route_name}Controller = require('../controllers/${route_name}');

router.get('/', ${route_name}Controller.getAll);
router.post('/', ${route_name}Controller.create);
router.get('/:id', ${route_name}Controller.getById);
router.put('/:id', ${route_name}Controller.update);
router.delete('/:id', ${route_name}Controller.delete);

module.exports = router;
EOF

# Create controller file
cat << EOF > "$controllers_dir/${route_name}.js"
const ${route_name}Model = require('../models/${route_name}');

exports.getAll = async (req, res) => {
  try {
    const items = await ${route_name}Model.findAll();
    res.json(items);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

exports.create = async (req, res) => {
  try {
    const newItem = await ${route_name}Model.create(req.body);
    res.status(201).json(newItem);
  } catch (error) {
    res.status(400).json({ message: error.message });
  }
};

exports.getById = async (req, res) => {
  try {
    const item = await ${route_name}Model.findByPk(req.params.id);
    if (!item) {
      return res.status(404).json({ message: 'Item not found' });
    }
    res.json(item);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

exports.update = async (req, res) => {
  try {
    const [updated] = await ${route_name}Model.update(req.body, {
      where: { id: req.params.id }
    });
    if (updated) {
      const updatedItem = await ${route_name}Model.findByPk(req.params.id);
      res.json(updatedItem);
    } else {
      res.status(404).json({ message: 'Item not found' });
    }
  } catch (error) {
    res.status(400).json({ message: error.message });
  }
};

exports.delete = async (req, res) => {
  try {
    const deleted = await ${route_name}Model.destroy({
      where: { id: req.params.id }
    });
    if (deleted) {
      res.json({ message: 'Item deleted' });
    } else {
      res.status(404).json({ message: 'Item not found' });
    }
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};
EOF

# Create model file
cat << EOF > "$models_dir/${route_name}.js"
const { DataTypes } = require('sequelize');
const sequelize = require('../config/database');

const ${route_name} = sequelize.define('${route_name}', {
  // Define your model fields here
  name: {
    type: DataTypes.STRING,
    allowNull: false
  },
  // Add more fields as needed
});

module.exports = ${route_name};
EOF

echo "API route, controller, and model for $route_name created successfully in $project_name"

```

### generate-api-service.sh

```sh
#!/bin/bash
# generate-api-service.sh

set -euo pipefail

project_dir="$1"
api_name="$2"

if [ -z "$project_dir" ] || [ -z "$api_name" ]; then
  echo "Usage: $0 <project-dir> <api-name>"
  exit 1
fi

client_dir="$project_dir/client"
cd "$client_dir" || exit 1

mkdir -p src/services

cat << EOF > "src/services/${api_name}Service.js"
import axios from 'axios';

const API_BASE_URL = process.env.REACT_APP_API_BASE_URL || 'http://localhost:3000/api';

const ${api_name}Service = {
  // Previous methods remain the same

  // Add a new method for handling file uploads
  upload: async (endpoint, file, onUploadProgress) => {
    const formData = new FormData();
    formData.append('file', file);

    try {
      const response = await axios.post(\`\${API_BASE_URL}/\${endpoint}\`, formData, {
        headers: {
          'Content-Type': 'multipart/form-data'
        },
        onUploadProgress
      });
      return response.data;
    } catch (error) {
      console.error('Error uploading file:', error);
      throw error;
    }
  },

  // Add a method for cancellable requests
  getCancellable: (endpoint) => {
    const source = axios.CancelToken.source();
    const promise = axios.get(\`\${API_BASE_URL}/\${endpoint}\`, {
      cancelToken: source.token
    });
    return { promise, cancel: () => source.cancel('Request cancelled') };
  }
};

export default ${api_name}Service;
EOF

echo "Enhanced API service ${api_name}Service created in $client_dir/src/services"

```

### generate-config.sh

```sh
#!/bin/bash
# generate-config.sh

project_dir="$1"
config_type="$2"

if [ -z "$project_dir" ] || [ -z "$config_type" ]; then
  echo "Usage: $0 <project-dir> <config-type>"
  echo "Config types: webpack, babel, tsconfig"
  exit 1
fi

client_dir="$project_dir/client"
# cd "$client_dir"

case "$config_type" in
  webpack)
    cat << EOF > "$client_dir/webpack.config.js"
const path = require('path');
const HtmlWebpackPlugin = require('html-webpack-plugin');
const MiniCssExtractPlugin = require('mini-css-extract-plugin');

module.exports = {
  entry: './src/index.js',
  output: {
    path: path.resolve(__dirname, 'dist'),
    filename: '[name].[contenthash].js',
    clean: true,
  },
  module: {
    rules: [
      {
        test: /\.(js|jsx)$/,
        exclude: /node_modules/,
        use: {
          loader: 'babel-loader',
        },
      },
      {
        test: /\.(scss|css)$/,
        use: [MiniCssExtractPlugin.loader, 'css-loader', 'sass-loader'],
      },
    ],
  },
  plugins: [
    new HtmlWebpackPlugin({
      template: './public/index.html',
    }),
    new MiniCssExtractPlugin({
      filename: '[name].[contenthash].css',
    }),
  ],
  devServer: {
    static: path.join(__dirname, 'dist'),
    port: 3000,
    hot: true,
  },
  optimization: {
    moduleIds: 'deterministic',
    runtimeChunk: 'single',
    splitChunks: {
      cacheGroups: {
        vendor: {
          test: /[\\/]node_modules[\\/]/,
          name: 'vendors',
          chunks: 'all',
        },
      },
    },
  },
};
EOF
    echo "Webpack config generated in $client_dir"
    ;;
  babel)
    cat << EOF > "$client_dir/.babelrc"
{
  "presets": [
    ["@babel/preset-env", {
      "targets": {
        "browsers": [">0.25%", "not ie 11", "not op_mini all"]
      }
    }],
    "@babel/preset-react"
  ],
  "plugins": [
    "@babel/plugin-proposal-class-properties",
    "@babel/plugin-transform-runtime"
  ]
}
EOF
    echo "Babel config generated in $client_dir"
    ;;
  tsconfig)
    cat << EOF > "$client_dir/tsconfig.json"
{
  "compilerOptions": {
    "target": "es5",
    "lib": ["dom", "dom.iterable", "esnext"],
    "allowJs": true,
    "skipLibCheck": true,
    "esModuleInterop": true,
    "allowSyntheticDefaultImports": true,
    "strict": true,
    "forceConsistentCasingInFileNames": true,
    "module": "esnext",
    "moduleResolution": "node",
    "resolveJsonModule": true,
    "isolatedModules": true,
    "noEmit": true,
    "jsx": "react-jsx",
    "baseUrl": "src"
  },
  "include": ["src"]
}
EOF
    echo "TypeScript config generated in $client_dir"
    ;;
  *)
    echo "Invalid config type. Choose 'webpack', 'babel', or 'tsconfig'."
    exit 1
    ;;
esac

```

### generate-layout.sh

```sh
#!/bin/bash
# generate-layout.sh

project_dir="$1"
layout_type="$2"

if [ -z "$project_dir" ] || [ -z "$layout_type" ]; then
  echo "Usage: $0 <project-dir> <layout-type>"
  echo "Layout types: dashboard, landing"
  exit 1
fi

client_dir="$project_dir/client"
# cd "$client_dir"

mkdir -p "$client_dir/src/layouts"

generate_layout() {
  local name="$1"
  local file="$client_dir/src/layouts/${name}Layout.js"

  cat << EOF > "$file"
import React from 'react';
import styled from 'styled-components';

const ${name}Wrapper = styled.div\`
  display: flex;
  flex-direction: column;
  min-height: 100vh;
\`;

const Header = styled.header\`
  padding: 1rem;
  background-color: \${({ theme }) => theme.colors.background};
\`;

const Main = styled.main\`
  flex: 1;
  padding: 1rem;
\`;

const Footer = styled.footer\`
  padding: 1rem;
  background-color: \${({ theme }) => theme.colors.background};
\`;

const ${name}Layout = ({ children }) => (
  <${name}Wrapper>
    <Header>Header</Header>
    <Main>{children}</Main>
    <Footer>Footer</Footer>
  </${name}Wrapper>
);

export default ${name}Layout;
EOF

  echo "${name} layout generated in $file"
}

case "$layout_type" in
  dashboard)
    generate_layout "Dashboard"
    ;;
  landing)
    generate_layout "Landing"
    ;;
  *)
    echo "Invalid layout type. Choose 'dashboard' or 'landing'."
    exit 1
    ;;
esac

```

### generate-tests.sh

```sh
#!/bin/bash
# generate-tests.sh

set -e

project_name=$1

if [ -z "$project_name" ]; then
    echo "Usage: $0 <project-name>"
    exit 1
fi

project_dir="/d/Node/projects/$project_name"
tests_dir="$project_dir/server/tests"

echo "Creating test/unit and test/integration directories..."
mkdir -p "$tests_dir/unit" "$tests_dir/integration"

# Generate a sample unit test
cat << EOF > "$tests_dir/unit/sample.test.js"
describe('Sample Test', () => {
  it('should pass', () => {
    expect(true).toBe(true);
  });
});
EOF

# Generate a sample integration test
cat << EOF > "$tests_dir/integration/api.test.js"
const request = require('supertest');
const app = require('../../src/app');

describe('API Tests', () => {
  it('should return 200 OK for GET /', async () => {
    const res = await request(app).get('/');
    expect(res.statusCode).toBe(200);
  });
});
EOF

echo "Sample tests generated in $tests_dir"

```

### init-git.sh

```sh
#!/bin/bash
# init-git.sh
# Usage: ./init-git.sh <project-name>

project_name=$1
project_dir="/d/Node/projects/$project_name"

cd "$project_dir"

# Initialize Git
git init

# Create .gitignore
cat << EOF > .gitignore
# Dependencies
node_modules/
/.pnp
.pnp.js

# Testing
/coverage

# Production
/build

# Misc
.DS_Store
.env.local
.env.development.local
.env.test.local
.env.production.local

# Logs
npm-debug.log*
yarn-debug.log*
yarn-error.log*

# Environment variables
.env

# IDE specific files
.idea/
.vscode/
*.swp
*.swo

# Operating System Files
.DS_Store
.DS_Store?
._*
.Spotlight-V100
.Trashes
ehthumbs.db
Thumbs.db

# Optional npm cache directory
.npm

# Optional eslint cache
.eslintcache

# Optional REPL history
.node_repl_history

# Output of 'npm pack'
*.tgz

# Yarn Integrity file
.yarn-integrity

# dotenv environment variables file
.env
EOF

git add .
git commit -m "Initial commit"

echo "Git initialized with .gitignore for $project_name"

```

### js-utils

### generate-ai-tools.js

```js
// generate-ai-tools.js
const generateAITools = () => {
    const aiTools = [
      {
        name: 'SmartContractGenerator',
        description: 'AI-powered contract generation based on project details'
      },
      {
        name: 'AutomaticTimeTracker',
        description: 'AI-driven time tracking using computer vision and activity monitoring'
      },
      {
        name: 'IntelligentInvoicing',
        description: 'Automated invoice creation with smart line item suggestions'
      },
      {
        name: 'PredictiveAnalytics',
        description: 'AI-powered forecasting for project timelines and budgets'
      },
      {
        name: 'ClientInsightEngine',
        description: 'AI analysis of client interactions for relationship management'
      },
      {
        name: 'NLPFormProcessor',
        description: 'Natural Language Processing for form creation and analysis'
      },
      {
        name: 'AutomatedBookkeeper',
        description: 'AI-driven categorization and reconciliation of financial transactions'
      },
      {
        name: 'TaskPrioritizer',
        description: 'AI-powered task prioritization and scheduling optimization'
      },
      {
        name: 'ProjectOptimizer',
        description: 'Machine learning-based project timeline and resource allocation'
      },
      {
        name: 'SentimentAnalyzer',
        description: 'AI-driven analysis of client communication for sentiment insights'
      }
    ];

    aiTools.forEach(tool => {
      generateAIToolFile(tool.name, tool.description);
    });
  };

  const generateAIToolFile = (name, description) => {
    // Generate AI tool integration file
    // Include necessary API calls and data processing logic
    // Save to appropriate directory
  };

  generateAITools();

```

### generate-charts.js

```js
// generate-charts.js
const generateCharts = () => {
    const charts = [
      {
        name: 'RevenueOverTime',
        type: 'LineChart',
        data: 'invoices'
      },
      {
        name: 'ProjectStatus',
        type: 'PieChart',
        data: 'projects'
      },
      {
        name: 'TimeAllocation',
        type: 'BarChart',
        data: 'timeEntries'
      },
      {
        name: 'ExpenseCategories',
        type: 'DoughnutChart',
        data: 'expenses'
      },
      {
        name: 'ClientAcquisition',
        type: 'FunnelChart',
        data: 'clients'
      },
      {
        name: 'TaskCompletion',
        type: 'GanttChart',
        data: 'tasks'
      }
    ];

    charts.forEach(chart => {
      generateChartComponent(chart.name, chart.type, chart.data);
    });
  };

  const generateChartComponent = (name, type, data) => {
    // Generate React component for the chart
    // Include data fetching and processing logic
    // Integrate with a charting library (e.g., Chart.js, D3.js)
    // Save to appropriate directory
  };

  generateCharts();

```

### generate-components.js

```js
// generate-components.js
const generateComponents = () => {
    const components = [
      'Dashboard',
      'ProjectList',
      'ProjectDetails',
      'TaskBoard',
      'TimeTracker',
      'InvoiceGenerator',
      'ProposalBuilder',
      'ContractEditor',
      'ClientPortal',
      'FormBuilder',
      'ExpenseTracker',
      'ReportingDashboard',
      'AIInsights'
    ];

    components.forEach(component => {
      generateComponentFile(component);
    });
  };

  const generateComponentFile = (name) => {
    // Generate React component with basic structure
    // Include AI integration where applicable
    // Save to appropriate directory
  };

  generateComponents();

```

### generate-forms-templates.js

```js
// generate-forms-templates.js
const generateFormsAndTemplates = () => {
    const items = [
      {
        type: 'form',
        name: 'ClientOnboarding'
      },
      {
        type: 'form',
        name: 'ProjectFeedback'
      },
      {
        type: 'template',
        name: 'InvoiceTemplate'
      },
      {
        type: 'template',
        name: 'ProposalTemplate'
      },
      {
        type: 'template',
        name: 'ContractTemplate'
      },
      {
        type: 'template',
        name: 'ProjectBrief'
      }
    ];

    items.forEach(item => {
      if (item.type === 'form') {
        generateFormBuilder(item.name);
      } else {
        generateTemplateBuilder(item.name);
      }
    });
  };

  const generateFormBuilder = (name) => {
    // Generate dynamic form builder component
    // Include drag-and-drop functionality
    // Save to appropriate directory
  };

  const generateTemplateBuilder = (name) => {
    // Generate template builder with customizable sections
    // Include placeholder system for dynamic content
    // Save to appropriate directory
  };

  generateFormsAndTemplates();

```

### generate-mock-data.js

```js
// generate-mock-data.js
const fs = require('fs');
const path = require('path');

function generateMockData(projectName, dataType, count) {
  const projectDir = path.join('/d/Node/projects', projectName, 'src/mockData');

  if (!fs.existsSync(projectDir)) {
    fs.mkdirSync(projectDir, { recursive: true });
  }

  let data;

  switch (dataType) {
    case 'users':
      data = generateUsers(count);
      break;
    case 'products':
      data = generateProducts(count);
      break;
    case 'orders':
      data = generateOrders(count);
      break;
    default:
      console.error('Invalid data type');
      return;
  }

  fs.writeFileSync(path.join(projectDir, `${dataType}.json`), JSON.stringify(data, null, 2));
  console.log(`Mock ${dataType} data generated successfully.`);
}

function generateUsers(count) {
  return Array.from({ length: count }, (_, i) => ({
    id: i + 1,
    name: `User ${i + 1}`,
    email: `user${i + 1}@example.com`,
    age: Math.floor(Math.random() * 50) + 18
  }));
}

function generateProducts(count) {
  return Array.from({ length: count }, (_, i) => ({
    id: i + 1,
    name: `Product ${i + 1}`,
    price: parseFloat((Math.random() * 100).toFixed(2)),
    category: ['Electronics', 'Clothing', 'Books', 'Food'][Math.floor(Math.random() * 4)]
  }));
}

function generateOrders(count) {
  return Array.from({ length: count }, (_, i) => ({
    id: i + 1,
    userId: Math.floor(Math.random() * 100) + 1,
    products: Array.from({ length: Math.floor(Math.random() * 5) + 1 }, () => ({
      productId: Math.floor(Math.random() * 100) + 1,
      quantity: Math.floor(Math.random() * 5) + 1
    })),
    totalAmount: parseFloat((Math.random() * 500).toFixed(2)),
    date: new Date(Date.now() - Math.floor(Math.random() * 10000000000)).toISOString()
  }));
}

// Usage
const [,, projectName, dataType, count] = process.argv;
generateMockData(projectName, dataType, parseInt(count) || 10);

```

### generate-models.js

```js
// generate-models.js
const generateModels = () => {
    const models = [
      {
        name: 'User',
        fields: ['name', 'email', 'password', 'role']
      },
      {
        name: 'Client',
        fields: ['name', 'email', 'company', 'projects']
      },
      {
        name: 'Project',
        fields: ['name', 'description', 'client', 'tasks', 'timeline', 'budget']
      },
      {
        name: 'Task',
        fields: ['name', 'description', 'project', 'assignee', 'status', 'dueDate']
      },
      {
        name: 'TimeEntry',
        fields: ['user', 'project', 'task', 'duration', 'date']
      },
      {
        name: 'Invoice',
        fields: ['client', 'project', 'items', 'total', 'status', 'dueDate']
      },
      {
        name: 'Proposal',
        fields: ['client', 'project', 'content', 'status', 'expiryDate']
      },
      {
        name: 'Contract',
        fields: ['client', 'project', 'content', 'status', 'signatureDate']
      },
      {
        name: 'Form',
        fields: ['name', 'fields', 'responses']
      },
      {
        name: 'Expense',
        fields: ['user', 'project', 'amount', 'category', 'date']
      }
    ];

    models.forEach(model => {
      generateModelFile(model.name, model.fields);
    });
  };

  const generateModelFile = (name, fields) => {
    // Generate Mongoose schema and model
    // Save to appropriate directory
  };

  generateModels();

```

### generate-readme.js

```js
// utils/generate-project-readme.js
//Purpose: Generate comprehensive documentation for each directory.
const fs = require('fs');
const path = require('path');

// Define directories and files to exclude
const excludeExtensions = ['.pkl', '.png', '.jpg', '.jpeg', '.svg', '.ico', '.txt'];
const excludeDirectories = ['node_modules', 'docs', '.git', '.github', '.vscode', 'venv', 'docs'];
const excludeFiles = ['package-lock.json'];

// Logging function for debugging
function log(message) {
    console.log(`[DEBUG]: ${message}`);
}

// Function to generate README content for a directory
function generateReadmeForDirectory(directoryPath, directoryName) {
    let readmeContent = `# Directory: ${directoryName}\n\n`;

    const files = fs.readdirSync(directoryPath);
    files.forEach(file => {
        const filePath = path.join(directoryPath, file);
        const stat = fs.statSync(filePath);

        // Exclude unnecessary directories and files
        if (stat.isDirectory()) {
            if (!excludeDirectories.includes(file)) {
                log(`Including directory: ${file}`);
                readmeContent += generateReadmeForDirectory(filePath, file);
            } else {
                log(`Excluding directory: ${file}`);
            }
        } else if (stat.isFile()) {
            if (file === 'package.json' || (!excludeFiles.includes(file) && !excludeExtensions.includes(path.extname(file)))) {
                log(`Including file: ${file}`);
                readmeContent += `## File: ${file}\n\n`;
                readmeContent += fs.readFileSync(filePath, 'utf-8') + '\n\n';
            } else {
                log(`Excluding file: ${file}`);
            }
        }
    });

    return readmeContent;
}

// Generate README for the project root
const projectRoot = path.join(__dirname, '.');
const readmeContent = generateReadmeForDirectory(projectRoot, 'Project Root');

// Write the generated README to a file
fs.writeFileSync(path.join(projectRoot, './README.txt'), readmeContent);
console.log('README.txt generated successfully.');

```

### generate-routes.js

```js
// generate-routes.js
const generateRoutes = () => {
    const routes = [
      { path: '/api/users', methods: ['GET', 'POST', 'PUT', 'DELETE'] },
      { path: '/api/clients', methods: ['GET', 'POST', 'PUT', 'DELETE'] },
      { path: '/api/projects', methods: ['GET', 'POST', 'PUT', 'DELETE'] },
      { path: '/api/tasks', methods: ['GET', 'POST', 'PUT', 'DELETE'] },
      { path: '/api/time-entries', methods: ['GET', 'POST', 'PUT', 'DELETE'] },
      { path: '/api/invoices', methods: ['GET', 'POST', 'PUT', 'DELETE'] },
      { path: '/api/proposals', methods: ['GET', 'POST', 'PUT', 'DELETE'] },
      { path: '/api/contracts', methods: ['GET', 'POST', 'PUT', 'DELETE'] },
      { path: '/api/forms', methods: ['GET', 'POST', 'PUT', 'DELETE'] },
      { path: '/api/expenses', methods: ['GET', 'POST', 'PUT', 'DELETE'] },
      { path: '/api/reports', methods: ['GET'] },
      { path: '/api/ai-insights', methods: ['GET'] }
    ];

    routes.forEach(route => {
      generateRouteFile(route.path, route.methods);
    });
  };

  const generateRouteFile = (path, methods) => {
    // Generate Express.js route file with CRUD operations
    // Include input validation and error handling
    // Save to appropriate directory
  };

  generateRoutes();

```

### master-setup.sh

```sh
#!/bin/bash
# master-setup.sh

set -euo pipefail

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

project_name=$1
log "$project_name"

# Parse command line options
verbose=false
while getopts "v" opt; do
  case $opt in
    v) verbose=true ;;
    *) echo "Usage: $0 [-v] <project-name>"; exit 1 ;;
  esac
done
shift $((OPTIND-1))

if $verbose; then
  set -x
fi

if [ -z "$project_name" ]; then
  echo "Usage: $0 [-v] <project-name>"
  exit 1
fi

project_dir="/d/Node/projects/$project_name"
log "$project_dir"
utils_dir="/d/Node/utils"

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

run_script() {
  local script=$1
  shift
  log "Running $script..."
  if [ -f "$utils_dir/$script" ]; then
    if ! "$utils_dir/$script" "$@"; then
      error_exit "Script $script failed. Stopping setup."
    fi
  else
    log "Warning: $script not found. Skipping..."
  fi
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

cleanup() {
  log "Setup interrupted. Cleaning up..."
  # Add cleanup actions here
  # For example, you might want to remove partially created directories
  # rm -rf "$project_dir"
}

trap cleanup EXIT

# Create project directory
mkdir -p "$project_dir"
cd "$project_dir"

# Core setup
run_script setup-project.sh "$project_name"
run_script set-configs.sh "$project_dir" "$project_name"
run_script generate-tests.sh "$project_name"
run_script init-git.sh "$project_name"

# Client setup
run_script setup-sass.sh "$project_dir"
run_script setup-styled-components.sh "$project_dir"
run_script setup-redux.sh "$project_dir"
run_script setup-redux-actions.sh "$project_name"
run_script generate-config.sh "$project_dir" webpack
run_script generate-config.sh "$project_dir" babel
run_script generate-config.sh "$project_dir" tsconfig
run_script generate-layout.sh "$project_dir" dashboard
run_script setup-state-management.sh "$project_dir" redux
run_script generate-api-service.sh "$project_dir" api
run_script setup-responsive-design.sh "$project_dir"
run_script setup-accessibility.sh "$project_dir"
run_script setup-performance-optimization.sh "$project_dir"

# Optional Client setups
read -p "Do you want to set up animations with Framer Motion? (y/n) " setup_animation
if [[ $setup_animation =~ ^[Yy]$ ]]; then
  run_script setup-animation.sh "$project_dir" framer-motion
fi

read -p "Do you want to set up internationalization (i18n)? (y/n) " setup_i18n
if [[ $setup_i18n =~ ^[Yy]$ ]]; then
  run_script setup-i18n.sh "$project_dir"
fi

read -p "Do you want to set up SEO? (y/n) " setup_seo
if [[ $setup_seo =~ ^[Yy]$ ]]; then
  run_script setup-seo.sh "$project_dir"
fi

read -p "Do you want to set up as a Progressive Web App (PWA)? (y/n) " setup_pwa
if [[ $setup_pwa =~ ^[Yy]$ ]]; then
  run_script setup-pwa.sh "$project_dir"
fi

read -p "Do you want to set up component documentation? (y/n) " setup_component_docs
if [[ $setup_component_docs =~ ^[Yy]$ ]]; then
  run_script setup-component-docs.sh "$project_dir"
fi

# Server setup
read -s -p "Enter PostgreSQL password for ${project_name}_user: " db_password
echo
run_script setup-postgresql.sh "$project_name" "${project_name}_user" "$db_password"
run_script setup-auth.sh "$project_name"
run_script run-migrations.sh "$project_name"

# Noloco-like functionality setup
read -p "Do you want to set up Noloco-like functionalities? (y/n) " setup_noloco
if [[ $setup_noloco =~ ^[Yy]$ ]]; then
  run_script setup-data-modeling.sh "$project_dir"
  run_script setup-api-generation.sh "$project_dir"
  run_script setup-rbac.sh "$project_dir"
  run_script setup-workflows.sh "$project_dir"
  run_script setup-dynamic-ui.sh "$project_dir"
  run_script setup-file-management.sh "$project_dir"
  run_script setup-email-templates.sh "$project_dir"
  run_script setup-dashboard.sh "$project_dir"
  run_script setup-noloco-theme.sh "$project_dir" "both"
fi

log "Project setup complete."
echo "Project $project_name has been set up successfully!"

# Remove the trap before exiting normally
trap - EXIT

```

### run-migrations.sh

```sh
#!/bin/bash
# run-migrations.sh


set -euo pipefail

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

project_name="$1"
db_user="$2"
db_pass="$3"

if [ -z "$project_name" ] || [ -z "$db_user" ] || [ -z "$db_pass" ]; then
  error_exit "Usage: $0 <project-name> <db-user> <db-pass>"
fi

log "Setting up migrations for $project_name"

project_dir="/d/Node/projects/$project_name"
server_dir="$project_dir/server"

if [ -z "$project_name" ]; then
  echo "Usage: $0 <project-name>"
  exit 1
fi

# Ensure the server directory exists
if [ ! -d "$server_dir" ]; then
  error_exit "Server directory not found: $server_dir"
fi

# Change to the server directory
cd "$server_dir" || error_exit "Failed to change to server directory"

# Ensure PostgreSQL is running
pg_isready || error_exit "PostgreSQL is not running"

# Check if DATABASE_URL is set
if [ -z "${DATABASE_URL:-}" ]; then
  error_exit "DATABASE_URL is not set"
fi

PGPASSWORD="${db_pass}" psql -U postgres -d "${project_name}" -c "GRANT ALL ON SCHEMA public TO ${db_user};"

# Run migrations
log "Running database migrations..."

if ! psql "$DATABASE_URL" -v ON_ERROR_STOP=1 <<-EOSQL
  CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
  );
EOSQL
then
  error_exit "Failed to run migrations"
fi

# Add any additional migrations here

log "Database migrations completed successfully."

```

### set-configs.sh

```sh
#!/bin/bash
# set-configs.sh

set -e

project_dir="$1"
project_name="$2"

if [ -z "$project_dir" ] || [ -z "$project_name" ]; then
    echo "Usage: $0 <project-dir> <project-name>"
    exit 1
fi

server_dir="$project_dir/server"
cd "$server_dir" || exit 1

# Create package.json
cat << EOF > ./package.json
{
  "name": "$project_name",
  "version": "1.0.0",
  "description": "Project created with DemTech Master Script Project Setup.",
  "main": "src/index.js",
  "scripts": {
    "start": "node src/index.js",
    "dev": "nodemon src/index.js",
    "test": "jest",
    "test:watch": "jest --watch",
    "test:coverage": "jest --coverage"
  },
  "author": "",
  "license": "ISC",
  "dependencies": {
    "express": "^4.17.1",
    "pg": "^8.7.1",
    "sequelize": "^6.6.5",
    "dotenv": "^10.0.0",
    "cors": "^2.8.5"
  },
  "devDependencies": {
    "jest": "^27.0.0",
    "supertest": "^6.1.3",
    "nodemon": "^2.0.12"
  }
}
EOF

# Create jest.config.js
cat << EOF > ./jest.config.js
module.exports = {
  testEnvironment: 'node',
  testMatch: ['**/tests/**/*.js', '**/?(*.)+(spec|test).js'],
  collectCoverageFrom: ['src/**/*.js'],
  coveragePathIgnorePatterns: ['/node_modules/', '/tests/'],
  coverageReporters: ['text', 'lcov'],
  setupFilesAfterEnv: ['./jest.setup.js']
};
EOF

# Create jest.setup.js
cat << EOF > ./jest.setup.js
// jest.setup.js

require('dotenv').config();

jest.setTimeout(30000);

expect.extend({
  toBeWithinRange(received, floor, ceiling) {
    const pass = received >= floor && received <= ceiling;
    if (pass) {
      return {
        message: () => \`expected \${received} not to be within range \${floor} - \${ceiling}\`,
        pass: true,
      };
    } else {
      return {
        message: () => \`expected \${received} to be within range \${floor} - \${ceiling}\`,
        pass: false,
      };
    }
  },
});

beforeAll(() => {
  console.log('Starting all tests...');
});

afterAll(() => {
  console.log('All tests completed.');
});

if (typeof fetch === 'undefined') {
  global.fetch = require('node-fetch');
}

global.createMockResponse = (data, status = 200) => {
  return new Response(JSON.stringify(data), {
    status,
    headers: { 'Content-Type': 'application/json' },
  });
};

global.wait = (ms) => new Promise(resolve => setTimeout(resolve, ms));

const mockDate = new Date('2024-08-05T12:00:00Z');
global.Date = class extends Date {
  constructor() {
    return mockDate;
  }
};
EOF

echo "Configuration files created successfully for $project_name"
echo "Jest configuration files created in $server_dir"

```

### setup-accessibility.sh

```sh
#!/bin/bash
# setup-accessibility.sh

set -euo pipefail

project_dir="$1"

if [ -z "$project_dir" ]; then
  echo "Usage: $0 <project-dir>"
  exit 1
fi

client_dir="$project_dir/client"
cd "$client_dir" || exit 1

# Create a FocusTrap component
cat << EOF > src/components/FocusTrap.js
import React, { useRef, useEffect } from 'react';

const FocusTrap = ({ children }) => {
  const trapRef = useRef(null);

  useEffect(() => {
    const trapElement = trapRef.current;
    const focusableElements = trapElement.querySelectorAll(
      'button, [href], input, select, textarea, [tabindex]:not([tabindex="-1"])'
    );
    const firstElement = focusableElements[0];
    const lastElement = focusableElements[focusableElements.length - 1];

    const handleKeyDown = (e) => {
      if (e.key === 'Tab') {
        if (e.shiftKey && document.activeElement === firstElement) {
          e.preventDefault();
          lastElement.focus();
        } else if (!e.shiftKey && document.activeElement === lastElement) {
          e.preventDefault();
          firstElement.focus();
        }
      }
    };

    trapElement.addEventListener('keydown', handleKeyDown);
    return () => trapElement.removeEventListener('keydown', handleKeyDown);
  }, []);

  return <div ref={trapRef}>{children}</div>;
};

export default FocusTrap;
EOF

echo "Enhanced accessibility setup completed for $client_dir"

```

### setup-animation.sh

```sh
#!/bin/bash
# setup-animation.sh

set -euo pipefail

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

project_dir="$1"
animation_lib="${2:-framer-motion}"

if [ -z "$project_dir" ]; then
  error_exit "Usage: $0 <project-dir> [animation-library]"
fi

client_dir="$project_dir/client"
cd "$client_dir" || error_exit "Failed to change to client directory"

log "Setting up $animation_lib for $client_dir"

case "$animation_lib" in
  framer-motion)
    npm install framer-motion

    # Create a sample animated component
    cat << EOF > src/components/AnimatedBox.js
import React from 'react';
import { motion } from 'framer-motion';

const AnimatedBox = () => (
  <motion.div
    initial={{ opacity: 0, scale: 0.5 }}
    animate={{ opacity: 1, scale: 1 }}
    transition={{ duration: 0.5 }}
    whileHover={{ scale: 1.1 }}
    whileTap={{ scale: 0.9 }}
    style={{
      width: 100,
      height: 100,
      background: 'blue',
      borderRadius: 10,
    }}
  />
);

export default AnimatedBox;
EOF
    ;;
  react-spring)
    npm install react-spring

    # Create a sample animated component
    cat << EOF > src/components/AnimatedBox.js
import React from 'react';
import { useSpring, animated } from 'react-spring';

const AnimatedBox = () => {
  const props = useSpring({
    to: { opacity: 1, scale: 1 },
    from: { opacity: 0, scale: 0.5 },
    config: { duration: 500 },
  });

  return (
    <animated.div
      style={{
        ...props,
        width: 100,
        height: 100,
        background: 'blue',
        borderRadius: 10,
      }}
    />
  );
};

export default AnimatedBox;
EOF
    ;;
  react-transition-group)
    npm install react-transition-group

    # Create a sample animated component
    cat << EOF > src/components/AnimatedBox.js
import React, { useState } from 'react';
import { CSSTransition } from 'react-transition-group';
import './AnimatedBox.css';

const AnimatedBox = () => {
  const [inProp, setInProp] = useState(false);
  return (
    <div>
      <CSSTransition in={inProp} timeout={300} classNames="fade">
        <div className="box" />
      </CSSTransition>
      <button onClick={() => setInProp(!inProp)}>
        Click to Toggle
      </button>
    </div>
  );
};

export default AnimatedBox;
EOF

    # Create CSS for the animated component
    cat << EOF > src/components/AnimatedBox.css
.box {
  width: 100px;
  height: 100px;
  background: blue;
  border-radius: 10px;
}

.fade-enter {
  opacity: 0;
}
.fade-enter-active {
  opacity: 1;
  transition: opacity 300ms ease-in;
}
.fade-exit {
  opacity: 1;
}
.fade-exit-active {
  opacity: 0;
  transition: opacity 300ms ease-in;
}
EOF
    ;;
  *)
    echo "Invalid animation library. Choose 'framer-motion', 'react-spring', or 'react-transition-group'."
    exit 1
    ;;
esac

echo "$animation_lib setup completed for $client_dir directory."

```

### setup-api-generation.sh

```sh
#!/bin/bash
# setup-api-generation.sh

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

server_dir="$project_dir/server"
mkdir -p "$server_dir/src/services" "$server_dir/src/routes"

log "Setting up API generation for $project_dir"

# Create API generation service
cat << EOF > "$server_dir/src/services/apiGenerationService.js"
// src/services/apiGenerationService.js
const express = require('express');
const { query } = require('../utils/db');

class APIGenerationService {
  generateAPI(modelName, fields) {
    const router = express.Router();

    // Create
    router.post('/', async (req, res) => {
      try {
        const keys = Object.keys(req.body);
        const values = Object.values(req.body);
        const sqlQuery = \`INSERT INTO \${modelName} (\${keys.join(', ')}) VALUES (\${values.map((_, i) => '$' + (i + 1)).join(', ')}) RETURNING *\`;
        const result = await query(sqlQuery, values);
        res.status(201).json(result.rows[0]);
      } catch (error) {
        res.status(400).json({ error: error.message });
      }
    });

    // Read all
    router.get('/', async (req, res) => {
      try {
        const result = await query(\`SELECT * FROM \${modelName}\`);
        res.json(result.rows);
      } catch (error) {
        res.status(500).json({ error: error.message });
      }
    });

    // Read one
    router.get('/:id', async (req, res) => {
      try {
        const result = await query(\`SELECT * FROM \${modelName} WHERE id = \$1\`, [req.params.id]);
        if (result.rows.length === 0) return res.status(404).json({ message: 'Document not found' });
        res.json(result.rows[0]);
      } catch (error) {
        res.status(500).json({ error: error.message });
      }
    });

    // Update
    router.put('/:id', async (req, res) => {
      try {
        const keys = Object.keys(req.body);
        const values = Object.values(req.body);
        const sqlQuery = \`UPDATE \${modelName} SET \${keys.map((key, i) => \`\${key} = \$\${i + 1}\`).join(', ')} WHERE id = \$\${keys.length + 1} RETURNING *\`;
        const result = await query(sqlQuery, [...values, req.params.id]);
        if (result.rows.length === 0) return res.status(404).json({ message: 'Document not found' });
        res.json(result.rows[0]);
      } catch (error) {
        res.status(400).json({ error: error.message });
      }
    });

    // Delete
    router.delete('/:id', async (req, res) => {
      try {
        const result = await query(\`DELETE FROM \${modelName} WHERE id = \$1 RETURNING *\`, [req.params.id]);
        if (result.rows.length === 0) return res.status(404).json({ message: 'Document not found' });
        res.json({ message: 'Document deleted successfully' });
      } catch (error) {
        res.status(500).json({ error: error.message });
      }
    });

    return router;
  }
}

module.exports = new APIGenerationService();
EOF

# Create dynamic API routes file
cat << EOF > "$server_dir/src/routes/dynamicApiRoutes.js"
// src/routes/dynamicApiRoutes.js
const express = require('express');
const apiGenerationService = require('../services/apiGenerationService');
const dataModelingService = require('../services/dataModelingService');

const router = express.Router();

// Function to set up dynamic routes
const setupDynamicRoutes = async () => {
  try {
    const models = await dataModelingService.getModels();
    models.forEach(model => {
      router.use(\`/\${model.name.toLowerCase()}\`, apiGenerationService.generateAPI(model.name, model.fields));
    });
    console.log('Dynamic API routes set up successfully');
  } catch (error) {
    console.error('Error setting up dynamic API routes:', error);
  }
};

// Set up routes immediately and export the router
setupDynamicRoutes();

module.exports = router;
EOF

log "API generation setup completed for $project_dir"

```

### setup-auth.sh

```sh
#!/bin/bash
# setup-auth.sh
# Usage: ./setup-auth.sh <project-name>

set -euo pipefail

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

project_name=$1

if [ -z "$project_name" ]; then
  echo "Usage: $0 <project-name>"
  exit 1
fi

project_dir="/d/Node/projects/$project_name"
server_dir="$project_dir/server"

# Install necessary packages
cd "$project_dir"
npm install jsonwebtoken bcryptjs

# Create an authentication middleware
mkdir -p "$server_dir/src/middleware"
cat << EOF > "$server_dir/src/middleware/auth.js"
// projects/grow-tracking-app/server/src/middleware/auth.js
const jwt = require('jsonwebtoken');

module.exports = function (req, res, next) {
  // Get token from header
  const token = req.header('x-auth-token');

  // Check if no token
  if (!token) {
    return res.status(401).json({ msg: 'No token, authorization denied' });
  }

  // Verify token
  try {
    const decoded = jwt.verify(token, process.env.JWT_SECRET);
    req.user = decoded.user;
    next();
  } catch (err) {
    res.status(401).json({ msg: 'Token is not valid' });
  }
};
EOF

# Create authentication routes
mkdir -p "$server_dir/src/routes"
cat << EOF > "$server_dir/src/routes/auth.js"
const express = require('express');
const router = express.Router();
const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');
const User = require('../models/User');
const auth = require('../middleware/auth');
require('dotenv').config();

// @route   POST api/auth/register
// @desc    Register user
// @access  Public
router.post('/register', async (req, res) => {
  const { name, email, password } = req.body;

  try {
    let user = await User.findOne({ email });
    if (user) {
      return res.status(400).json({ msg: 'User already exists' });
    }

    user = new User({
      name,
      email,
      password,
    });

    const salt = await bcrypt.genSalt(10);
    user.password = await bcrypt.hash(password, salt);

    await user.save();

    const payload = {
      user: {
        id: user.id,
      },
    };

    jwt.sign(
      payload,
      process.env.JWT_SECRET,
      { expiresIn: 3600 },
      (err, token) => {
        if (err) throw err;
        res.json({ token });
      }
    );
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Server error');
  }
});

// @route   POST api/auth/login
// @desc    Authenticate user & get token
// @access  Public
router.post('/login', async (req, res) => {
  const { email, password } = req.body;

  try {
    let user = await User.findOne({ email });
    if (!user) {
      return res.status(400).json({ msg: 'Invalid Credentials' });
    }

    const isMatch = await bcrypt.compare(password, user.password);
    if (!isMatch) {
      return res.status(400).json({ msg: 'Invalid Credentials' });
    }

    const payload = {
      user: {
        id: user.id,
      },
    };

    jwt.sign(
      payload,
      process.env.JWT_SECRET,
      { expiresIn: 3600 },
      (err, token) => {
        if (err) throw err;
        res.json({ token });
      }
    );
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Server error');
  }
});

// @route   GET api/auth/user
// @desc    Get logged in user
// @access  Private
router.get('/user', auth, async (req, res) => {
  try {
    const user = await User.findById(req.user.id).select('-password');
    res.json(user);
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Server Error');
  }
});

module.exports = router;
EOF

# Update .env file with JWT secret
echo "JWT_SECRET=mySecretKey" >> "$server_dir/.env"

echo "Authentication and authorization set up for $project_name"

```

### setup-component-docs.sh

```sh
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

```

### setup-dashboard.sh

```sh
#!/bin/bash
# setup-dashboard.sh

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

log "Setting up dashboard for $project_dir"

mkdir -p "$project_dir/client/src/components/Dashboard"

# Create Dashboard component
cat << EOF > "$project_dir/client/src/components/Dashboard/Dashboard.js"
import React, { useState, useEffect } from 'react';
import DynamicTable from '../DynamicUI/DynamicTable';

const Dashboard = () => {
  const [dashboardData, setDashboardData] = useState({});

  useEffect(() => {
    // Fetch dashboard data from API
    const fetchDashboardData = async () => {
      // Replace with actual API call
      const response = await fetch('/api/dashboard');
      const data = await response.json();
      setDashboardData(data);
    };

    fetchDashboardData();
  }, []);

  return (
    <div>
      <h1>Dashboard</h1>
      {Object.entries(dashboardData).map(([key, value]) => (
        <div key={key}>
          <h2>{key}</h2>
          {Array.isArray(value) ? (
            <DynamicTable
              data={value}
              columns={Object.keys(value[0]).map(col => ({ key: col, label: col }))}
            />
          ) : (
            <p>{value}</p>
          )}
        </div>
      ))}
    </div>
  );
};

export default Dashboard;
EOF

# Create DashboardWidget component
cat << EOF > "$project_dir/client/src/components/Dashboard/DashboardWidget.js"
import React from 'react';

const DashboardWidget = ({ title, value, icon }) => {
  return (
    <div className="dashboard-widget">
      <div className="widget-icon">{icon}</div>
      <div className="widget-content">
        <h3>{title}</h3>
        <p>{value}</p>
      </div>
    </div>
  );
};

export default DashboardWidget;
EOF

# Update App.js to include Dashboard
app_js_path="$project_dir/client/src/App.js"
if [ -f "$app_js_path" ]; then
  sed -i "/import React/a import Dashboard from './components/Dashboard/Dashboard';" "$app_js_path"
  sed -i "/<div className=\"App\">/a <Dashboard />" "$app_js_path"
else
  log "Warning: App.js not found at $app_js_path. Dashboard import not added."
fi

log "Dashboard setup completed for $project_dir"

```

### setup-data-modeling.sh

```sh
#!/bin/bash
# setup-data-modeling.sh

set -euo pipefail

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

project_dir="$1"
client_dir="$project_dir/client"

log "Setting up data modeling for $project_dir"

cd "$client_dir" || error_exit "Failed to change to client directory"

log "Installing class-variance-authority..."
npm install class-variance-authority

# Install Tailwind CSS
log "Installing Tailwind CSS..."
npm install -D tailwindcss postcss autoprefixer
npx tailwindcss init -p

# Update tailwind.config.js
log "Updating Tailwind CSS configuration..."
cat << EOF > tailwind.config.js
/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./src/**/*.{js,jsx,ts,tsx}",
  ],
  theme: {
    extend: {},
  },
  plugins: [],
}
EOF

# Update src/index.css
log "Updating src/index.css with Tailwind directives..."
cat << EOF > src/index.css
@tailwind base;
@tailwind components;
@tailwind utilities;
EOF

# Initialize shadcn-ui
npx shadcn-ui@latest init
log "Initializing shadcn-ui..."
echo '{
  "style": "default",
  "rsc": false,
  "tailwind": {
    "config": "tailwind.config.js",
    "css": "src/index.css",
    "baseColor": "slate",
    "cssVariables": true
  },
  "aliases": {
    "components": "@/components",
    "utils": "@/lib/utils"
  }
}' > components.json

# Add alert component
log "Adding shadcn-ui alert component..."
echo "y" | npx shadcn-ui@latest add alert || error_exit "Failed to add shadcn-ui alert component"

log "Data modeling setup completed for $client_dir"

```

### setup-dynamic-ui.sh

```sh
#!/bin/bash
# setup-dynamic-ui.sh

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

log "Setting up dynamic UI for $project_dir"

mkdir -p "$project_dir/client/src/components/DynamicUI"

# Create DynamicForm component
cat << EOF > "$project_dir/client/src/components/DynamicUI/DynamicForm.js"
import React from 'react';
import { useForm } from 'react-hook-form';

const DynamicForm = ({ fields, onSubmit }) => {
  const { register, handleSubmit, formState: { errors } } = useForm();

  const renderField = (field) => {
    switch (field.type) {
      case 'text':
      case 'email':
      case 'number':
        return (
          <input
            type={field.type}
            {...register(field.name, field.validation)}
            placeholder={field.placeholder}
          />
        );
      case 'select':
        return (
          <select {...register(field.name, field.validation)}>
            {field.options.map((option, index) => (
              <option key={index} value={option.value}>
                {option.label}
              </option>
            ))}
          </select>
        );
      case 'textarea':
        return (
          <textarea
            {...register(field.name, field.validation)}
            placeholder={field.placeholder}
          />
        );
      default:
        return null;
    }
  };

  return (
    <form onSubmit={handleSubmit(onSubmit)}>
      {fields.map((field, index) => (
        <div key={index}>
          <label>{field.label}</label>
          {renderField(field)}
          {errors[field.name] && <span>{errors[field.name].message}</span>}
        </div>
      ))}
      <button type="submit">Submit</button>
    </form>
  );
};

export default DynamicForm;
EOF

# Create DynamicTable component
cat << EOF > "$project_dir/client/src/components/DynamicUI/DynamicTable.js"
import React from 'react';

const DynamicTable = ({ data, columns }) => {
  return (
    <table>
      <thead>
        <tr>
          {columns.map((column, index) => (
            <th key={index}>{column.label}</th>
          ))}
        </tr>
      </thead>
      <tbody>
        {data.map((row, rowIndex) => (
          <tr key={rowIndex}>
            {columns.map((column, columnIndex) => (
              <td key={columnIndex}>{row[column.key]}</td>
            ))}
          </tr>
        ))}
      </tbody>
    </table>
  );
};

export default DynamicTable;
EOF

echo "Dynamic UI components setup completed for $project_dir"

```

### setup-email-templates.sh

```sh
#!/bin/bash
# setup-email-templates.sh

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

log "Setting up email templates for $project_dir"

mkdir -p "$project_dir/server/src/services"
mkdir -p "$project_dir/server/src/models"
mkdir -p "$project_dir/server/src/routes"

cd "$project_dir/server" || error_exit "Failed to change to server directory"
npm install nodemailer handlebars


# Create EmailService
cat << EOF > "$project_dir/server/src/services/emailService.js"
const nodemailer = require('nodemailer');
const handlebars = require('handlebars');
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

class EmailService {
  constructor() {
    this.transporter = nodemailer.createTransport({
      host: process.env.SMTP_HOST,
      port: process.env.SMTP_PORT,
      auth: {
        user: process.env.SMTP_USER,
        pass: process.env.SMTP_PASS
      }
    });
  }

  async sendEmail(to, subject, template, context) {
    const compiledTemplate = handlebars.compile(template);
    const html = compiledTemplate(context);

    const mailOptions = {
      from: process.env.EMAIL_FROM,
      to,
      subject,
      html
    };

    await this.transporter.sendMail(mailOptions);
  }

  async saveTemplate(templateData) {
    const query = 'INSERT INTO email_templates(name, subject, body) VALUES(\$1, \$2, \$3) RETURNING *';
    const values = [templateData.name, templateData.subject, templateData.body];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getTemplates() {
    const result = await pool.query('SELECT * FROM email_templates');
    return result.rows;
  }

  async getTemplateByName(name) {
    const result = await pool.query('SELECT * FROM email_templates WHERE name = \$1', [name]);
    return result.rows[0];
  }
}

module.exports = new EmailService();
EOF

# Create EmailTemplate model
cat << EOF > "$project_dir/server/src/models/EmailTemplate.js"
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

class EmailTemplateModel {
  async saveTemplate(templateData) {
    const query = 'INSERT INTO email_templates(name, subject, body) VALUES(\$1, \$2, \$3) RETURNING *';
    const values = [templateData.name, templateData.subject, templateData.body];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getTemplates() {
    const result = await pool.query('SELECT * FROM email_templates');
    return result.rows;
  }

  async getTemplateByName(name) {
    const result = await pool.query('SELECT * FROM email_templates WHERE name = \$1', [name]);
    return result.rows[0];
  }
}

module.exports = new EmailTemplateModel();
EOF

# Create email template routes
cat << EOF > "$project_dir/server/src/routes/emailTemplateRoutes.js"
const express = require('express');
const EmailService = require('../services/emailService');
const router = express.Router();

router.post('/', async (req, res) => {
  try {
    const template = await EmailService.saveTemplate(req.body);
    res.status(201).json(template);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

router.get('/', async (req, res) => {
  try {
    const templates = await EmailService.getTemplates();
    res.json(templates);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

router.post('/send', async (req, res) => {
  try {
    const { templateName, to, context } = req.body;
    const template = await EmailService.getTemplateByName(templateName);
    if (!template) {
      return res.status(404).json({ message: 'Template not found' });
    }
    await EmailService.sendEmail(to, template.subject, template.body, context);
    res.json({ message: 'Email sent successfully' });
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

module.exports = router;
EOF

log "Email templates setup completed for $project_dir"

```

### setup-file-management.sh

```sh
#!/bin/bash
# setup-file-management.sh

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

log "Setting up file management for $project_dir"

mkdir -p "$project_dir/server/src/services"
mkdir -p "$project_dir/server/src/routes"
mkdir -p "$project_dir/server/src/models"

cd "$project_dir/server" || error_exit "Failed to change to server directory"
npm install multer aws-sdk

# Create FileService
cat << EOF > "$project_dir/server/src/services/fileService.js"
const aws = require('aws-sdk');
const multer = require('multer');
const multerS3 = require('multer-s3');
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

aws.config.update({
  secretAccessKey: process.env.AWS_SECRET_ACCESS_KEY,
  accessKeyId: process.env.AWS_ACCESS_KEY_ID,
  region: process.env.AWS_REGION
});

const s3 = new aws.S3();

const upload = multer({
  storage: multerS3({
    s3: s3,
    bucket: process.env.S3_BUCKET,
    acl: 'public-read',
    metadata: function (req, file, cb) {
      cb(null, {fieldName: file.fieldname});
    },
    key: function (req, file, cb) {
      cb(null, Date.now().toString() + '-' + file.originalname)
    }
  })
});

class FileService {
  async saveFile(fileData) {
    const query = 'INSERT INTO files(filename, originalname, mimetype, size, url, uploadedby) VALUES(\$1, \$2, \$3, \$4, \$5, \$6) RETURNING *';
    const values = [fileData.filename, fileData.originalname, fileData.mimetype, fileData.size, fileData.url, fileData.uploadedby];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getFilesByUser(userId) {
    const query = 'SELECT * FROM files WHERE uploadedby = \$1';
    const result = await pool.query(query, [userId]);
    return result.rows;
  }
}

module.exports = { upload, FileService: new FileService() };
EOF

# Create File model
cat << EOF > "$project_dir/server/src/models/File.js"
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

class FileModel {
  async saveFile(fileData) {
    const query = 'INSERT INTO files(filename, originalname, mimetype, size, url, uploadedby) VALUES(\$1, \$2, \$3, \$4, \$5, \$6) RETURNING *';
    const values = [fileData.filename, fileData.originalname, fileData.mimetype, fileData.size, fileData.url, fileData.uploadedby];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getFilesByUser(userId) {
    const query = 'SELECT * FROM files WHERE uploadedby = \$1';
    const result = await pool.query(query, [userId]);
    return result.rows;
  }
}

module.exports = new FileModel();
EOF

# Create file routes
cat << EOF > "$project_dir/server/src/routes/fileRoutes.js"
const express = require('express');
const { upload, FileService } = require('../services/fileService');
const router = express.Router();

router.post('/upload', upload.single('file'), async (req, res) => {
  try {
    const fileData = {
      filename: req.file.key,
      originalname: req.file.originalname,
      mimetype: req.file.mimetype,
      size: req.file.size,
      url: req.file.location,
      uploadedby: req.user.id
    };
    const file = await FileService.saveFile(fileData);
    res.status(201).json(file);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

router.get('/', async (req, res) => {
  try {
    const files = await FileService.getFilesByUser(req.user.id);
    res.json(files);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

module.exports = router;
EOF

log "File management setup completed for $project_dir"

```

### setup-i18n.sh

```sh
#!/bin/bash
# setup-i18n.sh

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

log "Setting up internationalization for $client_dir"

# Install react-i18next, i18next, and related packages
npm install react-i18next i18next i18next-http-backend i18next-browser-languagedetector

# Create i18n configuration
mkdir -p src/i18n
cat << EOF > src/i18n/i18n.js
import i18n from 'i18next';
import { initReactI18next } from 'react-i18next';
import Backend from 'i18next-http-backend';
import LanguageDetector from 'i18next-browser-languagedetector';

i18n
  .use(Backend)
  .use(LanguageDetector)
  .use(initReactI18next)
  .init({
    fallbackLng: 'en',
    debug: process.env.NODE_ENV !== 'production',
    interpolation: {
      escapeValue: false,
    },
    backend: {
      loadPath: '/locales/{{lng}}/{{ns}}.json',
    },
  });

export default i18n;
EOF

# Create sample translation files
mkdir -p public/locales/en public/locales/es
echo '{"hello": "Hello", "welcome": "Welcome to our app!"}' > public/locales/en/translation.json
echo '{"hello": "Hola", "welcome": "¡Bienvenido a nuestra aplicación!"}' > public/locales/es/translation.json

# Update index.js to use i18n
sed -i '1iimport "./i18n/i18n";\n' src/index.js

# Create a language switcher component
cat << EOF > src/components/LanguageSwitcher.js
import React from 'react';
import { useTranslation } from 'react-i18next';

const LanguageSwitcher = () => {
  const { i18n } = useTranslation();

  const changeLanguage = (lng) => {
    i18n.changeLanguage(lng);
  };

  return (
    <div>
      <button onClick={() => changeLanguage('en')}>English</button>
      <button onClick={() => changeLanguage('es')}>Español</button>
    </div>
  );
};

export default LanguageSwitcher;
EOF

log "Internationalization setup completed for $client_dir directory."

```

### setup-noloco-theme.sh

```sh
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
FONT_FAMILY="'Inter', sans-serif"

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
    body: ${FONT_FAMILY},
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

```

### setup-performance-optimization.sh

```sh
#!/bin/bash
# setup-performance-optimization.sh

set -euo pipefail

project_dir="$1"

if [ -z "$project_dir" ]; then
  echo "Usage: $0 <project-dir>"
  exit 1
fi

client_dir="$project_dir/client"
cd "$client_dir" || exit 1

# Add a utility for image optimization
mkdir -p src/utils
cat << EOF > src/utils/imageOptimization.js
export const getOptimizedImageUrl = (url, width, height) => {
  // This is a placeholder. In a real-world scenario, you'd integrate with
  // an image optimization service like Cloudinary or Imgix.
  return `${url}?w=${width}&h=${height}&fit=crop&auto=format`;
};
EOF

# Add a custom hook for intersection observer (for lazy loading)
cat << EOF > src/utils/useIntersectionObserver.js
import { useState, useEffect } from 'react';

const useIntersectionObserver = (ref, options = {}) => {
  const [isIntersecting, setIsIntersecting] = useState(false);

  useEffect(() => {
    const observer = new IntersectionObserver(([entry]) => {
      setIsIntersecting(entry.isIntersecting);
    }, options);

    if (ref.current) {
      observer.observe(ref.current);
    }

    return () => {
      observer.disconnect();
    };
  }, [ref, options]);

  return isIntersecting;
};

export default useIntersectionObserver;
EOF

echo "Enhanced performance optimization setup completed for $client_dir"

```

### setup-postgresql.sh

```sh
#!/bin/bash
# setup-postgresql.sh

set -euo pipefail

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

project_name="$1"
db_user="$2"
db_pass="$3"

if [ -z "$project_name" ] || [ -z "$db_user" ] || [ -z "$db_pass" ]; then
  error_exit "Usage: $0 <project-name> <db-user> <db-pass>"
fi

log "Setting up PostgreSQL for $project_name"

# Check if PostgreSQL is installed
log "Checking if PostgreSQL is installed..."
if ! command -v psql &> /dev/null; then
    error_exit "PostgreSQL is not installed. Please install it and try again."
fi

log "PostgreSQL is installed. Proceeding with setup..."

project_dir="/d/Node/projects/$project_name"
server_dir="$project_dir/server"
cd "$server_dir" || error_exit "Failed to change to server directory"

# Create database and user
log "Attempting to create database and user..."
PGPASSWORD="${db_pass}" psql -U postgres -h localhost << EOF
CREATE DATABASE ${project_name} WITH OWNER ${db_user};
DO
\$\$
BEGIN
  IF NOT EXISTS (SELECT FROM pg_catalog.pg_roles WHERE rolname = '${db_user}') THEN
    CREATE USER ${db_user} WITH ENCRYPTED PASSWORD '${db_pass}';
  END IF;
END
\$\$;
GRANT ALL PRIVILEGES ON DATABASE ${project_name} TO ${db_user};
\c ${project_name}
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
EOF

if [ $? -ne 0 ]; then
    error_exit "Failed to set up database and user"
fi
log "Database and user setup completed."

log "Database and user created successfully."

# Update .env file
log "Updating .env file..."
if [ -f .env ]; then
    sed -i '/^DATABASE_URL/d' .env
fi
echo "DATABASE_URL=postgres://${db_user}:${db_pass}@localhost:5432/${project_name}" >> .env

log ".env file updated."

# Install necessary packages
log "Installing necessary npm packages..."
npm install express pg sequelize dotenv || error_exit "Failed to install npm packages"

log "NPM packages installed."

# Create database connection utility
log "Creating database connection utility..."
mkdir -p "$server_dir/src/config"
cat << EOF > "$server_dir/src/config/database.js"
// src/config/database.js
const { Pool } = require('pg');
const { Sequelize } = require('sequelize');
require('dotenv').config();

const sequelize = new Sequelize(process.env.DATABASE_URL, {
  dialect: 'postgres',
  logging: false,
  pool: {
    max: 5,
    min: 0,
    acquire: 30000,
    idle: 10000
  }
});

const pool = new Pool({
  connectionString: process.env.DATABASE_URL,
});

const testConnection = async () => {
  try {
    await sequelize.authenticate();
    console.log('Sequelize connection has been established successfully.');

    const client = await pool.connect();
    console.log('PostgreSQL pool connection has been established successfully.');
    client.release();
  } catch (error) {
    console.error('Unable to connect to the database:', error);
  }
};

testConnection();

module.exports = {
  sequelize,
  Sequelize,
  query: (text, params) => pool.query(text, params),
};
EOF

log "Database connection utility created."

# Create a basic model
log "Creating basic User model..."
mkdir -p "$server_dir/src/models"
cat << EOF > "$server_dir/src/models/User.js"
// src/models/User.js

const { Sequelize, DataTypes } = require('sequelize');
const sequelize = require('../config/database');

const User = sequelize.define('User', {
  name: {
    type: DataTypes.STRING,
    allowNull: false
  },
  email: {
    type: DataTypes.STRING,
    allowNull: false,
    unique: true
  },
  password: {
    type: DataTypes.STRING,
    allowNull: false
  }
});

module.exports = User;
EOF

log "Basic User model created."

log "PostgreSQL setup completed for $project_name"

```

### setup-project.sh

```sh
#!/bin/bash
# setup-project.sh

set -e

project_name=$1

if [ -z "$project_name" ]; then
  echo "Usage: $0 <project-name>"
  exit 1
fi

# Check for Node.js and npm
if ! command -v node > /dev/null 2>&1 || ! command -v npm > /dev/null 2>&1; then
    error_exit "Node.js and npm are required but not installed. Please install them and try again."
fi

project_dir="/d/Node/projects/$project_name"
client_dir="$project_dir/client"
server_dir="$project_dir/server"

log() {
  echo "$(date +"%Y-%m-%d %T") : $1"
}

error_exit() {
  echo "$(date +"%Y-%m-%d %T") : $1" 1>&2
  exit 1
}

log "Creating project directory..."
mkdir -p "$project_dir" || error_exit "Failed to create project directory"
cd "$project_dir" || error_exit "Failed to navigate to project directory"
touch .gitignore README.md || error_exit "Failed to create initial config files"
mkdir -p .github docs || error_exit "Failed to create project structure directories"

# Initialize project structure
log "Initializing project structure..."
mkdir -p "$server_dir/src/config" "$server_dir/src/controllers" "$server_dir/src/middleware" "$server_dir/src/models" "$server_dir/src/routes" "$server_dir/src/utils" "$server_dir/src/services" || error_exit "Failed to create server structure directories"
mkdir -p "$server_dir/tests" || error_exit "Failed to create tests directory"
cd "$server_dir" || error_exit "Failed to navigate to server directory"
touch "$server_dir/package.json" "$server_dir/src/app.js" "$server_dir/.env" "$server_dir/babel.config.js" "$server_dir/jest.config.js" "$server_dir/jest.setup.js" || error_exit "Failed to create initial server files"

cat << EOF > "$server_dir/package.json"
{
  "name": "${project_name}",
  "version": "1.0.0",
  "main": "index.js",
  "directories": {
    "doc": "docs"
  },
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "keywords": [],
  "author": "",
  "license": "ISC",
  "description": ""
}
EOF

log "Installing express pg sequelize cors dotenv dependencies..."
npm install express pg sequelize cors dotenv

log "Creating server/src/app.js..."
cat << EOF > "$server_dir/src/app.js"
const express = require('express');
const { Pool } = require('pg');
const session = require('express-session');
const pgSession = require('connect-pg-simple')(session);
const passport = require('passport');
const cors = require('cors');
const dotenv = require('dotenv');
const path = require('path');
const errorHandler = require('./middleware/error-handling-middleware');

dotenv.config();

const app = express();

// Middleware
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// PostgreSQL Pool
const pool = new Pool({
    connectionString: process.env.DATABASE_URL
});

// Session Management
app.use(session({
    store: new pgSession({
        pool: pool,
        tableName: 'session'
    }),
    secret: process.env.SESSION_SECRET || 'your_secret_key',
    resave: false,
    saveUninitialized: false,
    cookie: { secure: process.env.NODE_ENV === 'production' }
}));

// Passport middleware
app.use(passport.initialize());
app.use(passport.session());

// Passport Config
require('./config/passport')(passport);

// Routes
app.use('/api/models', require('./routes/models'));
// Add other routes as needed

// Serve static files from the React app in production
if (process.env.NODE_ENV === 'production') {
    app.use(express.static(path.join(__dirname, '../../client/build')));

    app.get('*', (req, res) => {
        res.sendFile(path.join(__dirname, '../../client/build', 'index.html'));
    });
}

// Error Handling Middleware
app.use(errorHandler);

module.exports = app;
EOF

log "Updating package.json with new dependencies..."
cd "$server_dir"
npm install express-session connect-pg-simple passport
npm install --save-dev @types/express-session @types/passport
cd -

log "Creating error handling middleware..."
mkdir -p "$server_dir/src/middleware"

cat << EOF > "$server_dir/src/middleware/error-handling-middleware.js"
const errorHandler = (err, req, res, next) => {
    console.error(err.stack);
    res.status(500).send('Something broke!');
};

module.exports = errorHandler;
EOF

log "Creating basic passport configuration..."
mkdir -p "$server_dir/src/config"
cat << EOF > "$server_dir/src/config/passport.js"
module.exports = (passport) => {
    // Add passport strategies and serialization here
    // This is a placeholder and should be expanded based on your auth requirements
};
EOF

log "Creating server/src/routes/models.js..."
cat << EOF > src/routes/models.js
const express = require('express');
const router = express.Router();
const DataModelingService = require('../services/dataModelingService');

router.post('/models', async (req, res, next) => {
  try {
    const { name, fields } = req.body;
    await DataModelingService.saveModel({ name, fields });
    res.status(201).json({ message: 'Model saved successfully' });
  } catch (error) {
    next(error);
  }
});

router.get('/models', async (req, res, next) => {
  try {
    const models = await DataModelingService.getModels();
    res.json(models);
  } catch (error) {
    next(error);
  }
});

module.exports = router;
EOF

log "Creating server/src/index.js..."
cat << EOF > "$server_dir/src/index.js"
const express = require('express');
const cors = require('cors');
require('dotenv').config();
const { sequelize } = require('./utils/db');
const modelRoutes = require('./routes/models');
const dynamicApiRoutes = require('./routes/dynamicApiRoutes');

const app = express();
const PORT = process.env.PORT || 3000;

// Middleware
app.use(cors());
app.use(express.json());

// Routes
app.use('/api/models', modelRoutes);
app.use('/api', dynamicApiRoutes);

app.get('/', (req, res) => {
  res.json({ message: 'Welcome to the API' });
});

// Error handling middleware
app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).send('Something broke!');
});

// Database connection and server start
const startServer = async () => {
  try {
    await sequelize.authenticate();
    console.log('Database connection has been established successfully.');

    app.listen(PORT, () => console.log(`Server running on port ${PORT}`));
  } catch (error) {
    console.error('Unable to connect to the database:', error);
  }
};

startServer();
EOF

log "Creating server/.env..."
cat << EOF > "$server_dir/.env"
DATABASE_URL=postgres://${project_name}_user:your_secure_password@localhost:5432/${project_name}
PORT=3000
BASE_URL=http://localhost:3000  # Optional, for local development
EOF

log "Creating project .gitignore..."
cat << EOF > "$project_dir/.gitignore"
node_modules/
.env
*.log
build/
EOF

log "Updating server/src/index.js to use app.js..."
sed -i '1i\const app = require(\'./app');' "$server_dir/src/index.js"
sed -i '/const app = express();/d' "$server_dir/src/index.js"
sed -i '/app\.use(cors());/d' "$server_dir/src/index.js"
sed -i '/app\.use(express\.json());/d' "$server_dir/src/index.js"

log "Setting up client..."
npx create-react-app "$client_dir"
cd "$client_dir" || error_exit "Failed to navigate to client directory"
npm install axios react-router-dom styled-components

log "Project $project_name set up successfully"

```

### setup-pwa.sh

```sh
#!/bin/bash
# setup-pwa.sh

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

log "Setting up PWA for $client_dir"

# Install workbox-webpack-plugin and other PWA-related packages
npm install --save-dev workbox-webpack-plugin
npm install workbox-window

# Update webpack.config.js to include workbox plugin
cat << EOF >> webpack.config.js

const WorkboxWebpackPlugin = require('workbox-webpack-plugin');

module.exports.plugins.push(
  new WorkboxWebpackPlugin.GenerateSW({
    clientsClaim: true,
    skipWaiting: true,
    runtimeCaching: [{
      urlPattern: /^https?.*/,
      handler: 'NetworkFirst',
      options: {
        cacheName: 'https-calls',
        networkTimeoutSeconds: 15,
        expiration: {
          maxEntries: 150,
          maxAgeSeconds: 30 * 24 * 60 * 60, // 1 month
        },
        cacheableResponse: {
          statuses: [0, 200],
        },
      },
    }],
  })
);
EOF

# Create a manifest.json file
cat << EOF > public/manifest.json
{
  "short_name": "Your App",
  "name": "Your Application Name",
  "icons": [
    {
      "src": "favicon.ico",
      "sizes": "64x64 32x32 24x24 16x16",
      "type": "image/x-icon"
    },
    {
      "src": "logo192.png",
      "type": "image/png",
      "sizes": "192x192"
    },
    {
      "src": "logo512.png",
      "type": "image/png",
      "sizes": "512x512"
    }
  ],
  "start_url": ".",
  "display": "standalone",
  "theme_color": "#000000",
  "background_color": "#ffffff"
}
EOF

# Update index.html to include manifest and theme-color
sed -i '/<\/head>/i\    <link rel="manifest" href="%PUBLIC_URL%/manifest.json" />' public/index.html
sed -i '/<\/head>/i\    <meta name="theme-color" content="#000000" />' public/index.html

# Create a service worker registration file
cat << EOF > src/serviceWorkerRegistration.js
import { Workbox } from 'workbox-window';

export function register() {
  if ('serviceWorker' in navigator) {
    const wb = new Workbox('/service-worker.js');

    wb.addEventListener('installed', event => {
      if (event.isUpdate) {
        if (confirm('New content is available! Click OK to refresh.')) {
          window.location.reload();
        }
      }
    });

    wb.register();
  }
}
EOF

# Update index.js to include service worker registration
cat << EOF >> src/index.js

import { register } from './serviceWorkerRegistration';

register();
EOF

log "PWA setup completed for $client_dir directory."

```

### setup-rbac.sh

```sh
#!/bin/bash
# setup-rbac.sh

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

server_dir="$project_dir/server"
src_dir="$server_dir/src"

mkdir -p "$src_dir/middlewares" "$src_dir/models" "$src_dir/routes"

log "Setting up RBAC for $project_dir"

# Install required packages
cd "$server_dir"
npm install bcryptjs jsonwebtoken
cd -

# Create RBAC middleware
cat << EOF > "$src_dir/middlewares/rbacMiddleware.js"
// src/middlewares/rbacMiddleware.js
const rbacMiddleware = (requiredRole) => {
  return (req, res, next) => {
    if (!req.user || !req.user.role) {
      return res.status(403).json({ message: 'Access denied' });
    }

    if (req.user.role !== requiredRole) {
      return res.status(403).json({ message: 'Insufficient permissions' });
    }

    next();
  };
};

module.exports = rbacMiddleware;
EOF

# Create User model with role
cat << EOF > "$src_dir/models/User.js"
const { Pool } = require('pg');
const bcrypt = require('bcryptjs');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

class UserService {
  async createUser(userData) {
    const hashedPassword = await bcrypt.hash(userData.password, 12);
    const query = 'INSERT INTO users (username, email, password, role) VALUES(\$1, \$2, \$3, \$4) RETURNING *';
    const values = [userData.username, userData.email, hashedPassword, userData.role];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async findUserByEmail(email) {
    const query = 'SELECT * FROM users WHERE email = \$1';
    const result = await pool.query(query, [email]);
    return result.rows[0];
  }

  async comparePassword(candidatePassword, storedPassword) {
    return bcrypt.compare(candidatePassword, storedPassword);
  }
}

module.exports = new UserService();
EOF

# Update auth routes to include role
cat << EOF > "$src_dir/routes/authRoutes.js"
// src/routes/authRoutes.js
const express = require('express');
const jwt = require('jsonwebtoken');
const UserService = require('../models/User');
const rbacMiddleware = require('../middlewares/rbacMiddleware');

const router = express.Router();

router.post('/register', async (req, res) => {
  try {
    const { username, email, password, role } = req.body;
    const user = await UserService.createUser({ username, email, password, role });
    res.status(201).json({ message: 'User registered successfully', user });
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

router.post('/login', async (req, res) => {
  try {
    const { email, password } = req.body;
    const user = await UserService.findUserByEmail(email);
    if (!user || !(await UserService.comparePassword(password, user.password))) {
      return res.status(401).json({ message: 'Invalid credentials' });
    }
    const token = jwt.sign({ userId: user.id, role: user.role }, process.env.JWT_SECRET, { expiresIn: '1d' });
    res.json({ token });
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

// Example of a protected route using RBAC
router.get('/admin-only', rbacMiddleware('admin'), (req, res) => {
  res.json({ message: 'Welcome, admin!' });
});

module.exports = router;
EOF

log "RBAC setup completed for $project_dir"

```

### setup-redux-actions.sh

```sh
#!/bin/bash
# setup-redux.sh

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
  echo "Usage: $0 <project-dir>"
  exit 1
fi

if ! command -v npm &> /dev/null; then
  error_exit "npm could not be found, please install Node.js and npm first."
fi

client_dir="$project_dir/client"
src_dir="$client_dir/src"

cd "$client_dir"

log "Installing Redux and related packages..."
npm install redux react-redux @reduxjs/toolkit

log "Creating Redux directory structure..."
mkdir -p "$src_dir/redux/slices"

log "Creating store.js..."
cat << EOF > "$src_dir/redux/store.js"
import { configureStore } from '@reduxjs/toolkit';
import rootReducer from './slices';

const store = configureStore({
  reducer: rootReducer,
  devTools: process.env.NODE_ENV !== 'production',
});

export default store;
EOF

log "Creating root reducer (index.js in slices directory)..."
cat << EOF > "$src_dir/redux/slices/index.js"
import { combineReducers } from 'redux';
import exampleSlice from './exampleSlice';

const rootReducer = combineReducers({
  example: exampleSlice,
});

export default rootReducer;
EOF

log "Creating an example slice..."
cat << EOF > "$src_dir/redux/slices/exampleSlice.js"
import { createSlice } from '@reduxjs/toolkit';

const initialState = {
  value: 0,
};

const exampleSlice = createSlice({
  name: 'example',
  initialState,
  reducers: {
    increment: (state) => {
      state.value += 1;
    },
    decrement: (state) => {
      state.value -= 1;
    },
  },
});

export const { increment, decrement } = exampleSlice.actions;
export default exampleSlice.reducer;
EOF

log "Updating index.js to use Redux..."
sed -i "1i import { Provider } from 'react-redux';" "$src_dir/index.js"
sed -i "2i import store from './redux/store';" "$src_dir/index.js"
sed -i "s/<React.StrictMode>/<Provider store={store}><React.StrictMode>/" "$src_dir/index.js"
sed -i "s/<\/React.StrictMode>/<\/React.StrictMode><\/Provider>/" "$src_dir/index.js"

log "Updating App.js to remove redundant Redux provider..."
cat << EOF > "$src_dir/App.js"
import React from 'react';

const App = () => {
  return (
    <div>
      {/* Your app content here */}
    </div>
  );
};

export default App;
EOF

log "Updating index.js to use Redux..."
index_file="$src_dir/index.js"
temp_file=$(mktemp)

cat << EOF > "$temp_file"
import React from 'react';
import ReactDOM from 'react-dom/client';
import { Provider } from 'react-redux';
import store from './redux/store';
import App from './App';
import './index.css';

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <React.StrictMode>
    <Provider store={store}>
      <App />
    </Provider>
  </React.StrictMode>
);
EOF

mv "$temp_file" "$index_file"

log "Redux setup completed for $client_dir directory."

```

### setup-redux.sh

```sh
#!/bin/bash
# setup-redux.sh

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
  echo "Usage: $0 <project-dir>"
  exit 1
fi

if ! command -v npm &> /dev/null; then
  error_exit "npm could not be found, please install Node.js and npm first."
fi

client_dir="$project_dir/client"
src_dir="$client_dir/src"

cd "$client_dir"

log "Installing Redux and related packages..."
npm install redux react-redux @reduxjs/toolkit

log "Creating Redux directory structure..."
mkdir -p "$src_dir/redux/slices"

log "Creating store.js..."
cat << EOF > "$src_dir/redux/store.js"
import { configureStore } from '@reduxjs/toolkit';
import rootReducer from './slices';

const store = configureStore({
  reducer: rootReducer,
  devTools: process.env.NODE_ENV !== 'production',
});

export default store;
EOF

log "Creating root reducer (index.js in slices directory)..."
cat << EOF > "$src_dir/redux/slices/index.js"
import { combineReducers } from 'redux';
import exampleSlice from './exampleSlice';

const rootReducer = combineReducers({
  example: exampleSlice,
});

export default rootReducer;
EOF

log "Creating an example slice..."
cat << EOF > "$src_dir/redux/slices/exampleSlice.js"
import { createSlice } from '@reduxjs/toolkit';

const initialState = {
  value: 0,
};

const exampleSlice = createSlice({
  name: 'example',
  initialState,
  reducers: {
    increment: (state) => {
      state.value += 1;
    },
    decrement: (state) => {
      state.value -= 1;
    },
  },
});

export const { increment, decrement } = exampleSlice.actions;
export default exampleSlice.reducer;
EOF

log "Updating index.js to use Redux..."
sed -i "1i import { Provider } from 'react-redux';" "$src_dir/index.js"
sed -i "2i import store from './redux/store';" "$src_dir/index.js"
sed -i "s/<React.StrictMode>/<Provider store={store}><React.StrictMode>/" "$src_dir/index.js"
sed -i "s/<\/React.StrictMode>/<\/React.StrictMode><\/Provider>/" "$src_dir/index.js"

log "Updating App.js to use Redux..."
cat << EOF > "$src_dir/App.js"
import React from 'react';

const App = () => {
  return (
    <div>
      {/* Your app content here */}
    </div>
  );
};

export default App;
EOF

log "Updating index.js to use Redux..."
index_file="$src_dir/index.js"
temp_file=$(mktemp)

cat << EOF > "$temp_file"
import React from 'react';
import ReactDOM from 'react-dom/client';
import { Provider } from 'react-redux';
import store from './redux/store';
import App from './App';
import './index.css';

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <React.StrictMode>
    <Provider store={store}>
      <App />
    </Provider>
  </React.StrictMode>
);
EOF

mv "$temp_file" "$index_file"

log "Redux setup completed for $client_dir directory."

```

### setup-responsive-design.sh

```sh
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

```

### setup-sass.sh

```sh
#!/bin/bash
# setup-sass.sh

project_dir="$1"

if [ -z "$project_dir" ]; then
  echo "Usage: $0 <project-dir>"
  exit 1
fi

client_dir="$project_dir/client"
cd "$client_dir"

# Install SASS
npm install sass

# Create SASS directory structure
mkdir -p src/styles/abstracts src/styles/base src/styles/components src/styles/layout src/styles/pages

# Create main SASS file
cat << EOF > src/styles/main.scss
@import 'abstracts/variables';
@import 'abstracts/mixins';

@import 'base/reset';
@import 'base/typography';

@import 'components/buttons';
@import 'components/forms';

@import 'layout/header';
@import 'layout/footer';

@import 'pages/home';
EOF

# Create example files
cat << EOF > src/styles/abstracts/_variables.scss
\$primary-color: #0070f3;
\$secondary-color: #0070f3;
\$font-stack: Arial, sans-serif;
EOF

cat << EOF > src/styles/abstracts/_mixins.scss
@mixin flexCenter {
  display: flex;
  justify-content: center;
  align-items: center;
}
EOF

cat << EOF > src/styles/base/_reset.scss
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}
EOF

# Update package.json scripts
npm pkg set scripts.sass="sass src/styles/main.scss src/styles/main.css"
npm pkg set scripts.sass:watch="sass src/styles/main.scss src/styles/main.css --watch"

echo "SASS setup completed for $client_dir directory."

```

### setup-seo.sh

```sh
#!/bin/bash
# setup-seo.sh

set -euo pipefail

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

project_dir="$1"
client_dir="$project_dir/client"

if [ -z "$project_dir" ]; then
  error_exit "Usage: $0 <project-dir>"
fi

cd "$client_dir" || error_exit "Failed to change to client directory"

log "Setting up SEO for $client_dir"

# Install react-helmet for managing document head
npm install react-helmet-async

# Create SEO component
cat << EOF > src/components/SEO.js
import React from 'react';
import { Helmet } from 'react-helmet-async';

const SEO = ({ title, description, keywords, image, url }) => (
  <Helmet>
    <title>{title}</title>
    <meta name="description" content={description} />
    <meta name="keywords" content={keywords} />
    <meta property="og:title" content={title} />
    <meta property="og:description" content={description} />
    <meta property="og:image" content={image} />
    <meta property="og:url" content={url} />
    <meta property="og:type" content="website" />
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:title" content={title} />
    <meta name="twitter:description" content={description} />
    <meta name="twitter:image" content={image} />
    <link rel="canonical" href={url} />
  </Helmet>
);

export default SEO;
EOF

mkdir -p "$client_dir/scripts"
cd "$client_dir"

# Create the sitemap generator JavaScript file
cat << 'EOF' > "$client_dir/scripts/generate-sitemap.js"
const fs = require('fs');
const path = require('path');
require('dotenv').config({ path: path.join(__dirname, '../../.env') });

const baseUrl = process.env.BASE_URL || `http://localhost:${process.env.PORT || 3000}`;
const publicDir = path.join(__dirname, '../public');

const getPages = () => {
  // This is a simplified example. In reality, you'd want to
  // generate this list based on your actual routes.
  return ['', 'register'];
};

const generateSitemap = () => {
  const pages = getPages();
  const sitemap = `<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
  ${pages.map(page => `
  <url>
    <loc>${baseUrl}/${page}</loc>
    <lastmod>${new Date().toISOString().split('T')[0]}</lastmod>
    <changefreq>weekly</changefreq>
    <priority>0.8</priority>
  </url>
  `).join('')}
</urlset>`;

  fs.writeFileSync(path.join(publicDir, 'sitemap.xml'), sitemap);
  console.log('Sitemap generated successfully');

  // Generate robots.txt
  const robotsTxt = `User-agent: *
Allow: /

Sitemap: ${baseUrl}/sitemap.xml
`;
  fs.writeFileSync(path.join(publicDir, 'robots.txt'), robotsTxt);
  console.log('robots.txt generated successfully');
};

generateSitemap();
EOF

# Run the sitemap generator
node "$client_dir/scripts/generate-sitemap.js"

# Add sitemap generation script to package.json
npm pkg set scripts.generate-sitemap="node scripts/generate-sitemap.js"

log "SEO setup completed for $project_dir"

```

### setup-state-management.sh

```sh
#!/bin/bash
# setup-state-management.sh

set -euo pipefail

project_dir="$1"
state_management="${2:-redux}"

if [ -z "$project_dir" ]; then
  echo "Usage: $0 <project-dir> [state-management]"
  echo "State management options: redux (default), mobx"
  exit 1
fi

client_dir="$project_dir/client"
cd "$client_dir" || exit 1

echo "Setting up $state_management for $client_dir"

case "$state_management" in
  redux)
    # Redux setup (as before)
    ;;
  mobx)
    # MobX setup (as before)
    ;;
  *)
    echo "Invalid state management type. Choose 'redux' or 'mobx'."
    exit 1
    ;;
esac

echo "$state_management setup completed for $client_dir"

```

### setup-styled-components.sh

```sh
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

```

### setup-workflows.sh

```sh
#!/bin/bash
# setup-workflows.sh

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

mkdir -p "$project_dir/server/src/services" "$project_dir/server/src/models" "$project_dir/server/src/routes"

log "Setting up workflows for $project_dir"

# Create Workflow service
cat << EOF > "$project_dir/server/src/services/workflowService.js"
// src/services/workflowService.js
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});
const axios = require('axios');

class WorkflowService {
  async executeWorkflow(workflowDefinition, triggerData) {
    let currentData = triggerData;

    for (const step of workflowDefinition.steps) {
      currentData = await this.executeStep(step, currentData);
    }

    return currentData;
  }

  async executeStep(step, data) {
    switch (step.type) {
      case 'transform':
        return this.transformData(step.transformation, data);
      case 'apiCall':
        return this.makeAPICall(step.apiDetails, data);
      case 'condition':
        return this.evaluateCondition(step.condition, data) ? data : null;
      default:
        throw new Error(\`Unknown step type: \${step.type}\`);
    }
  }

  transformData(transformation, data) {
    const result = {};
    for (const [key, value] of Object.entries(transformation)) {
      result[key] = value.split('.').reduce((o, i) => o[i], data);
    }
    return result;
  }

  async makeAPICall(apiDetails, data) {
    const { url, method, body } = apiDetails;
    const response = await axios({ method, url, data: body });
    return response.data;
  }

  evaluateCondition(condition, data) {
    const { left, operator, right } = condition;
    const leftValue = left.split('.').reduce((o, i) => o[i], data);
    switch (operator) {
      case '==':
        return leftValue == right;
      case '!=':
        return leftValue != right;
      case '>':
        return leftValue > right;
      case '<':
        return leftValue < right;
      default:
        throw new Error(\`Unknown operator: \${operator}\`);
    }
  }
}

module.exports = new WorkflowService();
EOF

# Create Workflow model
cat << EOF > "$project_dir/server/src/models/Workflow.js"
// src/models/Workflow.js
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

class WorkflowModel {
  async createWorkflow(workflowData) {
    const query = 'INSERT INTO workflows(name, description, trigger, steps) VALUES(\$1, \$2, \$3, \$4) RETURNING *';
    const values = [workflowData.name, workflowData.description, workflowData.trigger, JSON.stringify(workflowData.steps)];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getWorkflows() {
    const result = await pool.query('SELECT * FROM workflows');
    return result.rows;
  }

  async getWorkflowById(id) {
    const result = await pool.query('SELECT * FROM workflows WHERE id = \$1', [id]);
    return result.rows[0];
  }
}

module.exports = new WorkflowModel();
EOF

# Create workflow routes
cat << EOF > "$project_dir/server/src/routes/workflowRoutes.js"
// src/routes/workflowRoutes.js
const express = require('express');
const WorkflowModel = require('../models/Workflow');
const WorkflowService = require('../services/workflowService');

const router = express.Router();

router.post('/', async (req, res) => {
  try {
    const workflow = await WorkflowModel.createWorkflow(req.body);
    res.status(201).json(workflow);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

router.get('/', async (req, res) => {
  try {
    const workflows = await WorkflowModel.getWorkflows();
    res.json(workflows);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

router.post('/:id/execute', async (req, res) => {
  try {
    const workflow = await WorkflowModel.getWorkflowById(req.params.id);
    if (!workflow) {
      return res.status(404).json({ message: 'Workflow not found' });
    }
    const result = await WorkflowService.executeWorkflow(workflow, req.body);
    res.json(result);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

module.exports = router;
EOF

log "Workflows setup completed for $project_dir"

```


```

### generate-api-service.sh

```sh
#!/bin/bash
# generate-api-service.sh

set -euo pipefail

project_dir="$1"
api_name="$2"

if [ -z "$project_dir" ] || [ -z "$api_name" ]; then
  echo "Usage: $0 <project-dir> <api-name>"
  exit 1
fi

client_dir="$project_dir/client"
cd "$client_dir" || exit 1

mkdir -p src/services

cat << EOF > "src/services/${api_name}Service.js"
import axios from 'axios';

const API_BASE_URL = process.env.REACT_APP_API_BASE_URL || 'http://localhost:3000/api';

const ${api_name}Service = {
  // Previous methods remain the same

  // Add a new method for handling file uploads
  upload: async (endpoint, file, onUploadProgress) => {
    const formData = new FormData();
    formData.append('file', file);

    try {
      const response = await axios.post(\`\${API_BASE_URL}/\${endpoint}\`, formData, {
        headers: {
          'Content-Type': 'multipart/form-data'
        },
        onUploadProgress
      });
      return response.data;
    } catch (error) {
      console.error('Error uploading file:', error);
      throw error;
    }
  },

  // Add a method for cancellable requests
  getCancellable: (endpoint) => {
    const source = axios.CancelToken.source();
    const promise = axios.get(\`\${API_BASE_URL}/\${endpoint}\`, {
      cancelToken: source.token
    });
    return { promise, cancel: () => source.cancel('Request cancelled') };
  }
};

export default ${api_name}Service;
EOF

echo "Enhanced API service ${api_name}Service created in $client_dir/src/services"

```

### generate-config.sh

```sh
#!/bin/bash
# generate-config.sh

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
cd "$project_dir"

# Create webpack.config.js
cat << EOF > "$client_dir/webpack.config.js"
const path = require('path');
const HtmlWebpackPlugin = require('html-webpack-plugin');
const MiniCssExtractPlugin = require('mini-css-extract-plugin');

module.exports = {
  entry: './src/index.js',
  output: {
    path: path.resolve(__dirname, 'dist'),
    filename: '[name].[contenthash].js',
    clean: true,
  },
  module: {
    rules: [
      {
        test: /\.(js|jsx)$/,
        exclude: /node_modules/,
        use: {
          loader: 'babel-loader',
        },
      },
      {
        test: /\.(scss|css)$/,
        use: [MiniCssExtractPlugin.loader, 'css-loader', 'sass-loader'],
      },
    ],
  },
  plugins: [
    new HtmlWebpackPlugin({
      template: './public/index.html',
    }),
    new MiniCssExtractPlugin({
      filename: '[name].[contenthash].css',
    }),
  ],
  devServer: {
    static: path.join(__dirname, 'dist'),
    port: 3000,
    hot: true,
  },
  optimization: {
    moduleIds: 'deterministic',
    runtimeChunk: 'single',
    splitChunks: {
      cacheGroups: {
        vendor: {
          test: /[\\/]node_modules[\\/]/,
          name: 'vendors',
          chunks: 'all',
        },
      },
    },
  },
};
EOF
log "Webpack config generated in $client_dir"

# Create .babelrc
cat << EOF > "$client_dir/.babelrc"
{
  "presets": [
    ["@babel/preset-env", {
      "targets": {
        "browsers": [">0.25%", "not ie 11", "not op_mini all"]
      }
    }],
    "@babel/preset-react"
  ],
  "plugins": [
    "@babel/plugin-proposal-class-properties",
    "@babel/plugin-transform-runtime"
  ]
}
EOF
echo "Babel config generated in $client_dir"

# Create tsconfig.json
cat << EOF > "$client_dir/tsconfig.json"
{
  "compilerOptions": {
    "target": "es5",
    "lib": ["dom", "dom.iterable", "esnext"],
    "allowJs": true,
    "skipLibCheck": true,
    "esModuleInterop": true,
    "allowSyntheticDefaultImports": true,
    "strict": true,
    "forceConsistentCasingInFileNames": true,
    "module": "esnext",
    "moduleResolution": "node",
    "resolveJsonModule": true,
    "isolatedModules": true,
    "noEmit": true,
    "jsx": "react-jsx",
    "baseUrl": "src"
  },
  "include": ["src"]
}
EOF
log "TypeScript config generated in $client_dir"

echo "Configuration files created successfully for $client_dir"

```

### generate-layout.sh

```sh
#!/bin/bash
# generate-layout.sh

project_dir="$1"
layout_type="$2"

if [ -z "$project_dir" ] || [ -z "$layout_type" ]; then
  echo "Usage: $0 <project-dir> <layout-type>"
  echo "Layout types: dashboard, landing"
  exit 1
fi

client_dir="$project_dir/client"
# cd "$client_dir"

mkdir -p "$client_dir/src/layouts"

generate_layout() {
  local name="$1"
  local file="$client_dir/src/layouts/${name}Layout.js"

  cat << EOF > "$file"
import React from 'react';
import styled from 'styled-components';

const ${name}Wrapper = styled.div\`
  display: flex;
  flex-direction: column;
  min-height: 100vh;
\`;

const Header = styled.header\`
  padding: 1rem;
  background-color: \${({ theme }) => theme.colors.background};
\`;

const Main = styled.main\`
  flex: 1;
  padding: 1rem;
\`;

const Footer = styled.footer\`
  padding: 1rem;
  background-color: \${({ theme }) => theme.colors.background};
\`;

const ${name}Layout = ({ children }) => (
  <${name}Wrapper>
    <Header>Header</Header>
    <Main>{children}</Main>
    <Footer>Footer</Footer>
  </${name}Wrapper>
);

export default ${name}Layout;
EOF

  echo "${name} layout generated in $file"
}

case "$layout_type" in
  dashboard)
    generate_layout "Dashboard"
    ;;
  landing)
    generate_layout "Landing"
    ;;
  *)
    echo "Invalid layout type. Choose 'dashboard' or 'landing'."
    exit 1
    ;;
esac

```

### generate-tests.sh

```sh
#!/bin/bash
# generate-tests.sh

set -e

project_name=$1

if [ -z "$project_name" ]; then
    echo "Usage: $0 <project-name>"
    exit 1
fi

project_dir="/d/Node/projects/$project_name"
tests_dir="$project_dir/server/tests"

echo "Creating test/unit and test/integration directories..."
mkdir -p "$tests_dir/unit" "$tests_dir/integration"

# Generate a sample unit test
cat << EOF > "$tests_dir/unit/sample.test.js"
describe('Sample Test', () => {
  it('should pass', () => {
    expect(true).toBe(true);
  });
});
EOF

# Generate a sample integration test
cat << EOF > "$tests_dir/integration/api.test.js"
const request = require('supertest');
const app = require('../../src/app');

describe('API Tests', () => {
  it('should return 200 OK for GET /', async () => {
    const res = await request(app).get('/');
    expect(res.statusCode).toBe(200);
  });
});
EOF

echo "Sample tests generated in $tests_dir"

```

### init-git.sh

```sh
#!/bin/bash
# init-git.sh
# Usage: ./init-git.sh <project-name>

project_name=$1
project_dir="/d/Node/projects/$project_name"

cd "$project_dir"

# Initialize Git
git init

# Create .gitignore
cat << EOF > .gitignore
# Dependencies
node_modules/
/.pnp
.pnp.js

# Testing
/coverage

# Production
/build

# Misc
.DS_Store
.env.local
.env.development.local
.env.test.local
.env.production.local

# Logs
npm-debug.log*
yarn-debug.log*
yarn-error.log*

# Environment variables
.env

# IDE specific files
.idea/
.vscode/
*.swp
*.swo

# Operating System Files
.DS_Store
.DS_Store?
._*
.Spotlight-V100
.Trashes
ehthumbs.db
Thumbs.db

# Optional npm cache directory
.npm

# Optional eslint cache
.eslintcache

# Optional REPL history
.node_repl_history

# Output of 'npm pack'
*.tgz

# Yarn Integrity file
.yarn-integrity

# dotenv environment variables file
.env
EOF

git add .
git commit -m "Initial commit"

echo "Git initialized with .gitignore for $project_name"

```

### master-setup.sh

```sh
#!/bin/bash
# master-setup.sh

set -euo pipefail

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

project_name=$1
log "$project_name"

# Parse command line options
verbose=false
while getopts "v" opt; do
  case $opt in
    v) verbose=true ;;
    *) echo "Usage: $0 [-v] <project-name>"; exit 1 ;;
  esac
done
shift $((OPTIND-1))

if $verbose; then
  set -x
fi

if [ -z "$project_name" ]; then
  echo "Usage: $0 [-v] <project-name>"
  exit 1
fi

project_dir="/d/Node/projects/$project_name"
log "$project_dir"
utils_dir="/d/Node/utils"

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

run_script() {
  local script=$1
  shift
  log "Running $script..."
  if [ -f "$utils_dir/$script" ]; then
    if ! "$utils_dir/$script" "$@"; then
      error_exit "Script $script failed. Stopping setup."
    fi
  else
    log "Warning: $script not found. Skipping..."
  fi
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

cleanup() {
  log "Setup interrupted. Cleaning up..."
  # Add cleanup actions here
  # For example, you might want to remove partially created directories
  # rm -rf "$project_dir"
}

trap cleanup EXIT

# Create project directory
mkdir -p "$project_dir"
cd "$project_dir"

# # Core setup
# run_script setup-project.sh "$project_name"
# run_script set-configs.sh "$project_dir" "$project_name"
# run_script generate-tests.sh "$project_name"
# run_script init-git.sh "$project_name"

# # Client setup
# run_script setup-sass.sh "$project_dir"
# run_script setup-styled-components.sh "$project_dir"
# run_script setup-redux.sh "$project_dir"
# # run_script setup-redux-actions.sh "$project_name"
# run_script generate-config.sh "$project_dir"
# # run_script generate-config.sh "$project_dir" webpack
# # run_script generate-config.sh "$project_dir" babel
# # run_script generate-config.sh "$project_dir" tsconfig
# # run_script generate-layout.sh "$project_dir" dashboard
# run_script setup-state-management.sh "$project_dir" redux
# run_script generate-api-service.sh "$project_dir" api
# run_script setup-responsive-design.sh "$project_dir"
# run_script setup-accessibility.sh "$project_dir"
# run_script setup-performance-optimization.sh "$project_dir"

# # Optional Client setups
# read -p "Do you want to set up animations with Framer Motion? (y/n) " setup_animation
# if [[ $setup_animation =~ ^[Yy]$ ]]; then
#   run_script setup-animation.sh "$project_dir" framer-motion
# fi

# read -p "Do you want to set up internationalization (i18n)? (y/n) " setup_i18n
# if [[ $setup_i18n =~ ^[Yy]$ ]]; then
#   run_script setup-i18n.sh "$project_dir"
# fi

# read -p "Do you want to set up SEO? (y/n) " setup_seo
# if [[ $setup_seo =~ ^[Yy]$ ]]; then
#   run_script setup-seo.sh "$project_dir"
# fi

# read -p "Do you want to set up as a Progressive Web App (PWA)? (y/n) " setup_pwa
# if [[ $setup_pwa =~ ^[Yy]$ ]]; then
#   run_script setup-pwa.sh "$project_dir"
# fi

# # Server setup
# read -s -p "Enter PostgreSQL password for ${project_name}_user: " db_password
# echo
# run_script setup-postgresql.sh "$project_name" "${project_name}_user" "$db_password"
# run_script setup-auth.sh "$project_name"
# run_script run-migrations.sh "$project_name" "${project_name}_user" "$db_password"
# run_script enhance-error-handling.sh "$project_name"

# # API Route setup
# read -p "Do you want to create an API route? (y/n) " create_route
# if [[ $create_route =~ ^[Yy]$ ]]; then
#   read -p "Enter the route name: " route_name
#   run_script create-api-route.sh "$project_name" "$route_name"
# fi

# # Noloco-like functionality setup
# read -p "Do you want to set up Noloco-like functionalities? (y/n) " setup_noloco
# if [[ $setup_noloco =~ ^[Yy]$ ]]; then
#   run_script setup-api-generation.sh "$project_dir"
#   run_script setup-rbac.sh "$project_dir"
#   run_script setup-workflows.sh "$project_dir"
#   run_script setup-dynamic-ui.sh "$project_dir"
#   run_script setup-file-management.sh "$project_dir"
#   run_script setup-email-templates.sh "$project_dir"
#   run_script setup-dashboard.sh "$project_dir"
#   run_script setup-noloco-theme.sh "$project_dir" "both"
#   run_script setup-data-modeling.sh "$project_dir"
# fi

read -p "Do you want to set up component documentation? (y/n) " setup_component_docs
if [[ $setup_component_docs =~ ^[Yy]$ ]]; then
  run_script setup-component-docs.sh "$project_dir"
fi

log "Project setup complete."
echo "Project $project_name has been set up successfully!"

# Remove the trap before exiting normally
trap - EXIT

```

### run-migrations.sh

```sh
#!/bin/bash
# run-migrations.sh


set -euo pipefail

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

project_name="$1"
db_user="$2"
db_pass="$3"

if [ -z "$project_name" ] || [ -z "$db_user" ] || [ -z "$db_pass" ]; then
  error_exit "Usage: $0 <project-name> <db-user> <db-pass>"
fi

log "Setting up migrations for $project_name"

project_dir="/d/Node/projects/$project_name"
server_dir="$project_dir/server"

if [ -z "$project_name" ]; then
  echo "Usage: $0 <project-name>"
  exit 1
fi

# Ensure the server directory exists
if [ ! -d "$server_dir" ]; then
  error_exit "Server directory not found: $server_dir"
fi

# Change to the server directory
cd "$server_dir" || error_exit "Failed to change to server directory"

# Ensure PostgreSQL is running
pg_isready || error_exit "PostgreSQL is not running"

# Check if DATABASE_URL is set
if [ -z "${DATABASE_URL:-}" ]; then
  error_exit "DATABASE_URL is not set"
fi

PGPASSWORD="${db_pass}" psql -U postgres -d "${project_name}" -c "GRANT ALL ON SCHEMA public TO ${db_user};"

# Run migrations
log "Running database migrations..."

if ! psql "$DATABASE_URL" -v ON_ERROR_STOP=1 <<-EOSQL
  CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
  );
EOSQL
then
  error_exit "Failed to run migrations"
fi

# Add any additional migrations here

log "Database migrations completed successfully."

```

### set-configs.sh

```sh
#!/bin/bash
# set-configs.sh

set -e

project_dir="$1"
project_name="$2"

if [ -z "$project_dir" ] || [ -z "$project_name" ]; then
    echo "Usage: $0 <project-dir> <project-name>"
    exit 1
fi

server_dir="$project_dir/server"
cd "$server_dir" || exit 1

# Create package.json
cat << EOF > ./package.json
{
  "name": "$project_name",
  "version": "1.0.0",
  "description": "Project created with DemTech Master Script Project Setup.",
  "main": "src/index.js",
  "scripts": {
    "start": "node src/index.js",
    "dev": "nodemon src/index.js",
    "test": "jest",
    "test:watch": "jest --watch",
    "test:coverage": "jest --coverage"
  },
  "author": "",
  "license": "ISC",
  "dependencies": {
    "express": "^4.17.1",
    "pg": "^8.7.1",
    "sequelize": "^6.6.5",
    "dotenv": "^10.0.0",
    "cors": "^2.8.5"
  },
  "devDependencies": {
    "jest": "^27.0.0",
    "supertest": "^6.1.3",
    "nodemon": "^2.0.12"
  }
}
EOF

# Create jest.config.js
cat << EOF > ./jest.config.js
module.exports = {
  testEnvironment: 'node',
  testMatch: ['**/tests/**/*.js', '**/?(*.)+(spec|test).js'],
  collectCoverageFrom: ['src/**/*.js'],
  coveragePathIgnorePatterns: ['/node_modules/', '/tests/'],
  coverageReporters: ['text', 'lcov'],
  setupFilesAfterEnv: ['./jest.setup.js']
};
EOF

# Create jest.setup.js
cat << EOF > ./jest.setup.js
// jest.setup.js

require('dotenv').config();

jest.setTimeout(30000);

expect.extend({
  toBeWithinRange(received, floor, ceiling) {
    const pass = received >= floor && received <= ceiling;
    if (pass) {
      return {
        message: () => \`expected \${received} not to be within range \${floor} - \${ceiling}\`,
        pass: true,
      };
    } else {
      return {
        message: () => \`expected \${received} to be within range \${floor} - \${ceiling}\`,
        pass: false,
      };
    }
  },
});

beforeAll(() => {
  console.log('Starting all tests...');
});

afterAll(() => {
  console.log('All tests completed.');
});

if (typeof fetch === 'undefined') {
  global.fetch = require('node-fetch');
}

global.createMockResponse = (data, status = 200) => {
  return new Response(JSON.stringify(data), {
    status,
    headers: { 'Content-Type': 'application/json' },
  });
};

global.wait = (ms) => new Promise(resolve => setTimeout(resolve, ms));

const mockDate = new Date('2024-08-05T12:00:00Z');
global.Date = class extends Date {
  constructor() {
    return mockDate;
  }
};
EOF

echo "Configuration files created successfully for $project_name"
echo "Jest configuration files created in $server_dir"

```

### setup-accessibility.sh

```sh
#!/bin/bash
# setup-accessibility.sh

set -euo pipefail

project_dir="$1"

if [ -z "$project_dir" ]; then
  echo "Usage: $0 <project-dir>"
  exit 1
fi

client_dir="$project_dir/client"
cd "$client_dir" || exit 1

# Create a FocusTrap component
cat << EOF > src/components/FocusTrap.js
import React, { useRef, useEffect } from 'react';

const FocusTrap = ({ children }) => {
  const trapRef = useRef(null);

  useEffect(() => {
    const trapElement = trapRef.current;
    const focusableElements = trapElement.querySelectorAll(
      'button, [href], input, select, textarea, [tabindex]:not([tabindex="-1"])'
    );
    const firstElement = focusableElements[0];
    const lastElement = focusableElements[focusableElements.length - 1];

    const handleKeyDown = (e) => {
      if (e.key === 'Tab') {
        if (e.shiftKey && document.activeElement === firstElement) {
          e.preventDefault();
          lastElement.focus();
        } else if (!e.shiftKey && document.activeElement === lastElement) {
          e.preventDefault();
          firstElement.focus();
        }
      }
    };

    trapElement.addEventListener('keydown', handleKeyDown);
    return () => trapElement.removeEventListener('keydown', handleKeyDown);
  }, []);

  return <div ref={trapRef}>{children}</div>;
};

export default FocusTrap;
EOF

echo "Enhanced accessibility setup completed for $client_dir"

```

### setup-animation.sh

```sh
#!/bin/bash
# setup-animation.sh

set -euo pipefail

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

project_dir="$1"
animation_lib="${2:-framer-motion}"

if [ -z "$project_dir" ]; then
  error_exit "Usage: $0 <project-dir> [animation-library]"
fi

client_dir="$project_dir/client"
cd "$client_dir" || error_exit "Failed to change to client directory"

log "Setting up $animation_lib for $client_dir"

case "$animation_lib" in
  framer-motion)
    npm install framer-motion

    # Create a sample animated component
    cat << EOF > src/components/AnimatedBox.js
import React from 'react';
import { motion } from 'framer-motion';

const AnimatedBox = () => (
  <motion.div
    initial={{ opacity: 0, scale: 0.5 }}
    animate={{ opacity: 1, scale: 1 }}
    transition={{ duration: 0.5 }}
    whileHover={{ scale: 1.1 }}
    whileTap={{ scale: 0.9 }}
    style={{
      width: 100,
      height: 100,
      background: 'blue',
      borderRadius: 10,
    }}
  />
);

export default AnimatedBox;
EOF
    ;;
  react-spring)
    npm install react-spring

    # Create a sample animated component
    cat << EOF > src/components/AnimatedBox.js
import React from 'react';
import { useSpring, animated } from 'react-spring';

const AnimatedBox = () => {
  const props = useSpring({
    to: { opacity: 1, scale: 1 },
    from: { opacity: 0, scale: 0.5 },
    config: { duration: 500 },
  });

  return (
    <animated.div
      style={{
        ...props,
        width: 100,
        height: 100,
        background: 'blue',
        borderRadius: 10,
      }}
    />
  );
};

export default AnimatedBox;
EOF
    ;;
  react-transition-group)
    npm install react-transition-group

    # Create a sample animated component
    cat << EOF > src/components/AnimatedBox.js
import React, { useState } from 'react';
import { CSSTransition } from 'react-transition-group';
import './AnimatedBox.css';

const AnimatedBox = () => {
  const [inProp, setInProp] = useState(false);
  return (
    <div>
      <CSSTransition in={inProp} timeout={300} classNames="fade">
        <div className="box" />
      </CSSTransition>
      <button onClick={() => setInProp(!inProp)}>
        Click to Toggle
      </button>
    </div>
  );
};

export default AnimatedBox;
EOF

    # Create CSS for the animated component
    cat << EOF > src/components/AnimatedBox.css
.box {
  width: 100px;
  height: 100px;
  background: blue;
  border-radius: 10px;
}

.fade-enter {
  opacity: 0;
}
.fade-enter-active {
  opacity: 1;
  transition: opacity 300ms ease-in;
}
.fade-exit {
  opacity: 1;
}
.fade-exit-active {
  opacity: 0;
  transition: opacity 300ms ease-in;
}
EOF
    ;;
  *)
    echo "Invalid animation library. Choose 'framer-motion', 'react-spring', or 'react-transition-group'."
    exit 1
    ;;
esac

echo "$animation_lib setup completed for $client_dir directory."

```

### setup-api-generation.sh

```sh
#!/bin/bash
# setup-api-generation.sh

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

server_dir="$project_dir/server"
mkdir -p "$server_dir/src/services" "$server_dir/src/routes"

log "Setting up API generation for $project_dir"

# Create API generation service
cat << EOF > "$server_dir/src/services/apiGenerationService.js"
// src/services/apiGenerationService.js
const express = require('express');
const { query } = require('../utils/db');

class APIGenerationService {
  generateAPI(modelName, fields) {
    const router = express.Router();

    // Create
    router.post('/', async (req, res) => {
      try {
        const keys = Object.keys(req.body);
        const values = Object.values(req.body);
        const sqlQuery = \`INSERT INTO \${modelName} (\${keys.join(', ')}) VALUES (\${values.map((_, i) => '$' + (i + 1)).join(', ')}) RETURNING *\`;
        const result = await query(sqlQuery, values);
        res.status(201).json(result.rows[0]);
      } catch (error) {
        res.status(400).json({ error: error.message });
      }
    });

    // Read all
    router.get('/', async (req, res) => {
      try {
        const result = await query(\`SELECT * FROM \${modelName}\`);
        res.json(result.rows);
      } catch (error) {
        res.status(500).json({ error: error.message });
      }
    });

    // Read one
    router.get('/:id', async (req, res) => {
      try {
        const result = await query(\`SELECT * FROM \${modelName} WHERE id = \$1\`, [req.params.id]);
        if (result.rows.length === 0) return res.status(404).json({ message: 'Document not found' });
        res.json(result.rows[0]);
      } catch (error) {
        res.status(500).json({ error: error.message });
      }
    });

    // Update
    router.put('/:id', async (req, res) => {
      try {
        const keys = Object.keys(req.body);
        const values = Object.values(req.body);
        const sqlQuery = \`UPDATE \${modelName} SET \${keys.map((key, i) => \`\${key} = \$\${i + 1}\`).join(', ')} WHERE id = \$\${keys.length + 1} RETURNING *\`;
        const result = await query(sqlQuery, [...values, req.params.id]);
        if (result.rows.length === 0) return res.status(404).json({ message: 'Document not found' });
        res.json(result.rows[0]);
      } catch (error) {
        res.status(400).json({ error: error.message });
      }
    });

    // Delete
    router.delete('/:id', async (req, res) => {
      try {
        const result = await query(\`DELETE FROM \${modelName} WHERE id = \$1 RETURNING *\`, [req.params.id]);
        if (result.rows.length === 0) return res.status(404).json({ message: 'Document not found' });
        res.json({ message: 'Document deleted successfully' });
      } catch (error) {
        res.status(500).json({ error: error.message });
      }
    });

    return router;
  }
}

module.exports = new APIGenerationService();
EOF

# Create dynamic API routes file
cat << EOF > "$server_dir/src/routes/dynamicApiRoutes.js"
// src/routes/dynamicApiRoutes.js
const express = require('express');
const apiGenerationService = require('../services/apiGenerationService');
const dataModelingService = require('../services/dataModelingService');

const router = express.Router();

// Function to set up dynamic routes
const setupDynamicRoutes = async () => {
  try {
    const models = await dataModelingService.getModels();
    models.forEach(model => {
      router.use(\`/\${model.name.toLowerCase()}\`, apiGenerationService.generateAPI(model.name, model.fields));
    });
    console.log('Dynamic API routes set up successfully');
  } catch (error) {
    console.error('Error setting up dynamic API routes:', error);
  }
};

// Set up routes immediately and export the router
setupDynamicRoutes();

module.exports = router;
EOF

log "API generation setup completed for $project_dir"

```

### setup-auth.sh

```sh
#!/bin/bash
# setup-auth.sh
# Usage: ./setup-auth.sh <project-name>

set -euo pipefail

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

project_name=$1

if [ -z "$project_name" ]; then
  echo "Usage: $0 <project-name>"
  exit 1
fi

project_dir="/d/Node/projects/$project_name"
server_dir="$project_dir/server"

# Install necessary packages
cd "$project_dir"
npm install jsonwebtoken bcryptjs

# Create an authentication middleware
mkdir -p "$server_dir/src/middleware"
cat << EOF > "$server_dir/src/middleware/auth.js"
// projects/grow-tracking-app/server/src/middleware/auth.js
const jwt = require('jsonwebtoken');

module.exports = function (req, res, next) {
  // Get token from header
  const token = req.header('x-auth-token');

  // Check if no token
  if (!token) {
    return res.status(401).json({ msg: 'No token, authorization denied' });
  }

  // Verify token
  try {
    const decoded = jwt.verify(token, process.env.JWT_SECRET);
    req.user = decoded.user;
    next();
  } catch (err) {
    res.status(401).json({ msg: 'Token is not valid' });
  }
};
EOF

# Create authentication routes
mkdir -p "$server_dir/src/routes"
cat << EOF > "$server_dir/src/routes/auth.js"
const express = require('express');
const router = express.Router();
const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');
const User = require('../models/User');
const auth = require('../middleware/auth');
require('dotenv').config();

// @route   POST api/auth/register
// @desc    Register user
// @access  Public
router.post('/register', async (req, res) => {
  const { name, email, password } = req.body;

  try {
    let user = await User.findOne({ email });
    if (user) {
      return res.status(400).json({ msg: 'User already exists' });
    }

    user = new User({
      name,
      email,
      password,
    });

    const salt = await bcrypt.genSalt(10);
    user.password = await bcrypt.hash(password, salt);

    await user.save();

    const payload = {
      user: {
        id: user.id,
      },
    };

    jwt.sign(
      payload,
      process.env.JWT_SECRET,
      { expiresIn: 3600 },
      (err, token) => {
        if (err) throw err;
        res.json({ token });
      }
    );
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Server error');
  }
});

// @route   POST api/auth/login
// @desc    Authenticate user & get token
// @access  Public
router.post('/login', async (req, res) => {
  const { email, password } = req.body;

  try {
    let user = await User.findOne({ email });
    if (!user) {
      return res.status(400).json({ msg: 'Invalid Credentials' });
    }

    const isMatch = await bcrypt.compare(password, user.password);
    if (!isMatch) {
      return res.status(400).json({ msg: 'Invalid Credentials' });
    }

    const payload = {
      user: {
        id: user.id,
      },
    };

    jwt.sign(
      payload,
      process.env.JWT_SECRET,
      { expiresIn: 3600 },
      (err, token) => {
        if (err) throw err;
        res.json({ token });
      }
    );
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Server error');
  }
});

// @route   GET api/auth/user
// @desc    Get logged in user
// @access  Private
router.get('/user', auth, async (req, res) => {
  try {
    const user = await User.findById(req.user.id).select('-password');
    res.json(user);
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Server Error');
  }
});

module.exports = router;
EOF

# Update .env file with JWT secret
echo "JWT_SECRET=mySecretKey" >> "$server_dir/.env"

echo "Authentication and authorization set up for $project_name"

```

### setup-component-docs.sh

```sh
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

```

### setup-dashboard.sh

```sh
#!/bin/bash
# setup-dashboard.sh

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

log "Setting up dashboard for $project_dir"

mkdir -p "$project_dir/client/src/components/Dashboard"

# Create Dashboard component
cat << EOF > "$project_dir/client/src/components/Dashboard/Dashboard.js"
import React, { useState, useEffect } from 'react';
import DynamicTable from '../DynamicUI/DynamicTable';

const Dashboard = () => {
  const [dashboardData, setDashboardData] = useState({});

  useEffect(() => {
    // Fetch dashboard data from API
    const fetchDashboardData = async () => {
      // Replace with actual API call
      const response = await fetch('/api/dashboard');
      const data = await response.json();
      setDashboardData(data);
    };

    fetchDashboardData();
  }, []);

  return (
    <div>
      <h1>Dashboard</h1>
      {Object.entries(dashboardData).map(([key, value]) => (
        <div key={key}>
          <h2>{key}</h2>
          {Array.isArray(value) ? (
            <DynamicTable
              data={value}
              columns={Object.keys(value[0]).map(col => ({ key: col, label: col }))}
            />
          ) : (
            <p>{value}</p>
          )}
        </div>
      ))}
    </div>
  );
};

export default Dashboard;
EOF

# Create DashboardWidget component
cat << EOF > "$project_dir/client/src/components/Dashboard/DashboardWidget.js"
import React from 'react';

const DashboardWidget = ({ title, value, icon }) => {
  return (
    <div className="dashboard-widget">
      <div className="widget-icon">{icon}</div>
      <div className="widget-content">
        <h3>{title}</h3>
        <p>{value}</p>
      </div>
    </div>
  );
};

export default DashboardWidget;
EOF

# Update App.js to include Dashboard
app_js_path="$project_dir/client/src/App.js"
if [ -f "$app_js_path" ]; then
  sed -i "/import React/a import Dashboard from './components/Dashboard/Dashboard';" "$app_js_path"
  sed -i "/<div className=\"App\">/a <Dashboard />" "$app_js_path"
else
  log "Warning: App.js not found at $app_js_path. Dashboard import not added."
fi

log "Dashboard setup completed for $project_dir"

```

### setup-data-modeling.sh

```sh
#!/bin/bash
# setup-data-modeling.sh

set -euo pipefail

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

project_dir="$1"
client_dir="$project_dir/client"

log "Setting up data modeling for $project_dir"

cd "$client_dir" || error_exit "Failed to change to client directory"

log "Installing class-variance-authority..."
npm install class-variance-authority

# Install Tailwind CSS
log "Installing Tailwind CSS..."
npm install -D tailwindcss postcss autoprefixer
npx tailwindcss init -p

# Update tailwind.config.js
log "Updating Tailwind CSS configuration..."
cat << EOF > tailwind.config.js
/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./src/**/*.{js,jsx,ts,tsx}",
  ],
  theme: {
    extend: {},
  },
  plugins: [],
}
EOF

# Update src/index.css
log "Updating src/index.css with Tailwind directives..."
cat << EOF > src/index.css
@tailwind base;
@tailwind components;
@tailwind utilities;
EOF

# Initialize shadcn-ui
npx shadcn-ui@latest init
log "Initializing shadcn-ui..."
echo '{
  "style": "default",
  "rsc": false,
  "tailwind": {
    "config": "tailwind.config.js",
    "css": "src/index.css",
    "baseColor": "slate",
    "cssVariables": true
  },
  "aliases": {
    "components": "@/components",
    "utils": "@/lib/utils"
  }
}' > components.json

# Add alert component
log "Adding shadcn-ui alert component..."
echo "y" | npx shadcn-ui@latest add alert || error_exit "Failed to add shadcn-ui alert component"

log "Data modeling setup completed for $client_dir"

```

### setup-dynamic-ui.sh

```sh
#!/bin/bash
# setup-dynamic-ui.sh

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

log "Setting up dynamic UI for $project_dir"

mkdir -p "$project_dir/client/src/components/DynamicUI"

# Create DynamicForm component
cat << EOF > "$project_dir/client/src/components/DynamicUI/DynamicForm.js"
import React from 'react';
import { useForm } from 'react-hook-form';

const DynamicForm = ({ fields, onSubmit }) => {
  const { register, handleSubmit, formState: { errors } } = useForm();

  const renderField = (field) => {
    switch (field.type) {
      case 'text':
      case 'email':
      case 'number':
        return (
          <input
            type={field.type}
            {...register(field.name, field.validation)}
            placeholder={field.placeholder}
          />
        );
      case 'select':
        return (
          <select {...register(field.name, field.validation)}>
            {field.options.map((option, index) => (
              <option key={index} value={option.value}>
                {option.label}
              </option>
            ))}
          </select>
        );
      case 'textarea':
        return (
          <textarea
            {...register(field.name, field.validation)}
            placeholder={field.placeholder}
          />
        );
      default:
        return null;
    }
  };

  return (
    <form onSubmit={handleSubmit(onSubmit)}>
      {fields.map((field, index) => (
        <div key={index}>
          <label>{field.label}</label>
          {renderField(field)}
          {errors[field.name] && <span>{errors[field.name].message}</span>}
        </div>
      ))}
      <button type="submit">Submit</button>
    </form>
  );
};

export default DynamicForm;
EOF

# Create DynamicTable component
cat << EOF > "$project_dir/client/src/components/DynamicUI/DynamicTable.js"
import React from 'react';

const DynamicTable = ({ data, columns }) => {
  return (
    <table>
      <thead>
        <tr>
          {columns.map((column, index) => (
            <th key={index}>{column.label}</th>
          ))}
        </tr>
      </thead>
      <tbody>
        {data.map((row, rowIndex) => (
          <tr key={rowIndex}>
            {columns.map((column, columnIndex) => (
              <td key={columnIndex}>{row[column.key]}</td>
            ))}
          </tr>
        ))}
      </tbody>
    </table>
  );
};

export default DynamicTable;
EOF

echo "Dynamic UI components setup completed for $project_dir"

```

### setup-email-templates.sh

```sh
#!/bin/bash
# setup-email-templates.sh

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

log "Setting up email templates for $project_dir"

mkdir -p "$project_dir/server/src/services"
mkdir -p "$project_dir/server/src/models"
mkdir -p "$project_dir/server/src/routes"

cd "$project_dir/server" || error_exit "Failed to change to server directory"
npm install nodemailer handlebars


# Create EmailService
cat << EOF > "$project_dir/server/src/services/emailService.js"
const nodemailer = require('nodemailer');
const handlebars = require('handlebars');
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

class EmailService {
  constructor() {
    this.transporter = nodemailer.createTransport({
      host: process.env.SMTP_HOST,
      port: process.env.SMTP_PORT,
      auth: {
        user: process.env.SMTP_USER,
        pass: process.env.SMTP_PASS
      }
    });
  }

  async sendEmail(to, subject, template, context) {
    const compiledTemplate = handlebars.compile(template);
    const html = compiledTemplate(context);

    const mailOptions = {
      from: process.env.EMAIL_FROM,
      to,
      subject,
      html
    };

    await this.transporter.sendMail(mailOptions);
  }

  async saveTemplate(templateData) {
    const query = 'INSERT INTO email_templates(name, subject, body) VALUES(\$1, \$2, \$3) RETURNING *';
    const values = [templateData.name, templateData.subject, templateData.body];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getTemplates() {
    const result = await pool.query('SELECT * FROM email_templates');
    return result.rows;
  }

  async getTemplateByName(name) {
    const result = await pool.query('SELECT * FROM email_templates WHERE name = \$1', [name]);
    return result.rows[0];
  }
}

module.exports = new EmailService();
EOF

# Create EmailTemplate model
cat << EOF > "$project_dir/server/src/models/EmailTemplate.js"
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

class EmailTemplateModel {
  async saveTemplate(templateData) {
    const query = 'INSERT INTO email_templates(name, subject, body) VALUES(\$1, \$2, \$3) RETURNING *';
    const values = [templateData.name, templateData.subject, templateData.body];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getTemplates() {
    const result = await pool.query('SELECT * FROM email_templates');
    return result.rows;
  }

  async getTemplateByName(name) {
    const result = await pool.query('SELECT * FROM email_templates WHERE name = \$1', [name]);
    return result.rows[0];
  }
}

module.exports = new EmailTemplateModel();
EOF

# Create email template routes
cat << EOF > "$project_dir/server/src/routes/emailTemplateRoutes.js"
const express = require('express');
const EmailService = require('../services/emailService');
const router = express.Router();

router.post('/', async (req, res) => {
  try {
    const template = await EmailService.saveTemplate(req.body);
    res.status(201).json(template);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

router.get('/', async (req, res) => {
  try {
    const templates = await EmailService.getTemplates();
    res.json(templates);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

router.post('/send', async (req, res) => {
  try {
    const { templateName, to, context } = req.body;
    const template = await EmailService.getTemplateByName(templateName);
    if (!template) {
      return res.status(404).json({ message: 'Template not found' });
    }
    await EmailService.sendEmail(to, template.subject, template.body, context);
    res.json({ message: 'Email sent successfully' });
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

module.exports = router;
EOF

log "Email templates setup completed for $project_dir"

```

### setup-file-management.sh

```sh
#!/bin/bash
# setup-file-management.sh

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

log "Setting up file management for $project_dir"

mkdir -p "$project_dir/server/src/services"
mkdir -p "$project_dir/server/src/routes"
mkdir -p "$project_dir/server/src/models"

cd "$project_dir/server" || error_exit "Failed to change to server directory"
npm install multer aws-sdk

# Create FileService
cat << EOF > "$project_dir/server/src/services/fileService.js"
const aws = require('aws-sdk');
const multer = require('multer');
const multerS3 = require('multer-s3');
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

aws.config.update({
  secretAccessKey: process.env.AWS_SECRET_ACCESS_KEY,
  accessKeyId: process.env.AWS_ACCESS_KEY_ID,
  region: process.env.AWS_REGION
});

const s3 = new aws.S3();

const upload = multer({
  storage: multerS3({
    s3: s3,
    bucket: process.env.S3_BUCKET,
    acl: 'public-read',
    metadata: function (req, file, cb) {
      cb(null, {fieldName: file.fieldname});
    },
    key: function (req, file, cb) {
      cb(null, Date.now().toString() + '-' + file.originalname)
    }
  })
});

class FileService {
  async saveFile(fileData) {
    const query = 'INSERT INTO files(filename, originalname, mimetype, size, url, uploadedby) VALUES(\$1, \$2, \$3, \$4, \$5, \$6) RETURNING *';
    const values = [fileData.filename, fileData.originalname, fileData.mimetype, fileData.size, fileData.url, fileData.uploadedby];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getFilesByUser(userId) {
    const query = 'SELECT * FROM files WHERE uploadedby = \$1';
    const result = await pool.query(query, [userId]);
    return result.rows;
  }
}

module.exports = { upload, FileService: new FileService() };
EOF

# Create File model
cat << EOF > "$project_dir/server/src/models/File.js"
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

class FileModel {
  async saveFile(fileData) {
    const query = 'INSERT INTO files(filename, originalname, mimetype, size, url, uploadedby) VALUES(\$1, \$2, \$3, \$4, \$5, \$6) RETURNING *';
    const values = [fileData.filename, fileData.originalname, fileData.mimetype, fileData.size, fileData.url, fileData.uploadedby];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getFilesByUser(userId) {
    const query = 'SELECT * FROM files WHERE uploadedby = \$1';
    const result = await pool.query(query, [userId]);
    return result.rows;
  }
}

module.exports = new FileModel();
EOF

# Create file routes
cat << EOF > "$project_dir/server/src/routes/fileRoutes.js"
const express = require('express');
const { upload, FileService } = require('../services/fileService');
const router = express.Router();

router.post('/upload', upload.single('file'), async (req, res) => {
  try {
    const fileData = {
      filename: req.file.key,
      originalname: req.file.originalname,
      mimetype: req.file.mimetype,
      size: req.file.size,
      url: req.file.location,
      uploadedby: req.user.id
    };
    const file = await FileService.saveFile(fileData);
    res.status(201).json(file);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

router.get('/', async (req, res) => {
  try {
    const files = await FileService.getFilesByUser(req.user.id);
    res.json(files);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

module.exports = router;
EOF

log "File management setup completed for $project_dir"

```

### setup-i18n.sh

```sh
#!/bin/bash
# setup-i18n.sh

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

log "Setting up internationalization for $client_dir"

# Install react-i18next, i18next, and related packages
npm install react-i18next i18next i18next-http-backend i18next-browser-languagedetector

# Create i18n configuration
mkdir -p src/i18n
cat << EOF > src/i18n/i18n.js
import i18n from 'i18next';
import { initReactI18next } from 'react-i18next';
import Backend from 'i18next-http-backend';
import LanguageDetector from 'i18next-browser-languagedetector';

i18n
  .use(Backend)
  .use(LanguageDetector)
  .use(initReactI18next)
  .init({
    fallbackLng: 'en',
    debug: process.env.NODE_ENV !== 'production',
    interpolation: {
      escapeValue: false,
    },
    backend: {
      loadPath: '/locales/{{lng}}/{{ns}}.json',
    },
  });

export default i18n;
EOF

# Create sample translation files
mkdir -p public/locales/en public/locales/es
echo '{"hello": "Hello", "welcome": "Welcome to our app!"}' > public/locales/en/translation.json
echo '{"hello": "Hola", "welcome": "¡Bienvenido a nuestra aplicación!"}' > public/locales/es/translation.json

# Update index.js to use i18n
sed -i '1iimport "./i18n/i18n";\n' src/index.js

# Create a language switcher component
cat << EOF > src/components/LanguageSwitcher.js
import React from 'react';
import { useTranslation } from 'react-i18next';

const LanguageSwitcher = () => {
  const { i18n } = useTranslation();

  const changeLanguage = (lng) => {
    i18n.changeLanguage(lng);
  };

  return (
    <div>
      <button onClick={() => changeLanguage('en')}>English</button>
      <button onClick={() => changeLanguage('es')}>Español</button>
    </div>
  );
};

export default LanguageSwitcher;
EOF

log "Internationalization setup completed for $client_dir directory."

```

### setup-noloco-theme.sh

```sh
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
FONT_FAMILY= 'Inter, sans-serif'

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
    body: ${FONT_FAMILY},
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

```

### setup-performance-optimization.sh

```sh
#!/bin/bash
# setup-performance-optimization.sh

set -euo pipefail

project_dir="$1"

if [ -z "$project_dir" ]; then
  echo "Usage: $0 <project-dir>"
  exit 1
fi

client_dir="$project_dir/client"
cd "$client_dir" || exit 1

# Add a utility for image optimization
mkdir -p src/utils
cat << EOF > src/utils/imageOptimization.js
export const getOptimizedImageUrl = (url, width, height) => {
  // This is a placeholder. In a real-world scenario, you'd integrate with
  // an image optimization service like Cloudinary or Imgix.
  return `${url}?w=${width}&h=${height}&fit=crop&auto=format`;
};
EOF

# Add a custom hook for intersection observer (for lazy loading)
cat << EOF > src/utils/useIntersectionObserver.js
import { useState, useEffect } from 'react';

const useIntersectionObserver = (ref, options = {}) => {
  const [isIntersecting, setIsIntersecting] = useState(false);

  useEffect(() => {
    const observer = new IntersectionObserver(([entry]) => {
      setIsIntersecting(entry.isIntersecting);
    }, options);

    if (ref.current) {
      observer.observe(ref.current);
    }

    return () => {
      observer.disconnect();
    };
  }, [ref, options]);

  return isIntersecting;
};

export default useIntersectionObserver;
EOF

echo "Enhanced performance optimization setup completed for $client_dir"

```

### setup-postgresql.sh

```sh
#!/bin/bash
# setup-postgresql.sh

set -euo pipefail

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

project_name="$1"
db_user="$2"
db_pass="$3"

if [ -z "$project_name" ] || [ -z "$db_user" ] || [ -z "$db_pass" ]; then
  error_exit "Usage: $0 <project-name> <db-user> <db-pass>"
fi

log "Setting up PostgreSQL for $project_name"

# Check if PostgreSQL is installed
log "Checking if PostgreSQL is installed..."
if ! command -v psql &> /dev/null; then
    error_exit "PostgreSQL is not installed. Please install it and try again."
fi

log "PostgreSQL is installed. Proceeding with setup..."

project_dir="/d/Node/projects/$project_name"
server_dir="$project_dir/server"
cd "$server_dir" || error_exit "Failed to change to server directory"

# Create database and user
log "Attempting to create database and user..."
PGPASSWORD="${db_pass}" psql -U postgres -h localhost << EOF
CREATE DATABASE ${project_name} WITH OWNER ${db_user};
DO
\$\$
BEGIN
  IF NOT EXISTS (SELECT FROM pg_catalog.pg_roles WHERE rolname = '${db_user}') THEN
    CREATE USER ${db_user} WITH ENCRYPTED PASSWORD '${db_pass}';
  END IF;
END
\$\$;
GRANT ALL PRIVILEGES ON DATABASE ${project_name} TO ${db_user};
\c ${project_name}
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
EOF

if [ $? -ne 0 ]; then
    error_exit "Failed to set up database and user"
fi
log "Database and user setup completed."

log "Database and user created successfully."

# Update .env file
log "Updating .env file..."
if [ -f .env ]; then
    sed -i '/^DATABASE_URL/d' .env
fi
echo "DATABASE_URL=postgres://${db_user}:${db_pass}@localhost:5432/${project_name}" >> .env

log ".env file updated."

# Install necessary packages
log "Installing necessary npm packages..."
npm install express pg sequelize dotenv || error_exit "Failed to install npm packages"

log "NPM packages installed."

# Create database connection utility
log "Creating database connection utility..."
mkdir -p "$server_dir/src/config"
cat << EOF > "$server_dir/src/config/database.js"
// src/config/database.js
const { Pool } = require('pg');
const { Sequelize } = require('sequelize');
require('dotenv').config();

const sequelize = new Sequelize(process.env.DATABASE_URL, {
  dialect: 'postgres',
  logging: false,
  pool: {
    max: 5,
    min: 0,
    acquire: 30000,
    idle: 10000
  }
});

const pool = new Pool({
  connectionString: process.env.DATABASE_URL,
});

const testConnection = async () => {
  try {
    await sequelize.authenticate();
    console.log('Sequelize connection has been established successfully.');

    const client = await pool.connect();
    console.log('PostgreSQL pool connection has been established successfully.');
    client.release();
  } catch (error) {
    console.error('Unable to connect to the database:', error);
  }
};

testConnection();

module.exports = {
  sequelize,
  Sequelize,
  query: (text, params) => pool.query(text, params),
};
EOF

log "Database connection utility created."

# Create a basic model
log "Creating basic User model..."
mkdir -p "$server_dir/src/models"
cat << EOF > "$server_dir/src/models/User.js"
// src/models/User.js

const { Sequelize, DataTypes } = require('sequelize');
const sequelize = require('../config/database');

const User = sequelize.define('User', {
  name: {
    type: DataTypes.STRING,
    allowNull: false
  },
  email: {
    type: DataTypes.STRING,
    allowNull: false,
    unique: true
  },
  password: {
    type: DataTypes.STRING,
    allowNull: false
  }
});

module.exports = User;
EOF

log "Basic User model created."

log "PostgreSQL setup completed for $project_name"

```

### setup-project.sh

```sh
#!/bin/bash
# setup-project.sh

set -e

project_name=$1

if [ -z "$project_name" ]; then
  echo "Usage: $0 <project-name>"
  exit 1
fi

# Check for Node.js and npm
if ! command -v node > /dev/null 2>&1 || ! command -v npm > /dev/null 2>&1; then
    error_exit "Node.js and npm are required but not installed. Please install them and try again."
fi

project_dir="/d/Node/projects/$project_name"
client_dir="$project_dir/client"
server_dir="$project_dir/server"

log() {
  echo "$(date +"%Y-%m-%d %T") : $1"
}

error_exit() {
  echo "$(date +"%Y-%m-%d %T") : $1" 1>&2
  exit 1
}

log "Creating project directory..."
mkdir -p "$project_dir" || error_exit "Failed to create project directory"
cd "$project_dir" || error_exit "Failed to navigate to project directory"
touch .gitignore README.md || error_exit "Failed to create initial config files"
mkdir -p .github docs || error_exit "Failed to create project structure directories"

# Initialize project structure
log "Initializing project structure..."
mkdir -p "$server_dir/src/config" "$server_dir/src/controllers" "$server_dir/src/middleware" "$server_dir/src/models" "$server_dir/src/routes" "$server_dir/src/utils" "$server_dir/src/services" || error_exit "Failed to create server structure directories"
mkdir -p "$server_dir/tests" || error_exit "Failed to create tests directory"
cd "$server_dir" || error_exit "Failed to navigate to server directory"
touch "$server_dir/package.json" "$server_dir/src/app.js" "$server_dir/.env" "$server_dir/babel.config.js" "$server_dir/jest.config.js" "$server_dir/jest.setup.js" || error_exit "Failed to create initial server files"

cat << EOF > "$server_dir/package.json"
{
  "name": "${project_name}",
  "version": "1.0.0",
  "main": "index.js",
  "directories": {
    "doc": "docs"
  },
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "keywords": [],
  "author": "",
  "license": "ISC",
  "description": ""
}
EOF

log "Installing express pg sequelize cors dotenv dependencies..."
npm install express pg sequelize cors dotenv

log "Creating server/src/app.js..."
cat << EOF > "$server_dir/src/app.js"
const express = require('express');
const { Pool } = require('pg');
const session = require('express-session');
const pgSession = require('connect-pg-simple')(session);
const passport = require('passport');
const cors = require('cors');
const dotenv = require('dotenv');
const path = require('path');
const errorHandler = require('./middleware/error-handling-middleware');

dotenv.config();

const app = express();

// Middleware
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// PostgreSQL Pool
const pool = new Pool({
    connectionString: process.env.DATABASE_URL
});

// Session Management
app.use(session({
    store: new pgSession({
        pool: pool,
        tableName: 'session'
    }),
    secret: process.env.SESSION_SECRET || 'your_secret_key',
    resave: false,
    saveUninitialized: false,
    cookie: { secure: process.env.NODE_ENV === 'production' }
}));

// Passport middleware
app.use(passport.initialize());
app.use(passport.session());

// Passport Config
require('./config/passport')(passport);

// Routes
app.use('/api/models', require('./routes/models'));
// Add other routes as needed

// Serve static files from the React app in production
if (process.env.NODE_ENV === 'production') {
    app.use(express.static(path.join(__dirname, '../../client/build')));

    app.get('*', (req, res) => {
        res.sendFile(path.join(__dirname, '../../client/build', 'index.html'));
    });
}

// Error Handling Middleware
app.use(errorHandler);

module.exports = app;
EOF

log "Updating package.json with new dependencies..."
cd "$server_dir"
npm install express-session connect-pg-simple passport
npm install --save-dev @types/express-session @types/passport
cd -

log "Creating error handling middleware..."
mkdir -p "$server_dir/src/middleware"

cat << EOF > "$server_dir/src/middleware/error-handling-middleware.js"
const errorHandler = (err, req, res, next) => {
    console.error(err.stack);
    res.status(500).send('Something broke!');
};

module.exports = errorHandler;
EOF

log "Creating basic passport configuration..."
mkdir -p "$server_dir/src/config"
cat << EOF > "$server_dir/src/config/passport.js"
module.exports = (passport) => {
    // Add passport strategies and serialization here
    // This is a placeholder and should be expanded based on your auth requirements
};
EOF

log "Creating server/src/routes/models.js..."
cat << EOF > src/routes/models.js
const express = require('express');
const router = express.Router();
const DataModelingService = require('../services/dataModelingService');

router.post('/models', async (req, res, next) => {
  try {
    const { name, fields } = req.body;
    await DataModelingService.saveModel({ name, fields });
    res.status(201).json({ message: 'Model saved successfully' });
  } catch (error) {
    next(error);
  }
});

router.get('/models', async (req, res, next) => {
  try {
    const models = await DataModelingService.getModels();
    res.json(models);
  } catch (error) {
    next(error);
  }
});

module.exports = router;
EOF

log "Creating server/src/index.js..."
cat << EOF > "$server_dir/src/index.js"
const express = require('express');
const cors = require('cors');
require('dotenv').config();
const { sequelize } = require('./utils/db');
const modelRoutes = require('./routes/models');
const dynamicApiRoutes = require('./routes/dynamicApiRoutes');

const app = express();
const PORT = process.env.PORT || 3000;

// Middleware
app.use(cors());
app.use(express.json());

// Routes
app.use('/api/models', modelRoutes);
app.use('/api', dynamicApiRoutes);

app.get('/', (req, res) => {
  res.json({ message: 'Welcome to the API' });
});

// Error handling middleware
app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).send('Something broke!');
});

// Database connection and server start
const startServer = async () => {
  try {
    await sequelize.authenticate();
    console.log('Database connection has been established successfully.');

    app.listen(PORT, () => console.log(`Server running on port ${PORT}`));
  } catch (error) {
    console.error('Unable to connect to the database:', error);
  }
};

startServer();
EOF

log "Creating server/.env..."
cat << EOF > "$server_dir/.env"
DATABASE_URL=postgres://${project_name}_user:postgres@localhost:5432/${project_name}
PORT=3000
BASE_URL=http://localhost:3000  # Optional, for local development
EOF

log "Creating project .gitignore..."
cat << EOF > "$project_dir/.gitignore"
node_modules/
.env
*.log
build/
EOF

log "Updating server/src/index.js to use app.js..."
sed -i '1i\const app = require(\'./app');' "$server_dir/src/index.js"
sed -i '/const app = express();/d' "$server_dir/src/index.js"
sed -i '/app\.use(cors());/d' "$server_dir/src/index.js"
sed -i '/app\.use(express\.json());/d' "$server_dir/src/index.js"

log "Setting up client..."
npx create-react-app "$client_dir"
cd "$client_dir" || error_exit "Failed to navigate to client directory"
npm install axios react-router-dom styled-components

log "Project $project_name set up successfully"

```

### setup-pwa.sh

```sh
#!/bin/bash
# setup-pwa.sh

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

log "Setting up PWA for $client_dir"

# Install workbox-webpack-plugin and other PWA-related packages
npm install --save-dev workbox-webpack-plugin
npm install workbox-window

# Update webpack.config.js to include workbox plugin
cat << EOF >> webpack.config.js

const WorkboxWebpackPlugin = require('workbox-webpack-plugin');

module.exports.plugins.push(
  new WorkboxWebpackPlugin.GenerateSW({
    clientsClaim: true,
    skipWaiting: true,
    runtimeCaching: [{
      urlPattern: /^https?.*/,
      handler: 'NetworkFirst',
      options: {
        cacheName: 'https-calls',
        networkTimeoutSeconds: 15,
        expiration: {
          maxEntries: 150,
          maxAgeSeconds: 30 * 24 * 60 * 60, // 1 month
        },
        cacheableResponse: {
          statuses: [0, 200],
        },
      },
    }],
  })
);
EOF

# Create a manifest.json file
cat << EOF > public/manifest.json
{
  "short_name": "Your App",
  "name": "Your Application Name",
  "icons": [
    {
      "src": "favicon.ico",
      "sizes": "64x64 32x32 24x24 16x16",
      "type": "image/x-icon"
    },
    {
      "src": "logo192.png",
      "type": "image/png",
      "sizes": "192x192"
    },
    {
      "src": "logo512.png",
      "type": "image/png",
      "sizes": "512x512"
    }
  ],
  "start_url": ".",
  "display": "standalone",
  "theme_color": "#000000",
  "background_color": "#ffffff"
}
EOF

# Update index.html to include manifest and theme-color
sed -i '/<\/head>/i\    <link rel="manifest" href="%PUBLIC_URL%/manifest.json" />' public/index.html
sed -i '/<\/head>/i\    <meta name="theme-color" content="#000000" />' public/index.html

# Create a service worker registration file
cat << EOF > src/serviceWorkerRegistration.js
import { Workbox } from 'workbox-window';

export function register() {
  if ('serviceWorker' in navigator) {
    const wb = new Workbox('/service-worker.js');

    wb.addEventListener('installed', event => {
      if (event.isUpdate) {
        if (window.confirm('New content is available! Click OK to refresh.')) {
          window.location.reload();
        }
      }
    });

    wb.register();
  }
}
EOF

# Update index.js to include service worker registration
cat << EOF >> src/index.js

import { register } from './serviceWorkerRegistration';

register();
EOF

log "PWA setup completed for $client_dir directory."

```

### setup-rbac.sh

```sh
#!/bin/bash
# setup-rbac.sh

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

server_dir="$project_dir/server"
src_dir="$server_dir/src"

mkdir -p "$src_dir/middlewares" "$src_dir/models" "$src_dir/routes"

log "Setting up RBAC for $project_dir"

# Install required packages
cd "$server_dir"
npm install bcryptjs jsonwebtoken
cd -

# Create RBAC middleware
cat << EOF > "$src_dir/middlewares/rbacMiddleware.js"
// src/middlewares/rbacMiddleware.js
const rbacMiddleware = (requiredRole) => {
  return (req, res, next) => {
    if (!req.user || !req.user.role) {
      return res.status(403).json({ message: 'Access denied' });
    }

    if (req.user.role !== requiredRole) {
      return res.status(403).json({ message: 'Insufficient permissions' });
    }

    next();
  };
};

module.exports = rbacMiddleware;
EOF

# Create User model with role
cat << EOF > "$src_dir/models/User.js"
const { Pool } = require('pg');
const bcrypt = require('bcryptjs');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

class UserService {
  async createUser(userData) {
    const hashedPassword = await bcrypt.hash(userData.password, 12);
    const query = 'INSERT INTO users (username, email, password, role) VALUES(\$1, \$2, \$3, \$4) RETURNING *';
    const values = [userData.username, userData.email, hashedPassword, userData.role];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async findUserByEmail(email) {
    const query = 'SELECT * FROM users WHERE email = \$1';
    const result = await pool.query(query, [email]);
    return result.rows[0];
  }

  async comparePassword(candidatePassword, storedPassword) {
    return bcrypt.compare(candidatePassword, storedPassword);
  }
}

module.exports = new UserService();
EOF

# Update auth routes to include role
cat << EOF > "$src_dir/routes/authRoutes.js"
// src/routes/authRoutes.js
const express = require('express');
const jwt = require('jsonwebtoken');
const UserService = require('../models/User');
const rbacMiddleware = require('../middlewares/rbacMiddleware');

const router = express.Router();

router.post('/register', async (req, res) => {
  try {
    const { username, email, password, role } = req.body;
    const user = await UserService.createUser({ username, email, password, role });
    res.status(201).json({ message: 'User registered successfully', user });
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

router.post('/login', async (req, res) => {
  try {
    const { email, password } = req.body;
    const user = await UserService.findUserByEmail(email);
    if (!user || !(await UserService.comparePassword(password, user.password))) {
      return res.status(401).json({ message: 'Invalid credentials' });
    }
    const token = jwt.sign({ userId: user.id, role: user.role }, process.env.JWT_SECRET, { expiresIn: '1d' });
    res.json({ token });
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

// Example of a protected route using RBAC
router.get('/admin-only', rbacMiddleware('admin'), (req, res) => {
  res.json({ message: 'Welcome, admin!' });
});

module.exports = router;
EOF

log "RBAC setup completed for $project_dir"

```

### setup-redux-actions.sh

```sh
#!/bin/bash
# setup-redux.sh

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
  echo "Usage: $0 <project-dir>"
  exit 1
fi

if ! command -v npm &> /dev/null; then
  error_exit "npm could not be found, please install Node.js and npm first."
fi

client_dir="$project_dir/client"
src_dir="$client_dir/src"

cd "$client_dir"

log "Installing Redux and related packages..."
npm install redux react-redux @reduxjs/toolkit

log "Creating Redux directory structure..."
mkdir -p "$src_dir/redux/slices"

log "Creating store.js..."
cat << EOF > "$src_dir/redux/store.js"
import { configureStore } from '@reduxjs/toolkit';
import rootReducer from './slices';

const store = configureStore({
  reducer: rootReducer,
  devTools: process.env.NODE_ENV !== 'production',
});

export default store;
EOF

log "Creating root reducer (index.js in slices directory)..."
cat << EOF > "$src_dir/redux/slices/index.js"
import { combineReducers } from 'redux';
import exampleSlice from './exampleSlice';

const rootReducer = combineReducers({
  example: exampleSlice,
});

export default rootReducer;
EOF

log "Creating an example slice..."
cat << EOF > "$src_dir/redux/slices/exampleSlice.js"
import { createSlice } from '@reduxjs/toolkit';

const initialState = {
  value: 0,
};

const exampleSlice = createSlice({
  name: 'example',
  initialState,
  reducers: {
    increment: (state) => {
      state.value += 1;
    },
    decrement: (state) => {
      state.value -= 1;
    },
  },
});

export const { increment, decrement } = exampleSlice.actions;
export default exampleSlice.reducer;
EOF

log "Updating index.js to use Redux..."
sed -i "1i import { Provider } from 'react-redux';" "$src_dir/index.js"
sed -i "2i import store from './redux/store';" "$src_dir/index.js"
sed -i "s/<React.StrictMode>/<Provider store={store}><React.StrictMode>/" "$src_dir/index.js"
sed -i "s/<\/React.StrictMode>/<\/React.StrictMode><\/Provider>/" "$src_dir/index.js"

log "Updating App.js to remove redundant Redux provider..."
cat << EOF > "$src_dir/App.js"
import React from 'react';

const App = () => {
  return (
    <div>
      {/* Your app content here */}
    </div>
  );
};

export default App;
EOF

log "Updating index.js to use Redux..."
index_file="$src_dir/index.js"
temp_file=$(mktemp)

cat << EOF > "$temp_file"
import React from 'react';
import ReactDOM from 'react-dom/client';
import { Provider } from 'react-redux';
import store from './redux/store';
import App from './App';
import './index.css';

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <React.StrictMode>
    <Provider store={store}>
      <App />
    </Provider>
  </React.StrictMode>
);
EOF

mv "$temp_file" "$index_file"

log "Redux setup completed for $client_dir directory."

```

### setup-redux.sh

```sh
#!/bin/bash
# setup-redux.sh

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
  echo "Usage: $0 <project-dir>"
  exit 1
fi

if ! command -v npm &> /dev/null; then
  error_exit "npm could not be found, please install Node.js and npm first."
fi

client_dir="$project_dir/client"
src_dir="$client_dir/src"
mkdir -p "$src_dir/redux/slices"
cd "$client_dir"

log "Installing Redux and related packages..."
npm install redux react-redux @reduxjs/toolkit
log "Creating Redux directory structure..."

log "Creating store.js..."
cat << EOF > "$src_dir/redux/store.js"
import { configureStore } from '@reduxjs/toolkit';
import rootReducer from './slices';

const store = configureStore({
  reducer: rootReducer,
  devTools: process.env.NODE_ENV !== 'production',
});

export default store;
EOF

log "Creating root reducer (index.js in slices directory)..."
cat << EOF > "$src_dir/redux/slices/index.js"
import { combineReducers } from 'redux';
import exampleSlice from './exampleSlice';

const rootReducer = combineReducers({
  example: exampleSlice,
});

export default rootReducer;
EOF

log "Creating an example slice..."
cat << EOF > "$src_dir/redux/slices/exampleSlice.js"
import { createSlice } from '@reduxjs/toolkit';

const initialState = {
  value: 0,
};

const exampleSlice = createSlice({
  name: 'example',
  initialState,
  reducers: {
    increment: (state) => {
      state.value += 1;
    },
    decrement: (state) => {
      state.value -= 1;
    },
  },
});

export const { increment, decrement } = exampleSlice.actions;
export default exampleSlice.reducer;
EOF

log "Updating index.js to use Redux..."
sed -i "1i import { Provider } from 'react-redux';" "$src_dir/index.js"
sed -i "2i import store from './redux/store';" "$src_dir/index.js"
sed -i "s/<React.StrictMode>/<Provider store={store}><React.StrictMode>/" "$src_dir/index.js"
sed -i "s/<\/React.StrictMode>/<\/React.StrictMode><\/Provider>/" "$src_dir/index.js"

log "Updating App.js to use Redux..."
cat << EOF > "$src_dir/App.js"
import React from 'react';

const App = () => {
  return (
    <div>
      {/* Your app content here */}
    </div>
  );
};

export default App;
EOF

log "Updating index.js to use Redux..."
index_file="$src_dir/index.js"
temp_file=$(mktemp)

cat << EOF > "$temp_file"
import React from 'react';
import ReactDOM from 'react-dom/client';
import { Provider } from 'react-redux';
import store from './redux/store';
import App from './App';
import './index.css';

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <React.StrictMode>
    <Provider store={store}>
      <App />
    </Provider>
  </React.StrictMode>
);
EOF

mv "$temp_file" "$index_file"

log "Redux setup completed for $client_dir directory."

```

### setup-responsive-design.sh

```sh
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

```

### setup-sass.sh

```sh
#!/bin/bash
# setup-sass.sh

project_dir="$1"

if [ -z "$project_dir" ]; then
  echo "Usage: $0 <project-dir>"
  exit 1
fi

client_dir="$project_dir/client"
cd "$client_dir"

# Install SASS
npm install sass

# Create SASS directory structure
mkdir -p src/styles/abstracts src/styles/base src/styles/components src/styles/layout src/styles/pages

# Create main SASS file
cat << EOF > src/styles/main.scss
@import 'abstracts/variables';
@import 'abstracts/mixins';

@import 'base/reset';
@import 'base/typography';

@import 'components/buttons';
@import 'components/forms';

@import 'layout/header';
@import 'layout/footer';

@import 'pages/home';
EOF

# Create example files
cat << EOF > src/styles/abstracts/_variables.scss
\$primary-color: #0070f3;
\$secondary-color: #0070f3;
\$font-stack: Arial, sans-serif;
EOF

cat << EOF > src/styles/abstracts/_mixins.scss
@mixin flexCenter {
  display: flex;
  justify-content: center;
  align-items: center;
}
EOF

cat << EOF > src/styles/base/_reset.scss
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}
EOF

# Update package.json scripts
npm pkg set scripts.sass="sass src/styles/main.scss src/styles/main.css"
npm pkg set scripts.sass:watch="sass src/styles/main.scss src/styles/main.css --watch"

echo "SASS setup completed for $client_dir directory."

```

### setup-seo.sh

```sh
#!/bin/bash
# setup-seo.sh

set -euo pipefail

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

project_dir="$1"
client_dir="$project_dir/client"

if [ -z "$project_dir" ]; then
  error_exit "Usage: $0 <project-dir>"
fi

cd "$client_dir" || error_exit "Failed to change to client directory"

log "Setting up SEO for $client_dir"

# Install react-helmet for managing document head
npm install react-helmet-async

# Create SEO component
cat << EOF > src/components/SEO.js
import React from 'react';
import { Helmet } from 'react-helmet-async';

const SEO = ({ title, description, keywords, image, url }) => (
  <Helmet>
    <title>{title}</title>
    <meta name="description" content={description} />
    <meta name="keywords" content={keywords} />
    <meta property="og:title" content={title} />
    <meta property="og:description" content={description} />
    <meta property="og:image" content={image} />
    <meta property="og:url" content={url} />
    <meta property="og:type" content="website" />
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:title" content={title} />
    <meta name="twitter:description" content={description} />
    <meta name="twitter:image" content={image} />
    <link rel="canonical" href={url} />
  </Helmet>
);

export default SEO;
EOF

mkdir -p "$client_dir/scripts"
cd "$client_dir"

# Create the sitemap generator JavaScript file
cat << 'EOF' > "$client_dir/scripts/generate-sitemap.js"
const fs = require('fs');
const path = require('path');
require('dotenv').config({ path: path.join(__dirname, '../../.env') });

const baseUrl = process.env.BASE_URL || `http://localhost:${process.env.PORT || 3000}`;
const publicDir = path.join(__dirname, '../public');

const getPages = () => {
  // This is a simplified example. In reality, you'd want to
  // generate this list based on your actual routes.
  return ['', 'register'];
};

const generateSitemap = () => {
  const pages = getPages();
  const sitemap = `<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
  ${pages.map(page => `
  <url>
    <loc>${baseUrl}/${page}</loc>
    <lastmod>${new Date().toISOString().split('T')[0]}</lastmod>
    <changefreq>weekly</changefreq>
    <priority>0.8</priority>
  </url>
  `).join('')}
</urlset>`;

  fs.writeFileSync(path.join(publicDir, 'sitemap.xml'), sitemap);
  console.log('Sitemap generated successfully');

  // Generate robots.txt
  const robotsTxt = `User-agent: *
Allow: /

Sitemap: ${baseUrl}/sitemap.xml
`;
  fs.writeFileSync(path.join(publicDir, 'robots.txt'), robotsTxt);
  console.log('robots.txt generated successfully');
};

generateSitemap();
EOF

# Run the sitemap generator
node "$client_dir/scripts/generate-sitemap.js"

# Add sitemap generation script to package.json
npm pkg set scripts.generate-sitemap="node scripts/generate-sitemap.js"

log "SEO setup completed for $project_dir"

```

### setup-state-management.sh

```sh
#!/bin/bash
# setup-state-management.sh

set -euo pipefail

project_dir="$1"
state_management="${2:-redux}"

if [ -z "$project_dir" ]; then
  echo "Usage: $0 <project-dir> [state-management]"
  echo "State management options: redux (default), mobx"
  exit 1
fi

client_dir="$project_dir/client"
cd "$client_dir" || exit 1

echo "Setting up $state_management for $client_dir"

case "$state_management" in
  redux)
    # Redux setup (as before)
    ;;
  mobx)
    # MobX setup (as before)
    ;;
  *)
    echo "Invalid state management type. Choose 'redux' or 'mobx'."
    exit 1
    ;;
esac

echo "$state_management setup completed for $client_dir"

```

### setup-styled-components.sh

```sh
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

```

### setup-workflows.sh

```sh
#!/bin/bash
# setup-workflows.sh

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

mkdir -p "$project_dir/server/src/services" "$project_dir/server/src/models" "$project_dir/server/src/routes"

log "Setting up workflows for $project_dir"

# Create Workflow service
cat << EOF > "$project_dir/server/src/services/workflowService.js"
// src/services/workflowService.js
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});
const axios = require('axios');

class WorkflowService {
  async executeWorkflow(workflowDefinition, triggerData) {
    let currentData = triggerData;

    for (const step of workflowDefinition.steps) {
      currentData = await this.executeStep(step, currentData);
    }

    return currentData;
  }

  async executeStep(step, data) {
    switch (step.type) {
      case 'transform':
        return this.transformData(step.transformation, data);
      case 'apiCall':
        return this.makeAPICall(step.apiDetails, data);
      case 'condition':
        return this.evaluateCondition(step.condition, data) ? data : null;
      default:
        throw new Error(\`Unknown step type: \${step.type}\`);
    }
  }

  transformData(transformation, data) {
    const result = {};
    for (const [key, value] of Object.entries(transformation)) {
      result[key] = value.split('.').reduce((o, i) => o[i], data);
    }
    return result;
  }

  async makeAPICall(apiDetails, data) {
    const { url, method, body } = apiDetails;
    const response = await axios({ method, url, data: body });
    return response.data;
  }

  evaluateCondition(condition, data) {
    const { left, operator, right } = condition;
    const leftValue = left.split('.').reduce((o, i) => o[i], data);
    switch (operator) {
      case '==':
        return leftValue == right;
      case '!=':
        return leftValue != right;
      case '>':
        return leftValue > right;
      case '<':
        return leftValue < right;
      default:
        throw new Error(\`Unknown operator: \${operator}\`);
    }
  }
}

module.exports = new WorkflowService();
EOF

# Create Workflow model
cat << EOF > "$project_dir/server/src/models/Workflow.js"
// src/models/Workflow.js
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

class WorkflowModel {
  async createWorkflow(workflowData) {
    const query = 'INSERT INTO workflows(name, description, trigger, steps) VALUES(\$1, \$2, \$3, \$4) RETURNING *';
    const values = [workflowData.name, workflowData.description, workflowData.trigger, JSON.stringify(workflowData.steps)];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  async getWorkflows() {
    const result = await pool.query('SELECT * FROM workflows');
    return result.rows;
  }

  async getWorkflowById(id) {
    const result = await pool.query('SELECT * FROM workflows WHERE id = \$1', [id]);
    return result.rows[0];
  }
}

module.exports = new WorkflowModel();
EOF

# Create workflow routes
cat << EOF > "$project_dir/server/src/routes/workflowRoutes.js"
// src/routes/workflowRoutes.js
const express = require('express');
const WorkflowModel = require('../models/Workflow');
const WorkflowService = require('../services/workflowService');

const router = express.Router();

router.post('/', async (req, res) => {
  try {
    const workflow = await WorkflowModel.createWorkflow(req.body);
    res.status(201).json(workflow);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

router.get('/', async (req, res) => {
  try {
    const workflows = await WorkflowModel.getWorkflows();
    res.json(workflows);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

router.post('/:id/execute', async (req, res) => {
  try {
    const workflow = await WorkflowModel.getWorkflowById(req.params.id);
    if (!workflow) {
      return res.status(404).json({ message: 'Workflow not found' });
    }
    const result = await WorkflowService.executeWorkflow(workflow, req.body);
    res.json(result);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

module.exports = router;
EOF

log "Workflows setup completed for $project_dir"

```

