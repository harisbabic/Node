# Node
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

# add-new-project

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
