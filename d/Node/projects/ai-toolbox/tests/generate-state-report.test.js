// File: scripts/generate-state-report.test.js
const { generateStateReport } = require('../utils/generate-state-report');
const fs = require('fs');
const path = require('path');

test('generateStateReport creates a project state report', () => {
  const reportPath = path.join(__dirname, '..', 'project-state.json');
  if (fs.existsSync(reportPath)) fs.unlinkSync(reportPath); // Ensure file starts empty

  generateStateReport();

  const reportContent = fs.readFileSync(reportPath, 'utf-8');
  expect(reportContent).toContain('"timestamp"');
});
