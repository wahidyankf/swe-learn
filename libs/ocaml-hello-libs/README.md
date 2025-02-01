# OCaml Hello Library

A simple OCaml library that provides core functionality for the OCaml Hello Web Server:

- Greeting functionality with customizable messages
- Current time formatting in ISO 8601 format
- Pure functions for easy testing and integration

## Prerequisites

- OCaml 4.14.x
- OPAM package manager
- Dune build system

## Installation

```bash
# Install dependencies
opam install . --deps-only --with-test
opam install dune alcotest
```

## Usage

In your OCaml code:

```ocaml
(* Get a greeting *)
let greeting = Lib.greet "World"  (* Returns "Hello World!" *)

(* Get current time *)
let time = Lib.get_current_time () (* Returns current time in ISO format *)
```

In your dune file:

```scheme
(library
 (name your_library)
 (public_name your_library)
 (libraries ocaml_hello_lib))
```

## Development

Build the library:

```bash
# Using Nx
npx nx build ocaml-hello-libs
# or
npm run libs:ocaml-hello-libs:build

# Using Dune directly
dune build
```

Run tests:

```bash
# Using Nx
npx nx test ocaml-hello-libs
# or
npm run libs:ocaml-hello-libs:test

# Using Dune directly
dune test
```

Format code:

```bash
dune build @fmt --auto-promote
```

## Project Structure

- `src/`: Contains the library source code
  - `lib.ml`: Core library implementation
- `test/`: Contains test files
  - `test_lib.ml`: Unit tests for the library
- `dune`: Build configuration
- `dune-project`: Project metadata

## API Reference

### `greet : string -> string`

Returns a greeting message for the given name.

```ocaml
let message = Lib.greet "World" (* Returns "Hello World!" *)
```

### `get_current_time : unit -> string`

Returns the current time in ISO 8601 format.

```ocaml
let time = Lib.get_current_time () (* Returns "2025-02-01T08:07:24Z" *)
```
