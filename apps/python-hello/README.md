# Python Hello

A FastAPI application that serves a Hello World endpoint.

## Features

- FastAPI-based REST API
- Type-safe with strict type checking enabled
- Fully tested with pytest
- Automatic code formatting with Black

## Setup

1. Make sure you have Poetry installed
2. Install dependencies:
   ```bash
   poetry install
   ```

## Development

### Run Development Server

Start the development server with hot reload:

```bash
poetry run uvicorn src.main:app --reload --port 3000
```

### Type Checking

Run type checking with Pyright:

```bash
poetry run pyright
```

### Testing

Run tests with pytest:

```bash
poetry run pytest
```

### Code Formatting

Format code with Black:

```bash
poetry run black .
```

## API Endpoints

### GET `/api/hello`

Returns a Hello World message with current datetime.

Example response:

```json
{
  "message": "Hello World: 2025-01-27 14:19:45"
}
```
