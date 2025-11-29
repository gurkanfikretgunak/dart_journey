
import 'example_runner.dart';

// Import all the example files
import 'examples/car_start_before_check_list.dart';
import 'examples/product_list_at_store.dart';
import 'examples/homework_basics_1.dart';
import 'examples/homework_basics_11.dart';
import 'examples/homework_basics_17.dart';
import 'examples/homework_advanced_2.dart';
import 'examples/homework_advanced_7.dart';
import 'examples/homework_advanced_17.dart';

// Define the lists of examples for each category.

final List<Example> originalClassExamples = [
  Example('Car Start Checklist', () {
    var carCheck = CarStartBeforeCheckList();
    carCheck.printCarInfo();
    print('Car checklist passed: ${carCheck.checkList()}');
  }),
  Example('Product List At Store', () {
    var store = ProductListAtStore();
    store.printProductList();
    store.addProduct('Grape');
    print('Added Grape:');
    store.printProductList();
    store.removeProduct('Banana');
    print('Removed Banana:');
    store.printProductList();
  }),
];

final List<Example> basicHomeworkExamples = [
  Example('Basic Homework 1: Introduce Person', () {
    introducePerson('Alice', 25, 'Blue');
  }),
  Example('Basic Homework 11: Grade Calculator', runGradeExample),
  Example('Basic Homework 17: Circle Area', runCircleAreaExample),
];

final List<Example> advancedHomeworkExamples = [
  Example('Advanced Homework 2: Bank Account', runBankAccountExample),
  Example('Advanced Homework 7: Async Weather', runWeatherExample),
  Example('Advanced Homework 17: String Capitalization', runStringExtensionExample),
];
