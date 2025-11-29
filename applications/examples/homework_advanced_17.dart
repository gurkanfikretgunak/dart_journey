
// Homework: Advanced Dart - 17
// State: A String.
// Event: Create an extension method on `String` called `capitalize()` that returns the string with the first letter capitalized.
// Execution: Use the new method on a string and print the result.

extension StringCapitalization on String {
  String capitalize() {
    if (this.isEmpty) {
      return this;
    }
    return this[0].toUpperCase() + this.substring(1);
  }
}

void runStringExtensionExample() {
  String greeting = 'hello world';
  print('Original: "$greeting"');
  print('Capitalized: "${greeting.capitalize()}"');
}
