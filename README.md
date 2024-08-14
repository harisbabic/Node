# Node Project Comprehensive Overview

## Project Essence
The Node Project is an advanced, modular project management tool inspired by platforms like Trello, Hello Bonsai, and Retool. It's designed for small businesses, freelancers, and teams, integrating project management, client management (CRM), financial management, automation, dynamic form creation with drag-and-drop functionality, and a comprehensive server-side dashboard.

## Project Development Guidelines

Before contributing or reviewing code, please read our [Working Rules and Instructions](DEVELOPMENT_GUIDELINES.md). These guidelines ensure consistency and clarity in our development process. Review these rules regularly and before generating any code or responses.

## Key Features
- Customizable dashboards
- Project and task management
- Time tracking and invoicing
- Client management (CRM)
- Dynamic form creation with drag-and-drop
- Automation workflows
- API integrations
- Rich library of reusable frontend and backend components
- User and permission management system
- Customizable themes and layouts
- Comprehensive testing suite
- Ongoing expansion of features and capabilities

## Tech Stack
- Backend: Node.js, Express, PostgreSQL, Sequelize
- Frontend: React, Redux, SASS, Styled Components
- Authentication: JWT
- Testing: Jest
- Containerization: Docker

## Project Structure
- `/d/Node`: Main project directory
  - `/projects`: Houses all projects created by Node
  - `/shared-utils`: Shared .js files for projects (second-stage scripts)
  - `/tests`: Ready-made tests for integration
  - `/utils`: First-stage scripts for project creation
- `/server`: Backend code
- `/client`: Frontend code
- `/docs`: Documentation

## Usage
- **Managing Projects**: Navigate to the Projects section to create, update, and manage your projects.
- **Building Forms**: Use the Form Builder to create custom forms by dragging and dropping form elements.
- **Organizing Events**: Schedule and manage events from the Events section, with options to sell tickets and gather RSVPs.
- **Server-Side Management**: Access the server-side dashboard to manage all backend functionalities.

## Current State
- Basic project structure set up
- Database creation and configuration automated
- User authentication implemented
- Basic CRUD operations for projects and tasks developed
- Simple dashboard UI created

## Recent Developments
- Improved `setup-database.sh` script for automated, secure database setup
- Updated Roadmap.md to reflect current progress and future plans
- Enhanced development guidelines

## Key Files and Their Importance
1. `README.md`: 
   - Location: Root directory
   - Purpose: Serves as the project's main documentation
   - Content: Project overview, setup instructions, key features, tech stack, project structure, contribution guidelines
   - Importance: First point of reference for new developers and users

2. `DEVELOPMENT_GUIDELINES.md`:
   - Location: Root directory
   - Purpose: Establishes coding standards and best practices
   - Content: Code style, Git workflow, documentation practices, testing requirements, security guidelines, performance considerations, accessibility standards, CI/CD practices, code review process, error handling and logging, versioning, database management, API design principles, frontend development guidelines
   - Importance: Ensures consistency in development practices and maintains code quality

3. `docs/Roadmap.md`:
   - Location: `/docs` directory
   - Purpose: Outlines the project's future direction and planned features
   - Content: Phased development plan including core functionality, advanced features, integrations and automations, mobile capabilities, security enhancements, AI integration, and enterprise features
   - Importance: Guides development priorities and provides a clear vision for the project's evolution

4. `d/Node/utils/master-setup.sh`: 
   - Main script for project setup
   - Automates the creation of new projects within the Node ecosystem

5. `d/Node/utils/setup-database.sh`: 
   - Script for secure and automated database setup
   - Includes functionality for PostgreSQL installation and database user creation

## Immediate Focus
1. Resolve any remaining database authentication issues
2. Implement client management features
3. Develop invoicing system
4. Enhance security features, including password management through backend

## Development Approach
- Follow TDD and SOLID principles
- Prioritize security and performance
- Regular code reviews and adherence to development guidelines
- Continuous integration and deployment using GitHub Actions

## Future Plans (as per Roadmap.md)
- Phase 1: Complete core functionality (client management, invoicing)
- Phase 2: Implement advanced features (drag-and-drop interface, time tracking, team collaboration)
- Phase 3: Develop integrations and automations
- Phase 4: Create mobile and offline capabilities
- Phase 5: Enhance security and compliance features
- Phase 6: Integrate AI and machine learning capabilities
- Phase 7: Develop enterprise-level features

## GitHub Repository
[https://github.com/harisbabic/Node](https://github.com/harisbabic/Node)

## Communication and Collaboration
- Primary communication: Direct conversation
- Follow project development guidelines in `DEVELOPMENT_GUIDELINES.md`
- Refer to `Roadmap.md` for project direction and feature prioritization
- Use `README.md` as the primary reference for project overview and setup

## Note to AI Assistant
This overview is designed to quickly bring you up to speed on the Node Project. Always refer to the latest versions of README.md, DEVELOPMENT_GUIDELINES.md, and Roadmap.md in the GitHub repository for the most up-to-date information. These documents are crucial for maintaining consistency in development practices and communication. If you need more details on any aspect of the project, please ask for clarification or request access to specific files or directories.
