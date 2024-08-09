// utils/backUpProjectFiles.js
/**
 * Compress the entire project directory.
 * Provide real-time updates on the compression progress.
 * Log errors and progress messages.
 * @param {string} directory - The root directory to verify.
 * @returns {string} - Result of the verification.
 */
const fs = require('fs');
const path = require('path');
const archiver = require('archiver');
const progress = require('progress-stream');

const dirName = 'docs'; // Only change the dirName var. Use '../' if you're going to back up the project root directory.

const zipDir = `../${dirName}`; // Which directory would you like to zip? Use -> '../' <- for root directory. 
const backUpDir = '../.backup-project-files'; // Which folder you're zipping the files into 
const zipName = dirName; // Name of the zip file tests.zip

// Paths
const projectDirectory = path.resolve(__dirname, zipDir); // (__dirname, '../') for root directory. Resolve project directory relative to script location
const backupDirectory = path.resolve(projectDirectory, backUpDir); // Replace with your backup path
console.log(projectDirectory);
console.log(backupDirectory);


// Ensure the backup directory exists
if (!fs.existsSync(backupDirectory)) {
    fs.mkdirSync(backupDirectory, { recursive: true });
}

// Function to generate a unique backup filename
const getUniqueBackupFileName = (baseName) => {
    let index = 0;
    let backupFile = path.join(backupDirectory, `${baseName}.zip`);
    while (fs.existsSync(backupFile)) {
        index += 1;
        backupFile = path.join(backupDirectory, `${baseName}-${index.toString().padStart(2, '0')}.zip`);
    }
    return backupFile;
};

const backupFile = getUniqueBackupFileName(zipName);

// Create a file to stream archive data to.
const output = fs.createWriteStream(backupFile);
const archive = archiver('zip', {
    zlib: { level: 9 } // Sets the compression level.
});

// Listen for all archive data to be written
output.on('close', () => {
    console.log(`Backup completed: ${archive.pointer()} total bytes`);
});

// This event is fired when the data source is drained no matter what was the data source.
// It is not part of this library but rather from the NodeJS Stream API.
output.on('end', () => {
    console.log('Data has been drained');
});

// Good practice to catch this error explicitly
archive.on('error', (err) => {
    throw err;
});

// Create progress stream
const progressStream = progress({
    length: fs.statSync(projectDirectory).size,
    time: 100 // Update every 100 ms
});

progressStream.on('progress', (progress) => {
    console.log(`Compression progress: ${Math.round(progress.percentage)}% (${(progress.transferred / (1024 * 1024)).toFixed(2)} MB transferred)`);
});

// Pipe the progress stream to the archive
archive.pipe(progressStream).pipe(output);

// Append files from the project directory
archive.directory(projectDirectory, false);

// Finalize the archive (i.e. we are done appending files but streams have to finish yet)
archive.finalize();