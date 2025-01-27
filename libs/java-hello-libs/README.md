# Java Hello Libs

A Java library providing utility functions for the Java Hello application.

## Features

- Date and time formatting utilities
- Type-safe with Java's static type system
- Fully tested with JUnit
- Maven-based build system

## Setup

1. Make sure you have JDK 21 and Maven installed
2. Install dependencies:
   ```bash
   mvn install
   ```

## Development

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

## Usage

```java
import com.wahidyankf.libs.Greeter;
import java.time.LocalDateTime;

public class Example {
    public static void main(String[] args) {
        // Get current date and time formatted message
        Greeter greeter = new Greeter();
        String message = greeter.getGreeting();  // Returns: "Hello World: 2025-01-27 14:23:14"
        System.out.println(message);
    }
}
```
