
// Homework: Dart Basics - 11
// State: A student's score.
// Event: Determine the student's grade (A, B, C, D, F).
// Execution: Print the student's grade.

String getGrade(int score) {
  if (score >= 90) {
    return 'A';
  } else if (score >= 80) {
    return 'B';
  } else if (score >= 70) {
    return 'C';
  } else if (score >= 60) {
    return 'D';
  } else {
    return 'F';
  }
}

void runGradeExample() {
  int score1 = 95;
  int score2 = 82;
  int score3 = 55;
  print('A score of $score1 gets a grade of: ${getGrade(score1)}');
  print('A score of $score2 gets a grade of: ${getGrade(score2)}');
  print('A score of $score3 gets a grade of: ${getGrade(score3)}');
}
