# SweLearn

[![CI](https://github.com/wahidyankf/swe-learn/actions/workflows/ci.yml/badge.svg)](https://github.com/wahidyankf/swe-learn/actions/workflows/ci.yml)

This repository is used to learn software engineering concepts and create proof of concepts (POC) using multiple programming languages. It uses [NX](https://nx.dev) as the monorepo management tool.

## Repository Structure

This repository follows the conventional NX monorepo structure:

- `apps/`: Contains all applications
- `libs/`: Contains shared libraries, components, and utilities

## Prerequisites

- Node.js (Latest LTS version recommended)
- npm or yarn

## How to Run

1. Install dependencies:

```sh
npm install
```

2. Run a specific project:

```sh
npx nx serve <project-name>
```

3. Build a specific project:

```sh
npx nx build <project-name>
```

4. Run tests:

```sh
npx nx test <project-name>
```

5. View the project graph:

```sh
npx nx graph
```

## Development

### Available Scripts

```sh
# Install dependencies
npm install

# Test affected projects
npm run test:affected         # Run tests for affected projects
npm run test:affected:parallel # Run tests in parallel (faster)

# Build affected projects
npm run build:affected

# Lint and type check
npm run lint:affected        # Lint affected projects
npm run typecheck:affected   # Type check affected projects

# Visualize affected projects
npm run affected:graph       # Show dependency graph of affected projects
```

### Development Workflow

1. Install dependencies: `npm install`
2. Make your changes
3. Before committing:
   - Run `npm run affected:graph` to see which projects are affected
   - Run `npm run test:affected:parallel` to test affected projects
   - Run `npm run typecheck:affected` to check types
   - Git hooks will automatically:
     - Format your code using Prettier
     - Validate your commit message (see Commit Convention below)

### Commit Convention

This repository follows the [Conventional Commits](https://www.conventionalcommits.org/) specification. Commit messages must follow this pattern:

```
type(scope): subject

body
```

Types:

- `feat`: A new feature
- `fix`: A bug fix
- `docs`: Documentation changes
- `style`: Code style changes (formatting, etc.)
- `refactor`: Code changes that neither fix a bug nor add a feature
- `perf`: Performance improvements
- `test`: Adding or updating tests
- `chore`: Changes to build process or auxiliary tools
- `ci`: Changes to CI configuration files and scripts

Examples:

```
feat(auth): add login functionality
fix(api): handle null response from server
docs(readme): update installation instructions
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
