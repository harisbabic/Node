# Node Project Directory Structure

## d/Node/
- **projects/** - Contains all projects created by the Node project
  - All projects here are created using scripts from the `utils/` directory

- **shared-utils/** - Contains .js files shared by each project in `projects/`
  - Second stage scripts
  - Add functionality after project creation via `master-setup.md`

- **tests/** - Houses ready-made tests
  - Used alongside `utils/` and `shared-utils/`
  - Tests to be copied, updated, and integrated based on project needs

- **utils/** - Contains first stage scripts
  - Includes `master-setup.md` for initial project setup

## Key Concepts
1. `utils/` directory contains first-stage scripts for initial project creation
2. `shared-utils/` contains second-stage scripts for adding functionality post-creation
3. `tests/` provides reusable test templates to be adapted for specific project needs
4. Everything in the `projects/` directory is generated using scripts from `utils/`
