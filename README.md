# Node Project Management Hub

## Overview
This repository serves as a central management hub for the `/d/Node` project. It contains documentation on the current project state, action plans, and code snippets for future implementation.

## Working Rules and Instructions

Before contributing or reviewing code, please read our [Working Rules and Instructions](WORKING_RULES.md). These guidelines ensure consistency and clarity in our development process.

## Project Structure

```
Node/
├── .gitignore
├── CONTRIBUTING.md
├── d
│   │   └── Node
│       │       ├── projects
│       │   │       │   ├── ai-toolbox
│       │   │   │       │   │   ├── tests
│       │   │   │   │       │   │   │   ├── aiFunctions.test.js
│       │   │   │   │       │   │   │   ├── analyzeCodeQuality.test.js
│       │   │   │   │       │   │   │   ├── analyzeState.test.js
│       │   │   │   │       │   │   │   ├── checkDependencies.test.js
│       │   │   │   │       │   │   │   ├── codeAnalyzer.test.js
│       │   │   │   │       │   │   │   ├── commandLogger.test.js
│       │   │   │   │       │   │   │   ├── dependencyVerifier.test.js
│       │   │   │   │       │   │   │   ├── directoryTraversal.test.js
│       │   │   │   │       │   │   │   ├── generate-config.test.js
│       │   │   │   │       │   │   │   ├── generate-state-report.test.js
│       │   │   │   │       │   │   │   ├── generateProjectStructure.test.js
│       │   │   │   │       │   │   │   ├── gptHelper.test.js
│       │   │   │   │       │   │   │   ├── sum.test.js
│       │   │   │   │       │   │   │   ├── validateProject.test.js
│       │   │   │   │       │   │   │   ├── verifyProjectStructure.test.js
│       │   │   │   │       │   │   │   └── virtualAssistant.test.js
│       │   │   │       │   │   └── utils
│       │   │       │       │   │       ├── aiFunctions.js
│       │   │       │       │   │       ├── analyzeCodeQuality.js
│       │   │       │       │   │       ├── analyzeState.js
│       │   │       │       │   │       ├── backUpProjectFiles.js
│       │   │       │       │   │       ├── checkDependencies.js
│       │   │       │       │   │       ├── codeAnalyzer.js
│       │   │       │       │   │       ├── commandLogger.js
│       │   │       │       │   │       ├── dependencyVerifier.js
│       │   │       │       │   │       ├── directoryTraversal.js
│       │   │       │       │   │       ├── eslintValidate.js
│       │   │       │       │   │       ├── generate-config.js
│       │   │       │       │   │       ├── generate-state-report.js
│       │   │       │       │   │       ├── generateProjectStructure.js
│       │   │       │       │   │       ├── gptConnect.js
│       │   │       │       │   │       ├── gptHelper.js
│       │   │       │       │   │       ├── nextStep.js
│       │   │       │       │   │       ├── projectVerifier.js
│       │   │       │       │   │       ├── taskRunner.js
│       │   │       │       │   │       ├── testApiConnection.js
│       │   │       │       │   │       ├── validateProject.js
│       │   │       │       │   │       ├── verifyProjectStructure.js
│       │   │       │       │   │       └── virtualAssistant.js
│       │   │       │   ├── DemTech
│       │   │   │       │   │   ├── client
│       │   │   │   │       │   │   │   └── src
│       │   │   │       │       │   │   │       ├── components
│       │   │   │       │   │       │   │   │       │   ├── BusinessList.js
│       │   │   │       │   │       │   │   │       │   ├── ClientForm.js
│       │   │   │       │   │       │   │   │       │   ├── Clients.js
│       │   │   │       │   │       │   │   │       │   ├── CreatePoll.js
│       │   │   │       │   │       │   │   │       │   ├── Dashboard.js
│       │   │   │       │   │       │   │   │       │   ├── DynamicUI
│       │   │   │       │   │   │       │   │   │       │   │   └── DynamicForm.js
│       │   │   │       │   │       │   │   │       │   ├── EventList.js
│       │   │   │       │   │       │   │   │       │   ├── Features.css
│       │   │   │       │   │       │   │   │       │   ├── Features.js
│       │   │   │       │   │       │   │   │       │   ├── forms
│       │   │   │       │   │   │       │   │   │       │   │   ├── BusinessForm.js
│       │   │   │       │   │   │       │   │   │       │   │   ├── EventForm.js
│       │   │   │       │   │   │       │   │   │       │   │   └── Register.js
│       │   │   │       │   │       │   │   │       │   ├── Hero.css
│       │   │   │       │   │       │   │   │       │   ├── Hero.js
│       │   │   │       │   │       │   │   │       │   ├── layout
│       │   │   │       │   │   │       │   │   │       │   │   ├── Footer.css
│       │   │   │       │   │   │       │   │   │       │   │   ├── Footer.js
│       │   │   │       │   │   │       │   │   │       │   │   ├── Navbar.css
│       │   │   │       │   │   │       │   │   │       │   │   └── Navbar.js
│       │   │   │       │   │       │   │   │       │   ├── Login.js
│       │   │   │       │   │       │   │   │       │   ├── Navigation.js
│       │   │   │       │   │       │   │   │       │   ├── NotFound.js
│       │   │   │       │   │       │   │   │       │   ├── pages
│       │   │   │       │   │   │       │   │   │       │   │   ├── About.js
│       │   │   │       │   │   │       │   │   │       │   │   ├── Contact.js
│       │   │   │       │   │   │       │   │   │       │   │   ├── Dashboard.js
│       │   │   │       │   │   │       │   │   │       │   │   ├── Home.js
│       │   │   │       │   │   │       │   │   │       │   │   └── Services.js
│       │   │   │       │   │       │   │   │       │   ├── Polls.js
│       │   │   │       │   │       │   │   │       │   ├── ReviewForm.js
│       │   │   │       │   │       │   │   │       │   ├── ReviewList.js
│       │   │   │       │   │       │   │   │       │   ├── ServiceForm.js
│       │   │   │       │   │       │   │   │       │   ├── ServiceList.js
│       │   │   │       │   │       │   │   │       │   ├── Testimonials.css
│       │   │   │       │   │       │   │   │       │   ├── Testimonials.js
│       │   │   │       │   │       │   │   │       │   └── ThemeToggle.js
│       │   │   │       │       │   │   │       ├── pages
│       │   │   │       │   │       │   │   │       │   ├── Clients.js
│       │   │   │       │   │       │   │   │       │   ├── Dashboard.js
│       │   │   │       │   │       │   │   │       │   ├── Invoices.js
│       │   │   │       │   │       │   │   │       │   └── Projects.js
│       │   │   │       │       │   │   │       ├── services
│       │   │   │       │   │       │   │   │       │   └── api.js
│       │   │   │       │       │   │   │       ├── store
│       │   │   │       │   │       │   │   │       │   └── index.js
│       │   │   │       │       │   │   │       └── styles
│       │   │   │           │       │   │   │           ├── App.css
│       │   │   │           │       │   │   │           ├── Clients.css
│       │   │   │           │       │   │   │           ├── Dashboard.css
│       │   │   │           │       │   │   │           ├── global.css
│       │   │   │           │       │   │   │           ├── Invoices.css
│       │   │   │           │       │   │   │           ├── Navigation.css
│       │   │   │           │       │   │   │           ├── Projects.css
│       │   │   │           │       │   │   │           └── variables.css
│       │   │   │       │   │   ├── server
│       │   │   │   │       │   │   │   └── src
│       │   │   │       │       │   │   │       ├── config
│       │   │   │       │   │       │   │   │       │   ├── auth.js
│       │   │   │       │   │       │   │   │       │   ├── commission.js
│       │   │   │       │   │       │   │   │       │   ├── database.js
│       │   │   │       │   │       │   │   │       │   ├── passport.js
│       │   │   │       │   │       │   │   │       │   ├── swagger.js
│       │   │   │       │   │       │   │   │       │   └── webpack-config.js
│       │   │   │       │       │   │   │       ├── controllers
│       │   │   │       │   │       │   │   │       │   ├── authController.js
│       │   │   │       │   │       │   │   │       │   ├── businessController.js
│       │   │   │       │   │       │   │   │       │   └── eventController.js
│       │   │   │       │       │   │   │       ├── middleware
│       │   │   │       │   │       │   │   │       │   ├── auth.js
│       │   │   │       │   │       │   │   │       │   ├── error-handling-middleware.js
│       │   │   │       │   │       │   │   │       │   └── input-validation.js
│       │   │   │       │       │   │   │       ├── models
│       │   │   │       │   │       │   │   │       │   └── User.js
│       │   │   │       │       │   │   │       ├── routes
│       │   │   │       │   │       │   │   │       │   ├── auth.js
│       │   │   │       │   │       │   │   │       │   └── dataModelRoutes.js
│       │   │   │       │       │   │   │       └── services
│       │   │   │           │       │   │   │           └── dataModelingService.js
│       │   │   │       │   │   └── tests
│       │   │       │       │   │       ├── client
│       │   │       │   │       │   │       │   ├── apiRequests.test.js
│       │   │       │   │       │   │       │   ├── componentRendering.test.js
│       │   │       │   │       │   │       │   ├── components
│       │   │       │   │   │       │   │       │   │   └── Navbar.test.js
│       │   │       │   │       │   │       │   └── formHandling.test.js
│       │   │       │       │   │       ├── common
│       │   │       │   │       │   │       │   ├── configuration.test.js
│       │   │       │   │       │   │       │   ├── utilityFunctions.test.js
│       │   │       │   │       │   │       │   └── validation.test.js
│       │   │       │       │   │       ├── e2e
│       │   │       │       │   │       ├── integration
│       │   │       │       │   │       ├── server
│       │   │       │   │       │   │       │   ├── apiRoutes.test.js
│       │   │       │   │       │   │       │   ├── authentication.test.js
│       │   │       │   │       │   │       │   ├── controllers
│       │   │       │   │   │       │   │       │   │   └── authController.test.js
│       │   │       │   │       │   │       │   └── databaseOperations.test.js
│       │   │       │       │   │       └── unit
│       │   │           │       │   │           ├── authController.test.js
│       │   │           │       │   │           └── dataModelingService.test.js
│       │   │       │   ├── ultimate
│       │   │   │       │   │   ├── .github
│       │   │   │       │   │   ├── .gitignore
│       │   │   │       │   │   ├── client
│       │   │   │   │       │   │   │   ├── .babelrc
│       │   │   │   │       │   │   │   ├── .gitignore
│       │   │   │   │       │   │   │   ├── .storybook
│       │   │   │   │   │       │   │   │   │   ├── main.js
│       │   │   │   │   │       │   │   │   │   └── preview.js
│       │   │   │   │       │   │   │   ├── components.json
│       │   │   │   │       │   │   │   ├── package-lock.json
│       │   │   │   │       │   │   │   ├── package.json
│       │   │   │   │       │   │   │   ├── postcss.config.js
│       │   │   │   │       │   │   │   ├── public
│       │   │   │   │   │       │   │   │   │   ├── favicon.ico
│       │   │   │   │   │       │   │   │   │   ├── index.html
│       │   │   │   │   │       │   │   │   │   ├── locales
│       │   │   │   │   │   │       │   │   │   │   │   ├── en
│       │   │   │   │   │   │   │       │   │   │   │   │   │   └── translation.json
│       │   │   │   │   │   │       │   │   │   │   │   └── es
│       │   │   │   │   │       │       │   │   │   │   │       └── translation.json
│       │   │   │   │   │       │   │   │   │   ├── logo192.png
│       │   │   │   │   │       │   │   │   │   ├── logo512.png
│       │   │   │   │   │       │   │   │   │   ├── manifest.json
│       │   │   │   │   │       │   │   │   │   ├── robots.txt
│       │   │   │   │   │       │   │   │   │   └── sitemap.xml
│       │   │   │   │       │   │   │   ├── README.md
│       │   │   │   │       │   │   │   ├── scripts
│       │   │   │   │   │       │   │   │   │   └── generate-sitemap.js
│       │   │   │   │       │   │   │   ├── src
│       │   │   │   │   │       │   │   │   │   ├── @
│       │   │   │   │   │   │       │   │   │   │   │   ├── components
│       │   │   │   │   │   │   │       │   │   │   │   │   │   └── ui
│       │   │   │   │   │   │       │       │   │   │   │   │   │       └── alert.tsx
│       │   │   │   │   │   │       │   │   │   │   │   └── lib
│       │   │   │   │   │       │       │   │   │   │   │       └── utils.ts
│       │   │   │   │   │       │   │   │   │   ├── App.css
│       │   │   │   │   │       │   │   │   │   ├── App.js
│       │   │   │   │   │       │   │   │   │   ├── App.test.js
│       │   │   │   │   │       │   │   │   │   ├── components
│       │   │   │   │   │   │       │   │   │   │   │   ├── AnimatedBox.js
│       │   │   │   │   │   │       │   │   │   │   │   ├── Dashboard
│       │   │   │   │   │   │   │       │   │   │   │   │   │   ├── Dashboard.js
│       │   │   │   │   │   │   │       │   │   │   │   │   │   └── DashboardWidget.js
│       │   │   │   │   │   │       │   │   │   │   │   ├── DynamicUI
│       │   │   │   │   │   │   │       │   │   │   │   │   │   ├── DynamicForm.js
│       │   │   │   │   │   │   │       │   │   │   │   │   │   └── DynamicTable.js
│       │   │   │   │   │   │       │   │   │   │   │   ├── FocusTrap.js
│       │   │   │   │   │   │       │   │   │   │   │   ├── LanguageSwitcher.js
│       │   │   │   │   │   │       │   │   │   │   │   ├── Noloco
│       │   │   │   │   │   │   │       │   │   │   │   │   │   ├── Button.js
│       │   │   │   │   │   │   │       │   │   │   │   │   │   ├── Card.js
│       │   │   │   │   │   │   │       │   │   │   │   │   │   └── Container.js
│       │   │   │   │   │   │       │   │   │   │   │   ├── ResponsiveGrid.js
│       │   │   │   │   │   │       │   │   │   │   │   └── SEO.js
│       │   │   │   │   │       │   │   │   │   ├── i18n
│       │   │   │   │   │   │       │   │   │   │   │   └── i18n.js
│       │   │   │   │   │       │   │   │   │   ├── index.css
│       │   │   │   │   │       │   │   │   │   ├── index.js
│       │   │   │   │   │       │   │   │   │   ├── layouts
│       │   │   │   │   │   │       │   │   │   │   │   └── DashboardLayout.js
│       │   │   │   │   │       │   │   │   │   ├── logo.svg
│       │   │   │   │   │       │   │   │   │   ├── redux
│       │   │   │   │   │   │       │   │   │   │   │   ├── slices
│       │   │   │   │   │   │   │       │   │   │   │   │   │   ├── exampleSlice.js
│       │   │   │   │   │   │   │       │   │   │   │   │   │   └── index.js
│       │   │   │   │   │   │       │   │   │   │   │   └── store.js
│       │   │   │   │   │       │   │   │   │   ├── reportWebVitals.js
│       │   │   │   │   │       │   │   │   │   ├── services
│       │   │   │   │   │   │       │   │   │   │   │   └── apiService.js
│       │   │   │   │   │       │   │   │   │   ├── serviceWorkerRegistration.js
│       │   │   │   │   │       │   │   │   │   ├── setupTests.js
│       │   │   │   │   │       │   │   │   │   ├── stories
│       │   │   │   │   │   │       │   │   │   │   │   ├── assets
│       │   │   │   │   │   │   │       │   │   │   │   │   │   ├── accessibility.png
│       │   │   │   │   │   │   │       │   │   │   │   │   │   ├── accessibility.svg
│       │   │   │   │   │   │   │       │   │   │   │   │   │   ├── addon-library.png
│       │   │   │   │   │   │   │       │   │   │   │   │   │   ├── assets.png
│       │   │   │   │   │   │   │       │   │   │   │   │   │   ├── avif-test-image.avif
│       │   │   │   │   │   │   │       │   │   │   │   │   │   ├── context.png
│       │   │   │   │   │   │   │       │   │   │   │   │   │   ├── discord.svg
│       │   │   │   │   │   │   │       │   │   │   │   │   │   ├── docs.png
│       │   │   │   │   │   │   │       │   │   │   │   │   │   ├── figma-plugin.png
│       │   │   │   │   │   │   │       │   │   │   │   │   │   ├── github.svg
│       │   │   │   │   │   │   │       │   │   │   │   │   │   ├── share.png
│       │   │   │   │   │   │   │       │   │   │   │   │   │   ├── styling.png
│       │   │   │   │   │   │   │       │   │   │   │   │   │   ├── testing.png
│       │   │   │   │   │   │   │       │   │   │   │   │   │   ├── theming.png
│       │   │   │   │   │   │   │       │   │   │   │   │   │   ├── tutorials.svg
│       │   │   │   │   │   │   │       │   │   │   │   │   │   └── youtube.svg
│       │   │   │   │   │   │       │   │   │   │   │   ├── button.css
│       │   │   │   │   │   │       │   │   │   │   │   ├── Button.jsx
│       │   │   │   │   │   │       │   │   │   │   │   ├── Button.stories.js
│       │   │   │   │   │   │       │   │   │   │   │   ├── Configure.mdx
│       │   │   │   │   │   │       │   │   │   │   │   ├── header.css
│       │   │   │   │   │   │       │   │   │   │   │   ├── Header.jsx
│       │   │   │   │   │   │       │   │   │   │   │   ├── Header.stories.js
│       │   │   │   │   │   │       │   │   │   │   │   ├── page.css
│       │   │   │   │   │   │       │   │   │   │   │   ├── Page.jsx
│       │   │   │   │   │   │       │   │   │   │   │   └── Page.stories.js
│       │   │   │   │   │       │   │   │   │   ├── styles
│       │   │   │   │   │   │       │   │   │   │   │   ├── abstracts
│       │   │   │   │   │   │   │       │   │   │   │   │   │   ├── _mixins.scss
│       │   │   │   │   │   │   │       │   │   │   │   │   │   └── _variables.scss
│       │   │   │   │   │   │       │   │   │   │   │   ├── base
│       │   │   │   │   │   │   │       │   │   │   │   │   │   └── _reset.scss
│       │   │   │   │   │   │       │   │   │   │   │   ├── breakpoints.js
│       │   │   │   │   │   │       │   │   │   │   │   ├── components
│       │   │   │   │   │   │       │   │   │   │   │   ├── GlobalStyle.js
│       │   │   │   │   │   │       │   │   │   │   │   ├── layout
│       │   │   │   │   │   │       │   │   │   │   │   ├── main.scss
│       │   │   │   │   │   │       │   │   │   │   │   ├── NolocoTheme.js
│       │   │   │   │   │   │       │   │   │   │   │   ├── pages
│       │   │   │   │   │   │       │   │   │   │   │   ├── ResponsiveWrapper.js
│       │   │   │   │   │   │       │   │   │   │   │   └── theme.js
│       │   │   │   │   │       │   │   │   │   └── utils
│       │   │   │   │       │       │   │   │   │       ├── imageOptimization.js
│       │   │   │   │       │       │   │   │   │       └── useIntersectionObserver.js
│       │   │   │   │       │   │   │   ├── tailwind.config.js
│       │   │   │   │       │   │   │   ├── tsconfig.json
│       │   │   │   │       │   │   │   └── webpack.config.js
│       │   │   │       │   │   ├── docs
│       │   │   │       │   │   ├── package.json
│       │   │   │       │   │   ├── README.md
│       │   │   │       │   │   └── server
│       │   │       │       │   │       ├── babel.config.js
│       │   │       │       │   │       ├── jest.config.js
│       │   │       │       │   │       ├── jest.setup.js
│       │   │       │       │   │       ├── package.json
│       │   │       │       │   │       ├── src
│       │   │       │   │       │   │       │   ├── app.js
│       │   │       │   │       │   │       │   ├── config
│       │   │       │   │   │       │   │       │   │   ├── database.js
│       │   │       │   │   │       │   │       │   │   └── passport.js
│       │   │       │   │       │   │       │   ├── controllers
│       │   │       │   │   │       │   │       │   │   ├── about.js
│       │   │       │   │   │       │   │       │   │   ├── contact.js
│       │   │       │   │   │       │   │       │   │   └── docs.js
│       │   │       │   │       │   │       │   ├── index.js
│       │   │       │   │       │   │       │   ├── middleware
│       │   │       │   │   │       │   │       │   │   ├── auth.js
│       │   │       │   │   │       │   │       │   │   ├── error-handling-middleware.js
│       │   │       │   │   │       │   │       │   │   └── errorHandler.js
│       │   │       │   │       │   │       │   ├── middlewares
│       │   │       │   │   │       │   │       │   │   └── rbacMiddleware.js
│       │   │       │   │       │   │       │   ├── models
│       │   │       │   │   │       │   │       │   │   ├── about.js
│       │   │       │   │   │       │   │       │   │   ├── contact.js
│       │   │       │   │   │       │   │       │   │   ├── docs.js
│       │   │       │   │   │       │   │       │   │   ├── EmailTemplate.js
│       │   │       │   │   │       │   │       │   │   ├── File.js
│       │   │       │   │   │       │   │       │   │   ├── User.js
│       │   │       │   │   │       │   │       │   │   └── Workflow.js
│       │   │       │   │       │   │       │   ├── redux
│       │   │       │   │   │       │   │       │   │   └── actions
│       │   │       │   │       │       │   │       │   │       ├── authActions.js
│       │   │       │   │       │       │   │       │   │       ├── projectActions.js
│       │   │       │   │       │       │   │       │   │       └── taskActions.js
│       │   │       │   │       │   │       │   ├── routes
│       │   │       │   │   │       │   │       │   │   ├── about.js
│       │   │       │   │   │       │   │       │   │   ├── auth.js
│       │   │       │   │   │       │   │       │   │   ├── authRoutes.js
│       │   │       │   │   │       │   │       │   │   ├── contact.js
│       │   │       │   │   │       │   │       │   │   ├── docs.js
│       │   │       │   │   │       │   │       │   │   ├── dynamicApiRoutes.js
│       │   │       │   │   │       │   │       │   │   ├── emailTemplateRoutes.js
│       │   │       │   │   │       │   │       │   │   ├── fileRoutes.js
│       │   │       │   │   │       │   │       │   │   ├── models.js
│       │   │       │   │   │       │   │       │   │   └── workflowRoutes.js
│       │   │       │   │       │   │       │   ├── services
│       │   │       │   │   │       │   │       │   │   ├── apiGenerationService.js
│       │   │       │   │   │       │   │       │   │   ├── emailService.js
│       │   │       │   │   │       │   │       │   │   ├── fileService.js
│       │   │       │   │   │       │   │       │   │   └── workflowService.js
│       │   │       │   │       │   │       │   └── utils
│       │   │       │       │       │   │       │       └── apiResponse.js
│       │   │       │       │   │       └── tests
│       │   │           │       │   │           ├── integration
│       │   │           │   │       │   │           │   └── api.test.js
│       │   │           │       │   │           └── unit
│       │   │               │       │   │               └── sample.test.js
│       │   │       │   └── web-tools
│       │       │       │       ├── client
│       │       │   │       │       │   └── src
│       │       │       │       │       │       └── components
│       │       │           │       │       │           ├── About.js
│       │       │           │       │       │           ├── BusinessForm.js
│       │       │           │       │       │           ├── BusinessList.js
│       │       │           │       │       │           ├── Contact.js
│       │       │           │       │       │           ├── CreatePoll.js
│       │       │           │       │       │           ├── Dashboard.js
│       │       │           │       │       │           ├── EventForm.js
│       │       │           │       │       │           ├── EventList.js
│       │       │           │       │       │           ├── Features.css
│       │       │           │       │       │           ├── Features.js
│       │       │           │       │       │           ├── Footer.css
│       │       │           │       │       │           ├── Footer.js
│       │       │           │       │       │           ├── Hero.css
│       │       │           │       │       │           ├── Hero.js
│       │       │           │       │       │           ├── Home.js
│       │       │           │       │       │           ├── Login.js
│       │       │           │       │       │           ├── Navbar.css
│       │       │           │       │       │           ├── Navbar.js
│       │       │           │       │       │           ├── NotFound.js
│       │       │           │       │       │           ├── Polls.js
│       │       │           │       │       │           ├── Register.js
│       │       │           │       │       │           ├── ReviewForm.js
│       │       │           │       │       │           ├── ReviewList.js
│       │       │           │       │       │           ├── ServiceForm.js
│       │       │           │       │       │           ├── ServiceList.js
│       │       │           │       │       │           ├── Services.js
│       │       │           │       │       │           ├── Testimonials.css
│       │       │           │       │       │           ├── Testimonials.js
│       │       │           │       │       │           └── ThemeToggle.js
│       │       │       │       ├── server
│       │       │   │       │       │   └── src
│       │       │       │       │       │       ├── config
│       │       │       │   │       │       │       │   ├── auth.js
│       │       │       │   │       │       │       │   ├── commission.js
│       │       │       │   │       │       │       │   └── passport.js
│       │       │       │       │       │       ├── middleware
│       │       │       │   │       │       │       │   └── auth.js
│       │       │       │       │       │       ├── models
│       │       │       │   │       │       │       │   ├── Business.js
│       │       │       │   │       │       │       │   ├── Event.js
│       │       │       │   │       │       │       │   ├── Review.js
│       │       │       │   │       │       │       │   ├── Service.js
│       │       │       │   │       │       │       │   └── User.js
│       │       │       │       │       │       └── routes
│       │       │           │       │       │           ├── auth.js
│       │       │           │       │       │           ├── businesses.js
│       │       │           │       │       │           ├── events.js
│       │       │           │       │       │           ├── payments.js
│       │       │           │       │       │           ├── polls.js
│       │       │           │       │       │           ├── protectedRoute.js
│       │       │           │       │       │           ├── reviews.js
│       │       │           │       │       │           ├── rsvp.js
│       │       │           │       │       │           ├── services.js
│       │       │           │       │       │           └── users.js
│       │       │       │       └── tests
│       │           │       │           ├── e2e
│       │           │   │       │           │   └── cypress
│       │           │       │       │           │       └── integration
│       │           │           │       │           │           └── authentication.spec.js
│       │           │       │           ├── fileMock.js
│       │           │       │           ├── integration
│       │           │   │       │           │   └── services.test.js
│       │           │       │           ├── setup.js
│       │           │       │           ├── styleMock.js
│       │           │       │           └── unit
│       │               │       │               └── service.test.js
│       │       ├── shared-utils
│       │   │       │   ├── generate-ai-tools.js
│       │   │       │   ├── generate-charts.js
│       │   │       │   ├── generate-components.js
│       │   │       │   ├── generate-forms-templates.js
│       │   │       │   ├── generate-mock-data.js
│       │   │       │   ├── generate-models.js
│       │   │       │   ├── generate-project-readme.js
│       │   │       │   ├── generate-routes.js
│       │   │       │   ├── generate-structure.js
│       │   │       │   └── package.json
│       │       ├── tests
│       │   │       │   ├── integration
│       │   │   │       │   │   └── api.test.js
│       │   │       │   └── unit
│       │       │       │       └── sample.test.js
│       │       └── utils
│           │           ├── continue-master-setup.sh
│           │           ├── create-api-route.sh
│           │           ├── generate-api-service.sh
│           │           ├── generate-config.sh
│           │           ├── generate-layout.sh
│           │           ├── generate-tests.sh
│           │           ├── init-git.sh
│           │           ├── master-setup.sh
│           │           ├── run-migrations.sh
│           │           ├── set-configs.sh
│           │           ├── setup-accessibility.sh
│           │           ├── setup-animation.sh
│           │           ├── setup-api-generation.sh
│           │           ├── setup-auth.sh
│           │           ├── setup-component-docs.sh
│           │           ├── setup-dashboard.sh
│           │           ├── setup-data-modeling.sh
│           │           ├── setup-dynamic-ui.sh
│           │           ├── setup-email-templates.sh
│           │           ├── setup-file-management.sh
│           │           ├── setup-i18n.sh
│           │           ├── setup-noloco-theme.sh
│           │           ├── setup-performance-optimization.sh
│           │           ├── setup-postgresql.sh
│           │           ├── setup-project.sh
│           │           ├── setup-pwa.sh
│           │           ├── setup-rbac.sh
│           │           ├── setup-redux-actions.sh
│           │           ├── setup-redux.sh
│           │           ├── setup-responsive-design.sh
│           │           ├── setup-sass.sh
│           │           ├── setup-seo.sh
│           │           ├── setup-state-management.sh
│           │           ├── setup-styled-components.sh
│           │           └── setup-workflows.sh
├── docs
│   │   ├── Action-Plan-Master.md
│   │   ├── Node-Project-Current-State.md
│   │   ├── Project-Structure.md
│   │   └── Roadmap.md
├── LICENSE
├── README.md
└── WORKING_RULES.md
```

## Quick Start
1. Clone this repository
2. Navigate to the project directory
3. Run `d/Node/utils/setup-project.sh <project-name>` to set up a new project

## Current Project State
[Link to Node-Project-Current-State.md](docs/Node-Project-Current-State.md)

Last Updated: [8/8/24 10:00PM CDT]

## Action Plan
[Link to Action-Plan-Master.md](docs/Action-Plan-Master.md)

Last Updated: [8/8/24 10:00PM CDT]

## Key Components

### Utility Scripts
Located in the `d/Node/utils` directory, these shell scripts automate various setup and generation tasks:
- `setup-project.sh`: Sets up a new project
- `setup-postgresql.sh`: Configures PostgreSQL for the project
- `generate-api-routes.sh`: Generates API routes

[View all utility scripts](d/Node/utils/)

### JavaScript Utilities
Located in `d/node/shared-utils`, these scripts provide functionality for component and model generation:
- `generate-components.js`: Automates React component creation
- `generate-models.js`: Generates data models

[View all JS utilities](d/Node/shared-utils/)

### React Components
Reusable React components and `*.js` code files are located within each project inside the `projects` directory
* (e.g., Ai-toolbox, DemTech, ultimate, and web-tools):
- `d/Node/projects/DemTech/client/src/components/Dashboard.js`: Main dashboard component
- `d/Node/projects/web-tools/client/src/components/CreatePoll.js`: Create Poll form component

[View all components](d/Node/projects/web-tools/client/src/components/)

## Testing
- Unit tests: `npm run test:unit`
- Integration tests: `npm run test:integration`
- E2E tests: `npm run test:e2e`

## Contributing
Please read our [Contributing Guidelines](CONTRIBUTING.md) before submitting any pull requests.

## Roadmap
- [x] Project Setup Automation
- [ ] Authentication System
- [ ] Dashboard Implementation
- [ ] File Management System
- [ ] Role-Based Access Control

[View detailed roadmap](docs/Roadmap.md)

## Dependencies
- Node.js (v14+)
- PostgreSQL (v12+)
- React (v17+)

For a full list of dependencies, see `package.json`.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
