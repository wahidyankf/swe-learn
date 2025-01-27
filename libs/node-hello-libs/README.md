# Node Hello Libs

A utility library providing date and time formatting functions, used by the node-hello application.

## Features

- Date and time formatting utilities
- Type-safe with TypeScript
- Fully tested with Vitest
- Automatic code formatting with Prettier

## Setup

1. Make sure you have Node.js 20+ installed
2. Install dependencies:
   ```bash
   npm install
   ```

## Development

### Testing

Run tests:

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

## Usage

```typescript
import { getCurrentDateTime, formatDate } from '@swe-learn/node-hello-libs';

// Get current date and time
const now = getCurrentDateTime();
console.log(now); // Example: "2025-01-27 14:19:45"

// Format a date to ISO string
const date = new Date();
const formattedDate = formatDate(date);
console.log(formattedDate); // Example: "2025-01-27T14:19:45.000Z"
```

## API Reference

### Functions

#### `getCurrentDateTime(): string`

Returns the current date and time formatted as "YYYY-MM-DD HH:mm:ss".

#### `formatDate(date: Date): string`

Formats a given Date object to ISO string format.

**Parameters:**

- `date`: A JavaScript Date object

**Returns:**

- A string representing the date in ISO format
