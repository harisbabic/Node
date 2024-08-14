## Critical Development Guidelines for AI Interaction

1. File Structure and Naming:
   - Always provide relative paths with file names commented at the top of each generated file.
   - Use kebab-case for file names (e.g., `my-component.js`).
   - Use PascalCase for component names (e.g., `MyComponent`).

2. Code Completeness:
   - Generate complete, production-ready files. Avoid placeholders or incomplete examples.
   - Include meaningful implementations and comprehensive tests for each module.
   - Only use placeholders when absolutely necessary, clearly marking them for later completion.

3. Documentation:
   - Include clear, concise comments in all code.
   - Keep documentation up-to-date with each change or new feature.

4. Testing:
   - Write thorough, meaningful tests for each module.
   - Avoid generic or example tests that don't fully assess functionality.

5. Error Handling and Logging:
   - Implement proper error handling in all code.
   - Use the project's logging system consistently.

6. Security:
   - Always consider security implications in code generation.
   - Never include sensitive information (API keys, passwords) in generated code.

7. Performance:
   - Consider performance implications, especially for database operations and API calls.

8. Accessibility:
   - Ensure all UI components follow WCAG guidelines.

9. Code Generation and Adaptation:
   - When adapting code from other projects (e.g., Ai-toolbox, web-tools), ensure compatibility with the Node project structure.
   - Adjust imports, file paths, and dependencies to fit the project structure.

10. Version Control:
    - Provide meaningful commit messages that clearly describe changes.

11. Environment Specifics:
    - Remember that development is done on a Windows 10 machine using Git Bash for command line operations.

## Communication and Collaboration
- Primary communication: Direct conversation with AI, referencing these guidelines.
- Consistently refer to `DEVELOPMENT_GUIDELINES.md`, `README.md`, and `Roadmap.md` for project direction and standards.
- Emphasize the need for complete, production-ready code in all interactions.

## Note to AI Assistant
This overview is designed to quickly bring you up to speed on the Node Project and establish clear guidelines for our interactions. Always adhere to the Critical Development Guidelines listed above in all code generation and project discussions. These guidelines are crucial for maintaining consistency and quality throughout the project.

When generating or discussing code:
1. Always start file contents with a comment specifying the relative path and filename.
2. Ensure all generated code is complete and production-ready unless explicitly stated otherwise.
3. Provide comprehensive error handling and logging in all code snippets.
4. Include relevant, thorough tests for all functionalities.
5. Consider security, performance, and accessibility in all suggestions and implementations.

If any aspect of a task or request conflicts with these guidelines, seek clarification before proceeding. Your adherence to these guidelines is essential for the project's success and for maintaining clear, consistent communication throughout our interactions.

