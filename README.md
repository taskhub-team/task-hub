# TaskHub

[![Development Deployment](https://github.com/taskhub-team/task-hub/actions/workflows/dev-deploy.yml/badge.svg)](https://github.com/taskhub-team/task-hub/actions/workflows/dev-deploy.yml) [![Production Release](https://github.com/taskhub-team/task-hub/actions/workflows/production-release.yml/badge.svg)](https://github.com/taskhub-team/task-hub/actions/workflows/production-release.yml) [![code style: prettier](https://img.shields.io/badge/code_style-prettier-ff69b4.svg)](https://github.com/prettier/prettier) [![Conventional Commits](https://img.shields.io/badge/Conventional%20Commits-1.0.0-yellow.svg)](https://conventionalcommits.org)

TaskHub is a minimalist task management application built with modern web technologies. This project serves as a showcase for React, TypeScript, and CI/CD pipeline implementation.

## Key Features

- Modern React and TypeScript setup
- CI/CD pipeline with GitHub Actions
- Automated semantic versioning with semantic-release
- Multi-environment deployment (development, preview, production)

## Tech Stack

- **Frontend**: React, TypeScript, Vite
- **CI/CD**: GitHub Actions
- **Versioning**: semantic-release with Conventional Commits
- **Deployment**: Azure Static Web Apps

## Continuous Integration and Deployment

TaskHub uses a robust CI/CD pipeline with GitHub Actions that includes:

1. **Build Artifacts Storage**

   - Every build is archived in Azure Blob Storage with appropriate versioning
   - Production builds include semantic version numbers in filenames
   - GitHub Actions artifacts are also available for download
   - Latest builds for each environment are specially tagged

2. **Environment Deployments**

   - **Development**: Automatic deployment when code is merged to `develop`
   - **Preview**: Manual deployment for feature testing
   - **Production**: Automatic deployment with semantic versioning when code is merged to `main`

3. **Build Access**
   - Production builds: `https://<storage-account>.blob.core.windows.net/builds/production/taskhub-latest.zip`
   - Development builds: `https://<storage-account>.blob.core.windows.net/builds/dev/taskhub-latest.zip`
   - Preview builds: `https://<storage-account>.blob.core.windows.net/builds/<preview-env>/taskhub-latest.zip`
   - Historical builds with timestamps are also preserved

This approach simulates an enterprise-level artifact management system with proper versioning and easy access to all builds.

## Available Scripts

- `pnpm dev` - Start development server
- `pnpm build` - Build for production
- `pnpm lint` - Lint code
- `pnpm release` - Manually trigger semantic-release

## License

This project is licensed under the MIT License - see the [LICENSE](./LICENSE) file for details.
