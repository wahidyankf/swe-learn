# Java Hello

A Spring Boot application that serves a Hello World endpoint.

## Features

- Spring Boot-based REST API
- Type-safe with Java's static type system
- Fully tested with JUnit
- Automatic code formatting with google-java-format
- Maven-based build system

## Setup

1. Make sure you have JDK 21 and Maven installed
2. Install dependencies:
   ```bash
   mvn install
   ```

## Development

### Run Development Server

Start the development server:

```bash
mvn spring-boot:run
```

The server will start on `http://localhost:8080` by default.

### Testing

Run tests:

```bash
mvn test
```

### Code Formatting

Format code:

```bash
./../../scripts/format-java.sh
```

### Build

Build the project:

```bash
mvn clean package
```

The built JAR will be in the `target` directory.

## API Endpoints

### GET `/api/hello`

Returns a Hello World message with current datetime.

Example response:

```json
{
  "message": "Hello World: 2025-01-27 14:23:14"
}
```
