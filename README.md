p# Node
/d/Node environment design to automate the setup of new projects

Project Structure:

Node/
├── docs
│   │   ├── Comprehensive-Integration-Plan-Incorporating-Features-from-Web-Tools-and-DemTech-into-d-Node-Project
│   │   ├── extra-sh-scripts-list.txt
│   │   ├── implementation-guide.md
│   │   ├── noloco-theme-setup.md
│   │   └── postgres.md
├── git
│   │   └── Node
│       │       └── LICENSE
├── projects
│   │   └── ultimate
│       │       ├── .env
│       │       ├── .gitignore
│       │       ├── client
│       │   │       │   ├── .babelrc
│       │   │       │   ├── .gitignore
│       │   │       │   ├── .storybook
│       │   │   │       │   │   ├── main.js
│       │   │   │       │   │   └── preview.js
│       │   │       │   ├── components.json
│       │   │       │   ├── package-lock.json
│       │   │       │   ├── package.json
│       │   │       │   ├── postcss.config.js
│       │   │       │   ├── public
│       │   │   │       │   │   ├── favicon.ico
│       │   │   │       │   │   ├── index.html
│       │   │   │       │   │   ├── locales
│       │   │   │   │       │   │   │   ├── en
│       │   │   │   │   │       │   │   │   │   └── translation.json
│       │   │   │   │       │   │   │   └── es
│       │   │   │       │       │   │   │       └── translation.json
│       │   │   │       │   │   ├── logo192.png
│       │   │   │       │   │   ├── logo512.png
│       │   │   │       │   │   ├── manifest.json
│       │   │   │       │   │   ├── robots.txt
│       │   │   │       │   │   └── sitemap.xml
│       │   │       │   ├── README.md
│       │   │       │   ├── scripts
│       │   │   │       │   │   └── generate-sitemap.js
│       │   │       │   ├── src
│       │   │   │       │   │   ├── @
│       │   │   │   │       │   │   │   ├── components
│       │   │   │   │   │       │   │   │   │   └── ui
│       │   │   │   │       │       │   │   │   │       └── alert.tsx
│       │   │   │   │       │   │   │   └── lib
│       │   │   │       │       │   │   │       └── utils.ts
│       │   │   │       │   │   ├── App.css
│       │   │   │       │   │   ├── App.js
│       │   │   │       │   │   ├── App.test.js
│       │   │   │       │   │   ├── components
│       │   │   │   │       │   │   │   ├── AnimatedBox.js
│       │   │   │   │       │   │   │   ├── Dashboard
│       │   │   │   │   │       │   │   │   │   ├── Dashboard.js
│       │   │   │   │   │       │   │   │   │   └── DashboardWidget.js
│       │   │   │   │       │   │   │   ├── DynamicUI
│       │   │   │   │   │       │   │   │   │   ├── DynamicForm.js
│       │   │   │   │   │       │   │   │   │   └── DynamicTable.js
│       │   │   │   │       │   │   │   ├── FocusTrap.js
│       │   │   │   │       │   │   │   ├── LanguageSwitcher.js
│       │   │   │   │       │   │   │   ├── Noloco
│       │   │   │   │   │       │   │   │   │   ├── Button.js
│       │   │   │   │   │       │   │   │   │   ├── Card.js
│       │   │   │   │   │       │   │   │   │   └── Container.js
│       │   │   │   │       │   │   │   ├── ResponsiveGrid.js
│       │   │   │   │       │   │   │   └── SEO.js
│       │   │   │       │   │   ├── i18n
│       │   │   │   │       │   │   │   └── i18n.js
│       │   │   │       │   │   ├── index.css
│       │   │   │       │   │   ├── index.js
│       │   │   │       │   │   ├── layouts
│       │   │   │   │       │   │   │   └── DashboardLayout.js
│       │   │   │       │   │   ├── logo.svg
│       │   │   │       │   │   ├── redux
│       │   │   │   │       │   │   │   ├── slices
│       │   │   │   │   │       │   │   │   │   ├── exampleSlice.js
│       │   │   │   │   │       │   │   │   │   └── index.js
│       │   │   │   │       │   │   │   └── store.js
│       │   │   │       │   │   ├── reportWebVitals.js
│       │   │   │       │   │   ├── services
│       │   │   │   │       │   │   │   └── apiService.js
│       │   │   │       │   │   ├── serviceWorkerRegistration.js
│       │   │   │       │   │   ├── setupTests.js
│       │   │   │       │   │   ├── stories
│       │   │   │   │       │   │   │   ├── assets
│       │   │   │   │   │       │   │   │   │   ├── accessibility.png
│       │   │   │   │   │       │   │   │   │   ├── accessibility.svg
│       │   │   │   │   │       │   │   │   │   ├── addon-library.png
│       │   │   │   │   │       │   │   │   │   ├── assets.png
│       │   │   │   │   │       │   │   │   │   ├── avif-test-image.avif
│       │   │   │   │   │       │   │   │   │   ├── context.png
│       │   │   │   │   │       │   │   │   │   ├── discord.svg
│       │   │   │   │   │       │   │   │   │   ├── docs.png
│       │   │   │   │   │       │   │   │   │   ├── figma-plugin.png
│       │   │   │   │   │       │   │   │   │   ├── github.svg
│       │   │   │   │   │       │   │   │   │   ├── share.png
│       │   │   │   │   │       │   │   │   │   ├── styling.png
│       │   │   │   │   │       │   │   │   │   ├── testing.png
│       │   │   │   │   │       │   │   │   │   ├── theming.png
│       │   │   │   │   │       │   │   │   │   ├── tutorials.svg
│       │   │   │   │   │       │   │   │   │   └── youtube.svg
│       │   │   │   │       │   │   │   ├── button.css
│       │   │   │   │       │   │   │   ├── Button.jsx
│       │   │   │   │       │   │   │   ├── Button.stories.js
│       │   │   │   │       │   │   │   ├── Configure.mdx
│       │   │   │   │       │   │   │   ├── header.css
│       │   │   │   │       │   │   │   ├── Header.jsx
│       │   │   │   │       │   │   │   ├── Header.stories.js
│       │   │   │   │       │   │   │   ├── page.css
│       │   │   │   │       │   │   │   ├── Page.jsx
│       │   │   │   │       │   │   │   └── Page.stories.js
│       │   │   │       │   │   ├── styles
│       │   │   │   │       │   │   │   ├── abstracts
│       │   │   │   │   │       │   │   │   │   ├── _mixins.scss
│       │   │   │   │   │       │   │   │   │   └── _variables.scss
│       │   │   │   │       │   │   │   ├── base
│       │   │   │   │   │       │   │   │   │   └── _reset.scss
│       │   │   │   │       │   │   │   ├── breakpoints.js
│       │   │   │   │       │   │   │   ├── components
│       │   │   │   │       │   │   │   ├── GlobalStyle.js
│       │   │   │   │       │   │   │   ├── layout
│       │   │   │   │       │   │   │   ├── main.scss
│       │   │   │   │       │   │   │   ├── NolocoTheme.js
│       │   │   │   │       │   │   │   ├── pages
│       │   │   │   │       │   │   │   ├── ResponsiveWrapper.js
│       │   │   │   │       │   │   │   └── theme.js
│       │   │   │       │   │   └── utils
│       │   │       │       │   │       ├── imageOptimization.js
│       │   │       │       │   │       └── useIntersectionObserver.js
│       │   │       │   ├── tailwind.config.js
│       │   │       │   ├── tsconfig.json
│       │   │       │   └── webpack.config.js
│       │       ├── docs
│       │       ├── package-lock.json
│       │       ├── package.json
│       │       ├── README.md
│       │       └── server
│           │           ├── .env
│           │           ├── babel.config.js
│           │           ├── jest.config.js
│           │           ├── jest.setup.js
│           │           ├── package-lock.json
│           │           ├── package.json
│           │           ├── psql_output.log
│           │           ├── src
│           │   │           │   ├── app.js
│           │   │           │   ├── config
│           │   │   │           │   │   ├── database.js
│           │   │   │           │   │   └── passport.js
│           │   │           │   ├── controllers
│           │   │   │           │   │   ├── about.js
│           │   │   │           │   │   ├── contact.js
│           │   │   │           │   │   └── docs.js
│           │   │           │   ├── index.js
│           │   │           │   ├── middleware
│           │   │   │           │   │   ├── auth.js
│           │   │   │           │   │   ├── error-handling-middleware.js
│           │   │   │           │   │   └── errorHandler.js
│           │   │           │   ├── middlewares
│           │   │   │           │   │   └── rbacMiddleware.js
│           │   │           │   ├── models
│           │   │   │           │   │   ├── about.js
│           │   │   │           │   │   ├── contact.js
│           │   │   │           │   │   ├── docs.js
│           │   │   │           │   │   ├── EmailTemplate.js
│           │   │   │           │   │   ├── File.js
│           │   │   │           │   │   ├── User.js
│           │   │   │           │   │   └── Workflow.js
│           │   │           │   ├── redux
│           │   │   │           │   │   └── actions
│           │   │       │           │   │       ├── authActions.js
│           │   │       │           │   │       ├── projectActions.js
│           │   │       │           │   │       └── taskActions.js
│           │   │           │   ├── routes
│           │   │   │           │   │   ├── about.js
│           │   │   │           │   │   ├── auth.js
│           │   │   │           │   │   ├── authRoutes.js
│           │   │   │           │   │   ├── contact.js
│           │   │   │           │   │   ├── docs.js
│           │   │   │           │   │   ├── dynamicApiRoutes.js
│           │   │   │           │   │   ├── emailTemplateRoutes.js
│           │   │   │           │   │   ├── fileRoutes.js
│           │   │   │           │   │   ├── models.js
│           │   │   │           │   │   └── workflowRoutes.js
│           │   │           │   ├── services
│           │   │   │           │   │   ├── apiGenerationService.js
│           │   │   │           │   │   ├── emailService.js
│           │   │   │           │   │   ├── fileService.js
│           │   │   │           │   │   └── workflowService.js
│           │   │           │   └── utils
│           │       │           │       └── apiResponse.js
│           │           └── tests
│               │               ├── integration
│               │   │               │   └── api.test.js
│               │               └── unit
│                   │                   └── sample.test.js
├── shared-utils
│   │   ├── generate-project-readme.js
│   │   ├── generate-tree.js
│   │   ├── package.json
│   │   └── test-utils
└── utils
        ├── continue-master-setup.sh
        ├── create-api-route.sh
        ├── d-node-utils.txt
        ├── FULL_PROJECT_TREE.txt
        ├── FULL_README.md
        ├── generate-api-service.sh
        ├── generate-config.sh
        ├── generate-layout.sh
        ├── generate-tests.sh
        ├── init-git.sh
        ├── js-utils
    │       │   ├── d-node-utils-js-utils.txt
    │       │   ├── generate-ai-tools.js
    │       │   ├── generate-charts.js
    │       │   ├── generate-components.js
    │       │   ├── generate-forms-templates.js
    │       │   ├── generate-mock-data.js
    │       │   ├── generate-models.js
    │       │   ├── generate-readme.js
    │       │   └── generate-routes.js
        ├── master-setup.sh
        ├── run-migrations.sh
        ├── set-configs.sh
        ├── setup-accessibility.sh
        ├── setup-animation.sh
        ├── setup-api-generation.sh
        ├── setup-auth.sh
        ├── setup-component-docs.sh
        ├── setup-dashboard.sh
        ├── setup-data-modeling.sh
        ├── setup-dynamic-ui.sh
        ├── setup-email-templates.sh
        ├── setup-file-management.sh
        ├── setup-i18n.sh
        ├── setup-noloco-theme.sh
        ├── setup-performance-optimization.sh
        ├── setup-postgresql.sh
        ├── setup-project.sh
        ├── setup-pwa.sh
        ├── setup-rbac.sh
        ├── setup-redux-actions.sh
        ├── setup-redux.sh
        ├── setup-responsive-design.sh
        ├── setup-sass.sh
        ├── setup-seo.sh
        ├── setup-state-management.sh
        ├── setup-styled-components.sh
        ├── setup-workflows.sh

# Project Documentation

### Node

# analyze the current project using this link : ‘https://github.com/harisbabic/Node’ 

# this link should have the project in the main branch ‘Node-Project-Current-State.txt’ file, along with our ‘Action-Plan-Master.txt’ for moving forward, as well as other ‘*.txt’ that have code written for either functionality we will use to adopt and implement into for our ‘/d/Node’ project, it will have information describing the action plan. 

# Read files in following order:

1. README.md
2. Node-Project-Current-State.txt
3. Action-Plan-Master.txt
4. functionality-in-queue-for-implementing.txt
5. projects-ai-toolbox-server-src-tests-utils.txt
6. projects-web-tools-client-server.txt

# What I am attempting to do with this repository, is to have a complete reference and answer to questions such as whats our current project state? What section are we working on currently?, and What functionality will we be implementing still? As we implement features and move forward in the project, I’ll be updating these files to reflect our state and action plan. This report should be able to help keep us on track. 


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
