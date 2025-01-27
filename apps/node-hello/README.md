# Node Hello

A simple Express.js application that serves a "Hello World" message with the current date and time.

## Features

- RESTful API endpoint at `/api/hello`
- Returns JSON response with a greeting message and current timestamp
- Built with TypeScript and Express.js
- Includes unit tests

## Getting Started

### Prerequisites

- Node.js
- npm or yarn

### Installation

```bash
npm install
```

### Development

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

## API Reference

### GET /api/hello

Returns a JSON object containing a hello message with the current date and time.

**Response Example:**

```json
{
  "message": "hello world: 2025-01-27T13:24:17+07:00"
}
```

## Tech Stack

- TypeScript
- Express.js
- Vitest (for testing)
