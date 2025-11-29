
import 'dart:async';

// A class to represent a single runnable example.
class Example {
  final String title;
  final FutureOr<void> Function() function;

  Example(this.title, this.function);
}

// The runner that executes a list of examples.
Future<void> runExamples(String category, List<Example> examples) async {
  print('--- Running $category Examples ---');
  for (int i = 0; i < examples.length; i++) {
    final example = examples[i];
    print('\n[${i + 1}/${examples.length}] === ${example.title} ===');
    try {
      await example.function();
    } catch (e) {
      print('>>> ERROR running example "${example.title}": $e');
    }
  }
  print('\n--- Finished $category Examples ---\n');
}
