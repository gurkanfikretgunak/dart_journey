## 🚀 README: dart\_jouner

This project is a collaborative effort by the students of **Kadiköy Mesleki ve Teknik Anadolu Lisesi** (Kadiköy Vocational and Technical Anatolian High School), developed during our internship at **Masterfabric Non-Profit**.

-----

## 🎯 Project Overview

**dart\_jouner** is designed as a learning project to introduce the fundamentals of the **Dart programming language** to our team. Dart is an object-oriented, class-based, garbage-collected language with C-style syntax. It is client-optimized for developing fast apps on any platform and is the foundation of the **Flutter framework**.

Our goal is to build a basic application that demonstrates core Dart concepts in a clear and organized way. The project is structured around an **example runner** that executes different code snippets grouped by category, making it easy to see various features in action.

The project covers:

  * **Variables and Data Types**
  * **Control Flow** (if/else, loops)
  * **Functions**
  * **Object-Oriented Programming (OOP)** (Classes, Objects, Inheritance)
  * **Asynchronous Programming** (Futures, async/await)
  * **And more advanced topics** like Mixins and Extension Methods.

-----

## 🧑‍💻 Getting Started with Dart

To contribute to or run this project, you need the **Dart SDK** installed.

### Prerequisites

  * **Git:** To clone the repository.
    ```bash
    git clone https://github.com/MasterfabricNonProfit/dart_jouner.git
    cd dart_jouner
    ```
  * **Dart SDK:** Follow the official installation guide for your operating system.

### Recommended Learning Resources

Since this is a learning project, we recommend familiarizing yourself with the following official resources:

1.  **DartPad:** The online editor for playing with Dart code instantly without installation. Great for quick testing!
2.  **Dart Language Tour:** The comprehensive guide to the language features. This is the main technical reference.
3.  **Dart Tutorials:** Step-by-step guides on building command-line apps, using packages, and more.
4.  **Flutter/Dart Learning Resources:** If you're interested in mobile/web development, Dart is the language for the Flutter framework.

-----

## 🛠️ Project Structure and Usage

This project uses a simple runner to execute all examples. Here’s how it’s structured:

*   `applications/main.dart`: The main entry point of the application. It starts the example runner.
*   `applications/example_runner.dart`: Contains the logic for how examples are formatted and executed.
*   `applications/example_definitions.dart`: A central list of all examples to be run. **This is where you add new examples.**
*   `applications/examples/`: A directory containing the actual code for each individual example.

### Running the Project

To execute the main application and see all the examples run:

```bash
dart run applications/main.dart
```

This will print the output of all defined examples to the console in a structured format.

### Running Tests

To run any included unit or integration tests:

```bash
dart test
```

-----

## ✨ Features

  * **Structured Example Runner:** An organized way to run and display code examples from different categories.
  * **Core Dart Syntax Practice:** Dozens of examples covering variables, control flow, functions, and more.
  * **OOP Implementation:** Clear examples of classes, inheritance, and other OOP principles.
  * **Asynchronous Programming:** Demonstrations of `Future`, `async`, and `await`.
  * **Advanced Concepts:** Includes examples of extension methods, mixins, and null safety.

-----

## 🤝 Contribution

We encourage all students from Kadiköy MTAL to contribute! This is how we learn and grow together.

**To add a new example:**

1.  Create a new `.dart` file in the `applications/examples/` directory with your code.
2.  Import your new file into `applications/example_definitions.dart`.
3.  Add your example to one of the lists (`basicHomeworkExamples`, `advancedHomeworkExamples`, etc.).
4.  Create a pull request with your changes!

-----

## 📄 License

This project is licensed under the **MIT License** - see the `LICENSE.md` file for details.

-----

This video provides an excellent initial overview of what Dart is and how to get started with it, which is perfect for students beginning the **dart\_jouner** project: [Dart Crash Course #1 - What is Dart?](https://www.youtube.com/watch?v=QGqMJzywasg).
