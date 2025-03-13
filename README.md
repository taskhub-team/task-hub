# TaskHub

TaskHub is a minimalist task management application built with modern web technologies. It serves as a showcase of frontend architecture skills, deployment strategies, and best practices in React development.

## Features

- User authentication (login/signup)
- Task management with CRUD operations
- Task filtering (all, active, completed)
- User profile settings
- List virtualization for performance
- Responsive design for all devices

## Tech Stack

- **Frontend**: React 19, TypeScript, Vite
- **UI**: Tailwind CSS, shadcn/ui
- **State Management**: Redux Toolkit
- **Routing**: React Router
- **Form Validation**: Zod
- **Testing**: Vitest, MSW
- **Backend**: Firebase (Authentication, Firestore)
- **CI/CD**: GitHub Actions
- **Versioning**: semantic-release with Conventional Commits
- **Deployment**: Azure Static Web Apps

## Project Structure

```
src/
├── components/       # UI components
├── features/         # Feature-based modules
│   ├── auth/         # Authentication
│   ├── tasks/        # Task management
│   └── profile/      # User profile
├── api/              # API client
├── hooks/            # Custom hooks
├── store/            # Redux store
├── types/            # TypeScript types
└── utils/            # Helper functions
```

## Getting Started

### Prerequisites

- Node.js 18 or higher
- npm 9 or higher

### Installation

1. Clone the repository

   ```bash
   git clone https://github.com/yourusername/taskhub.git
   cd taskhub
   ```

2. Install dependencies

   ```bash
   pnpm install
   ```

3. Start the development server

   ```bash
   pnpm dev
   ```

4. Open http://localhost:5173 to view it in the browser

## Available Scripts

- `pnpm dev` - Start development server
- `pnpm build` - Build for production
- `pnpm test` - Run tests
- `pnpm lint` - Lint code
- `pnpm preview` - Preview production build locally
- `pnpm release` - Trigger the release process manually

## Development Workflow

1. Create a feature branch from `develop` branch

   ```bash
   git checkout -b feature/feature-name
   ```

2. Make changes and commit using Conventional Commits format

   ```bash
   git commit -m "feat: add task filtering component"
   ```

3. Push branch and create a Pull Request to `develop`

   ```bash
   git push -u origin feature/feature-name
   ```

4. After review and tests pass, merge to `develop`

5. Release to production is handled automatically via semantic-release when `develop` is merged to `main`

## License

This project is licensed under the MIT License - see the [LICENSE file](./LICENSE) for details.
