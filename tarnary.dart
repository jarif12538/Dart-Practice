import 'dart:io';

void main (){
  print('Enter your age:');
  int? age = int.parse(stdin.readLineSync() ?? '0');
  String result = (age >= 18) ? 'You are an adult.' : 'You are a minor.';
  print(result);
}