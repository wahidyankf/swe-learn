package com.wahidyankf.libs;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

public class GreeterTest {
  @Test
  void testSayHello() {
    Greeter greeter = new Greeter();
    assertEquals("Hello, World!", greeter.sayHello("World"));
  }
}
