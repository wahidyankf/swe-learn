# Python Hello Libs

A Python library providing utility functions for the Python Hello application.

## Features

- Date and time formatting utilities
- Type-safe with strict type checking enabled
- Fully tested with pytest

## Installation

1. Make sure you have Poetry installed
2. Install dependencies:
   ```bash
   poetry install
   ```

## Development

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

## Usage

```python
from python_hello_libs import get_current_date_time, format_date
from datetime import datetime

# Get current date and time
current_time = get_current_date_time()  # Returns: "2025-01-27 14:19:45"

# Format a datetime object
date = datetime.now()
formatted_date = format_date(date)  # Returns ISO format string
```
