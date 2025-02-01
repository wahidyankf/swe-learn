# OCaml Hello Web Server

A simple web server that provides:

- `/api/hello` endpoint returning a greeting with current time

## Usage

Start the server:

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
{ "message": "Hello World: 2025-02-01T07:56:06Z" }
```

## Development

Build the application:

```bash
dune build
```

Run tests:

```bash
dune test
```
