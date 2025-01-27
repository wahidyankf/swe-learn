# Go Hello Libs

A Go library providing utility functions for the Go Hello application.

## Features

- Date and time formatting utilities
- Fully tested with Go's testing package
- Type-safe by Go's static type system

## Setup

1. Make sure you have Go 1.21+ installed
2. Install dependencies:

```bash
go mod download
```

## Development

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

## Usage

```go
package main

import (
    "fmt"
    "github.com/wahidyankf/swe-learn/libs/go-hello-libs/datetime"
)

func main() {
    // Get current date and time
    currentTime := datetime.GetCurrentDateTime() // Returns: "2025-01-27 14:23:14"
    fmt.Println(currentTime)
}
```
