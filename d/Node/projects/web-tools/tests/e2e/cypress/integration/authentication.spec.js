/// <reference types="cypress" />
// tests/e2e/cypress/integration/authentication.spec.js
describe('User Authentication', () => {
  it('should register a new user and log in', () => {
    cy.visit('/register');
    cy.get('input[name="username"]').type('uniqueTestUser1'); // Example: Change 'testuser' to a unique username in each test
    cy.get('input[name="password"]').type('password123');
    cy.get('button').contains('Register').click();
  });
});


// Example: Change 'testuser' to a unique username in each test
// const response = await request(app)
//   .post('/login')
//   .send({ username: 'uniqueTestUser1', password: 'password123' });
