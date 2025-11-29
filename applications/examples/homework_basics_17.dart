
// Homework: Dart Basics - 17
// State: The radius of a circle.
// Event: Create a function to calculate the area of the circle.
// Execution: Print the area of the circle.

import 'dart:math';

double calculateCircleArea(double radius) {
  return pi * radius * radius;
}

void runCircleAreaExample() {
  double radius = 5.0;
  double area = calculateCircleArea(radius);
  print('The area of a circle with radius $radius is $area.');
}
