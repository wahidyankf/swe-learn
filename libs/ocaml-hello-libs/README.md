# OCaml Hello Library

A simple OCaml library that provides:

- Greeting functionality
- Current time in ISO format

## Usage

```ocaml
(* Get a greeting *)
let greeting = Lib.greet "World"  (* Returns "Hello World!" *)

(* Get current time *)
let time = Lib.get_current_time () (* Returns current time in ISO format *)
```

## Development

Build the library:

```bash
dune build
```

Run tests:

```bash
dune test
```
