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
