# OCaml Hello Web Server

A simple OCaml web server built with Dream framework that provides:

- `/api/hello` endpoint returning a greeting with current time
- JSON response format
- Integration with `ocaml-hello-libs` for core functionality

## Prerequisites

- OCaml 4.14.x
- OPAM package manager
- Dune build system

## Installation

```bash
# Install dependencies
opam install . --deps-only --with-test
opam install dune dream yojson re alcotest
```

## Usage

Start the server using Nx:

```bash
npx nx serve ocaml-hello
# or
npm run apps:ocaml-hello:dev
```

Or using Dune directly:

```bash
dune exec bin/main.exe
```

The server will start on http://localhost:8080

Test the endpoint:

```bash
curl http://localhost:8080/api/hello
```

Response:

```json
{
  "message": "Hello World: 2025-02-01T08:07:24Z"
}
```

## Development

Build the project:

```bash
# Using Nx
npx nx build ocaml-hello
# or
npm run apps:ocaml-hello:build

# Using Dune directly
dune build
```

Run tests:

```bash
# Using Nx
npx nx test ocaml-hello
# or
npm run apps:ocaml-hello:test

# Using Dune directly
dune test
```

Format code:

```bash
dune build @fmt --auto-promote
```

## Project Structure

- `bin/`: Contains the executable code
  - `main.ml`: Web server implementation
- `test/`: Contains test files
  - `test_main.ml`: Tests for the web server
- `dune`: Build configuration
- `dune-project`: Project metadata
