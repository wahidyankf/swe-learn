# Node Hello

A simple Express.js application that serves a "Hello World" message with the current date and time.

## Features

- Express.js-based REST API
- Type-safe with TypeScript
- Fully tested with Vitest
- Automatic code formatting with Prettier
- Hot reload development server

## Setup

1. Make sure you have Node.js 20+ installed
2. Install dependencies:
   ```bash
   npm install
   ```

## Development

### Run Development Server

To start the development server:

```bash
npm run dev
```

The server will start on `http://localhost:3000` by default. You can change the port by setting the `PORT` environment variable.

### Testing

Run the tests with:

```bash
npm test
```

### Code Formatting

Format code:

```bash
npm run format
```

### Type Checking

Run type checking:

```bash
npm run typecheck
```

## API Endpoints

### GET `/api/hello`

Returns a JSON object containing a hello message with the current date and time.

**Response Example:**

```json
{
  "message": "Hello World: 2025-01-27 14:19:45"
}
```

## Tech Stack

- TypeScript
- Express.js
- Vitest (for testing)
