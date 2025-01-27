# Python Hello

A FastAPI application that serves a hello world endpoint.

## Setup

1. Make sure you have Poetry installed
2. Install dependencies:
   ```bash
   poetry install
   ```

## Development

Run the development server:

```bash
poetry run uvicorn src.main:app --reload --port 3000
```

## API Endpoints

- GET `/api/hello`: Returns a hello world message with current datetime
