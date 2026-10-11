import 'dart:io';

void caseExample(int number) {
  switch (number) {
    case 1:
      print('One');
      break;
    case 2:
      print('Two');
      break;
    case 3:
      print('Three');
      break;
    default:
      print('Other number');
  }
}

void main() {
  print('Enter a number:');
  int? number = int.parse(stdin.readLineSync() ?? '0');
  caseExample(number);
}