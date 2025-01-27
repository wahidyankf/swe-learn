# Node Hello Libs

A utility library providing date and time formatting functions, used by the node-hello application.

## Installation

```bash
npm install @swe-learn/node-hello-libs
```

## Usage

```typescript
import { getCurrentDateTime, formatDate } from '@swe-learn/node-hello-libs';

// Get current date and time in locale string format
const now = getCurrentDateTime();
console.log(now); // Example: "1/27/2025, 1:25:03 PM"

// Format a date to ISO string
const date = new Date();
const formattedDate = formatDate(date);
console.log(formattedDate); // Example: "2025-01-27T13:25:03.000Z"
```

## API Reference

### getCurrentDateTime(): string

Returns the current date and time as a locale-formatted string.

### formatDate(date: Date): string

Formats a given Date object to ISO string format.

**Parameters:**

- `date`: A JavaScript Date object

**Returns:**

- A string representing the date in ISO format

## Development

### Prerequisites

- Node.js
- npm or yarn

### Testing

Run the tests with:

```bash
npm test
```

## Tech Stack

- TypeScript
- Vitest (for testing)
