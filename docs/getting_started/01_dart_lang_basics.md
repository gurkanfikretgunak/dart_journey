
# Dart Lang Basics

Welcome to the world of Dart! Dart is a programming language developed by Google. It's used to build mobile, desktop, server, and web applications. If you're new to programming, Dart is a great language to start with because it's easy to learn and has a very supportive community.

## 1. Variables and Data Types

In programming, we use variables to store information. Think of them like labeled jars where you can keep different things.

### Declaring Variables

You can declare a variable using the `var` keyword.

**Example 1: A simple variable**
```dart
var name = 'John Doe'; // Storing a name
print(name);
```

### Basic Data Types

Dart has several basic data types:

*   **String:** For text.
*   **int:** For whole numbers.
*   **double:** For numbers with a decimal point.
*   **bool:** For true/false values.
*   **List:** A collection of items.
*   **Map:** A collection of key-value pairs.

**Example 2: String**
```dart
String greeting = 'Hello, Dart!';
print(greeting);
```

**Example 3: int**
```dart
int age = 17;
print('Age: $age');
```

**Example 4: double**
```dart
double temperature = 98.6;
print('Temperature: $temperature');
```

**Example 5: bool**
```dart
bool isStudent = true;
print('Is a student? $isStudent');
```

**Example 6: List**
```dart
List<String> subjects = ['Math', 'Science', 'History'];
print('Subjects: $subjects');
```

**Example 7: Map**
```dart
Map<String, String> capitals = {
  'USA': 'Washington D.C.',
  'Japan': 'Tokyo'
};
print('Capital of Japan: ${capitals['Japan']}');
```

## 2. Operators

Operators are special symbols that perform operations on variables and values.

### Arithmetic Operators

**Example 8: Addition**
```dart
int a = 10;
int b = 5;
print('a + b = ${a + b}'); // Output: 15
```

**Example 9: Subtraction**
```dart
int a = 10;
int b = 5;
print('a - b = ${a - b}'); // Output: 5
```

**Example 10: Multiplication**
```dart
int a = 10;
int b = 5;
print('a * b = ${a * b}'); // Output: 50
```

**Example 11: Division**
```dart
int a = 10;
int b = 5;
print('a / b = ${a / b}'); // Output: 2.0
```

### Comparison Operators

**Example 12: Equal to**
```dart
int a = 10;
int b = 10;
print('a == b is ${a == b}'); // Output: true
```

**Example 13: Not equal to**
```dart
int a = 10;
int b = 5;
print('a != b is ${a != b}'); // Output: true
```

**Example 14: Greater than**
```dart
int a = 10;
int b = 5;
print('a > b is ${a > b}'); // Output: true
```

## 3. Control Flow

Control flow statements allow you to control the flow of your program's execution.

### `if-else` statements

**Example 15: Simple `if`**
```dart
int age = 18;
if (age >= 18) {
  print('You are an adult.');
}
```

**Example 16: `if-else`**
```dart
int age = 16;
if (age >= 18) {
  print('You are an adult.');
} else {
  print('You are a minor.');
}
```

**Example 17: `if-else if-else`**
```dart
int score = 85;
if (score >= 90) {
  print('Grade: A');
} else if (score >= 80) {
  print('Grade: B');
} else {
  print('Grade: C');
}
```

### `for` loop

**Example 18: Simple `for` loop**
```dart
for (int i = 1; i <= 5; i++) {
  print('Number: $i');
}
```

**Example 19: `for-in` loop with a List**
```dart
List<String> fruits = ['Apple', 'Banana', 'Cherry'];
for (String fruit in fruits) {
  print('I like $fruit');
}
```

### `while` loop

**Example 20: Simple `while` loop**
```dart
int count = 1;
while (count <= 3) {
  print('Count is $count');
  count++;
}
```

## 4. Functions

Functions are blocks of code that perform a specific task. They help in organizing code and making it reusable.

### Defining a Function

**Example 21: A simple function**
```dart
void sayHello() {
  print('Hello!');
}

sayHello(); // Calling the function
```

### Functions with Parameters

**Example 22: Function with one parameter**
```dart
void greet(String name) {
  print('Hello, $name!');
}

greet('Alice');
```

**Example 23: Function with multiple parameters**
```dart
void add(int a, int b) {
  print('Sum: ${a + b}');
}

add(5, 3);
```

### Functions that Return a Value

**Example 24: Function returning an `int`**
```dart
int multiply(int a, int b) {
  return a * b;
}

int result = multiply(4, 5);
print('Result: $result');
```

**Example 25: Function returning a `String`**
```dart
String getGreeting(String name) {
  return 'Welcome, $name!';
}

String message = getGreeting('Bob');
print(message);
```

This is just the beginning of your journey with Dart. Keep practicing, and you'll become a proficient Dart developer in no time!
