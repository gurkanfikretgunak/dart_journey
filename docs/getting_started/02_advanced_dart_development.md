
# Advanced Dart Development

Once you have a good grasp of the basics, you can move on to more advanced topics in Dart. These concepts will help you write more efficient, scalable, and robust applications.

## 1. Classes and Objects

Dart is an object-oriented programming (OOP) language. OOP is a way of modeling real-world entities as software objects.

### Defining a Class

A class is a blueprint for creating objects.

**Example 1: A simple `Person` class**
```dart
class Person {
  String name;
  int age;

  Person(this.name, this.age); // Constructor

  void introduce() {
    print('Hi, my name is $name and I am $age years old.');
  }
}

void main() {
  var person1 = Person('Alice', 30);
  person1.introduce();
}
```

### Inheritance

Inheritance allows a class to inherit properties and methods from another class.

**Example 2: `Student` class inheriting from `Person`**
```dart
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void introduce() {
    print('Hi, my name is $name and I am $age years old.');
  }
}

class Student extends Person {
  String major;

  Student(String name, int age, this.major) : super(name, age);

  @override
  void introduce() {
    super.introduce();
    print('I am majoring in $major.');
  }
}

void main() {
  var student1 = Student('Bob', 20, 'Computer Science');
  student1.introduce();
}
```

## 2. Asynchronous Programming

Asynchronous operations let your program complete work while waiting for another operation to finish.

### `Future`

A `Future` represents a potential value, or error, that will be available at some time in the future.

**Example 3: A simple `Future`**
```dart
Future<String> fetchUserData() {
  return Future.delayed(Duration(seconds: 2), () => 'John Doe');
}

void main() {
  print('Fetching user data...');
  fetchUserData().then((name) {
    print('User: $name');
  });
}
```

### `async` and `await`

The `async` and `await` keywords provide a declarative way to define asynchronous functions and use their results.

**Example 4: Using `async` and `await`**
```dart
Future<String> fetchUserData() {
  return Future.delayed(Duration(seconds: 2), () => 'John Doe');
}

Future<void> main() async {
  print('Fetching user data...');
  String name = await fetchUserData();
  print('User: $name');
}
```

**Example 5: Handling errors with `try-catch`**
```dart
Future<String> fetchUserData() {
  return Future.delayed(Duration(seconds: 2), () => throw Exception('Failed to fetch data'));
}

Future<void> main() async {
  print('Fetching user data...');
  try {
    String name = await fetchUserData();
    print('User: $name');
  } catch (e) {
    print('Error: $e');
  }
}
```

## 3. Null Safety

Null safety is a feature that helps you avoid null reference exceptions, a common source of bugs.

**Example 6: Non-nullable variables**
```dart
// String name; // This will cause an error because it's not initialized.
String name = 'Dart'; // Must be initialized.
```

**Example 7: Nullable variables**
```dart
String? address; // Can be null.
print(address); // Output: null
```

**Example 8: Null-aware operators**
```dart
String? mightBeNull;
// Use ?? to provide a default value if null
String value = mightBeNull ?? 'default value';
print(value);

// Use ?. to access a property if not null
int? length = mightBeNull?.length;
print(length);
```

## 4. Mixins

Mixins are a way of reusing a class's code in multiple class hierarchies.

**Example 9: A simple mixin**
```dart
mixin Swimmer {
  void swim() {
    print('Swimming');
  }
}

class Fish with Swimmer {}
class Human with Swimmer {}

void main() {
  var fish = Fish();
  fish.swim();
  var human = Human();
  human.swim();
}
```

## 5. Higher-Order Functions

A higher-order function is a function that takes a function as an argument, or returns a function.

**Example 10: Taking a function as an argument**
```dart
void myHigherOrderFunction(String message, Function myFunction) {
  print(message);
  myFunction();
}

void main() {
  myHigherOrderFunction('Hello', () => print('World'));
}
```

**Example 11: `map` function on a List**
```dart
var numbers = [1, 2, 3];
var squared = numbers.map((n) => n * n);
print(squared); // Output: (1, 4, 9)
```

**Example 12: `where` function on a List**
```dart
var numbers = [1, 2, 3, 4, 5];
var even = numbers.where((n) => n.isEven);
print(even); // Output: (2, 4)
```

## 6. Error Handling

Proper error handling is crucial for building robust applications.

**Example 13: `try-catch` block**
```dart
try {
  var result = 100 ~/ 0; // Integer division by zero
  print(result);
} catch (e) {
  print('An error occurred: $e');
}
```

**Example 14: `try-on-catch` block**
```dart
try {
  var result = 100 ~/ 0;
  print(result);
} on IntegerDivisionByZeroException {
  print('Cannot divide by zero.');
} catch (e) {
  print('An unknown error occurred: $e');
}
```

**Example 15: `finally` block**
```dart
try {
  var result = 100 ~/ 2;
  print(result);
} catch (e) {
  print('An error occurred: $e');
} finally {
  print('This is always executed.');
}
```

## 7. Generics

Generics allow you to define classes, methods, and functions that can work with any data type.

**Example 16: A generic class**
```dart
class Cache<T> {
  T value;
  Cache(this.value);
}

void main() {
  var stringCache = Cache<String>('A string');
  print(stringCache.value);

  var intCache = Cache<int>(123);
  print(intCache.value);
}
```

**Example 17: A generic method**
```dart
T first<T>(List<T> ts) {
  return ts[0];
}

void main() {
  print(first<String>(['a', 'b', 'c']));
  print(first<int>([1, 2, 3]));
}
```

## 8. Callable Classes

You can make a Dart class callable like a function by implementing the `call()` method.

**Example 18: A callable class**
```dart
class WannabeFunction {
  String call(String a, String b, String c) => '$a $b $c!';
}

void main() {
  var wf = WannabeFunction();
  var out = wf('Hi', 'there,', 'gang');
  print(out);
}
```

## 9. Isolates

Isolates are Dart's model for concurrent programming. They are independent workers that do not share memory but instead communicate by passing messages.

**Example 19: A simple Isolate (conceptual)**
```dart
import 'dart:isolate';

void myIsolate(var message) {
  print('Isolate received: $message');
}

void main() async {
  // This is a simplified example. Real-world usage is more complex.
  Isolate.spawn(myIsolate, 'Hello!');
  print('Main isolate continues...');
}
```

## 10. Extension Methods

Extension methods allow you to add new functionality to existing libraries.

**Example 20: Extending the `String` class**
```dart
extension NumberParsing on String {
  int parseInt() {
    return int.parse(this);
  }
}

void main() {
  var number = '42'.parseInt();
  print(number);
}
```

**Example 21: Extending the `List` class**
```dart
extension ListUtils<T> on List<T> {
  T? get firstOrNull => isEmpty ? null : first;
}

void main() {
  var list1 = [1, 2, 3];
  print(list1.firstOrNull);

  var list2 = <int>[];
  print(list2.firstOrNull);
}
```

These advanced topics will give you the tools to build powerful and sophisticated applications with Dart. Happy coding!
