import 'dart:io';

String insertgrade(int score) {
  if (score >= 90) {
    return 'A+';
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

void main() {
  print('Enter your score:');
  String? score = stdin.readLineSync();
  String grade = insertgrade(int.parse(score!));
  String? name = stdin.readLineSync()!;
  print('Hello $name Your grade is: $grade');
}