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

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
