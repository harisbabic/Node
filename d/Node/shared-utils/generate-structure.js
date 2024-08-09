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
