# Go Hello

A Gin-based Go application that serves a Hello World endpoint.

## Features

- Gin-based REST API
- Type-safe by Go's static type system
- Fully tested with Go's testing package
- Automatic code formatting with `go fmt`

## Setup

1. Make sure you have Go 1.21+ installed
2. Install dependencies:

```bash
go mod download
```

## Development

### Run Development Server

Start the development server:

```bash
go run main.go
```

### Testing

Run tests:

```bash
go test ./...
```

### Code Formatting

Format code:

```bash
go fmt ./...
```

### Static Analysis

Run static analysis:

```bash
go vet ./...
```

## API Endpoints

### GET `/api/hello`

Returns a Hello World message with current datetime.

Example response:

```json
{
  "message": "Hello World: 2025-01-27 14:23:14"
}
```
