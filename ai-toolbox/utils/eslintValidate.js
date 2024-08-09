// utils/validate.js
const { execSync } = require('child_process');
const path = require('path');

const projectRoot = path.resolve(__dirname, '..');

try {
    const eslintConfigPath = path.join(projectRoot, 'eslint.config.mjs');
    const rootDir = path.join(projectRoot, '**/*.js');
    const scriptsPath = path.join(projectRoot, 'scripts/*.js');
    const utilsPath = path.join(projectRoot, 'utils/*.js');

    const command = `npx eslint --config "${eslintConfigPath}" "${rootDir.replace(/\\/g, "/")}" "${scriptsPath.replace(/\\/g, "/")}" "${utilsPath.replace(/\\/g, "/")}"`;

    console.log(`ESLint Config Path: ${eslintConfigPath}`);
    console.log(`Root Path: ${rootDir}`);
    console.log(`Scripts Path: ${scriptsPath}`);
    console.log(`Utils Path: ${utilsPath}`);
    console.log(`Executing Command: ${command}`);

    execSync(command, { stdio: 'inherit' });
    console.log('ESLint validation completed successfully.');
} catch (error) {
    console.error('Error running ESLint:', error.message);
    process.exit(1);
}
