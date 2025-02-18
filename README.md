# SweLearn

[![CI](https://github.com/wahidyankf/swe-learn/actions/workflows/ci.yml/badge.svg)](https://github.com/wahidyankf/swe-learn/actions/workflows/ci.yml)

This repository is used to learn software engineering concepts and create proof of concepts (POC) using multiple programming languages. It uses [NX](https://nx.dev) as the monorepo management tool.

## Repository Structure

This repository follows the conventional NX monorepo structure:

### Apps

- `apps/go-hello/`: Go application example
- `apps/java-hello/`: Java application example
- `apps/node-hello/`: Node.js application example
- `apps/ocaml-hello/`: OCaml application example
- `apps/python-hello/`: Python application example

### Libraries

- `libs/go-hello-libs/`: Go library example
- `libs/java-hello-libs/`: Java library example
- `libs/node-hello-libs/`: Node.js library example
- `libs/ocaml-hello-libs/`: OCaml library example
- `libs/python-hello-libs/`: Python library example

## Prerequisites

- Node.js (Latest LTS version recommended)
  - It is recommended to use [Volta](https://volta.sh) for Node.js version management
- npm or yarn
- Go (1.21 or later)
- Java (JDK 21)
- OCaml (4.14.x)
- Python (3.12 or later)
- Poetry (for Python package management)
- Maven (for Java builds)
- OPAM (for OCaml package management)

## Getting Started

1. Clone the repository:

```sh
git clone https://github.com/wahidyankf/swe-learn.git
cd swe-learn
```

2. Install dependencies:

```sh
# Install Node.js dependencies
npm install

# Install Python dependencies
cd apps/python-hello && poetry install && cd ../..
cd libs/python-hello-libs && poetry install && cd ../..

# Install OCaml dependencies
opam install . --deps-only --with-test
opam install dune dream yojson re alcotest

# Install Java dependencies (Maven will handle this automatically during build)
```

3. Run a specific project:

```sh
# Node.js
npx nx serve node-hello

# Python
npx nx serve python-hello

# Java
npx nx serve java-hello

# Go
npx nx serve go-hello

# OCaml
npx nx serve ocaml-hello
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

# OCaml specific commands
npm run apps:ocaml-hello:build    # Build OCaml application
npm run apps:ocaml-hello:test     # Test OCaml application
npm run apps:ocaml-hello:dev      # Run OCaml application in development mode
npm run libs:ocaml-hello-libs:build # Build OCaml library
npm run libs:ocaml-hello-libs:test  # Test OCaml library
```

### Development Workflow

1. Install dependencies: `npm install`
2. Make your changes
3. Before committing:
   - Run `npm run affected:graph` to see which projects are affected
   - Run `npm run test:affected:parallel` to test affected projects
   - Run `npm run typecheck:affected` to check types
   - Git hooks will automatically:
     - Format your code using Prettier (JavaScript/TypeScript)
     - Format Python code (when Python files are staged)
     - Format Go code
     - Format Java code
     - Format OCaml code
     - Validate your commit message (see Commit Convention below)

### Code Formatting

The project uses various formatters for different languages:

- JavaScript/TypeScript: Prettier
- Python: Black
- Go: `go fmt`
- Java: `google-java-format`
- OCaml: `ocamlformat`

These are automatically run via pre-commit hooks when you stage files.

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

## CI/CD

The project uses GitHub Actions for continuous integration. The CI pipeline:

1. Runs on every push and pull request
2. Tests all affected projects
3. Builds all affected projects
4. Runs linting and type checking
5. Ensures code formatting is consistent

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
