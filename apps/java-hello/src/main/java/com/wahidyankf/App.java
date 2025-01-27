package com.wahidyankf;

import com.wahidyankf.libs.Greeter;

public class App {
  public static void main(String[] args) {
    // Create an instance of Greeter
    Greeter greeter = new Greeter();

    // Basic usage
    System.out.println(greeter.sayHello("World"));

    // Use with different names
    String[] names = {"Alice", "Bob", "Charlie"};
    for (String name : names) {
      System.out.println(greeter.sayHello(name));
    }

    // Use with command line arguments if provided
    if (args.length > 0) {
      System.out.println(greeter.sayHello(args[0]));
    }
  }
}
