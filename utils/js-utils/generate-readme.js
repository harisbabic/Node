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
