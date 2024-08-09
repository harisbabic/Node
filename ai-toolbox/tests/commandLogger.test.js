// tests/commandLogger.test.js
const fs = require('fs');
const path = require('path');
const { logCommand } = require('../utils/commandLogger');

describe('Command Logger', () => {
  const logPath = path.join(__dirname, '../command_log.txt');
  beforeAll(() => {
    if (!fs.existsSync(logPath)) {
      fs.writeFileSync(logPath, '', 'utf8');
    }
  });

  it('should log a command with a timestamp', () => {
    const command = 'git commit';
    logCommand(command);
    const logContents = fs.readFileSync(logPath, 'utf-8');
    expect(logContents).toContain(command);
  });
});
