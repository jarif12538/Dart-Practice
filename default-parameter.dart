import 'dart:io';
String insertGrade({
  required String name,
  required int age,
  String city = 'Unknown'
}) {
  return 'Hello $name, your age is $age and you live in $city.';
}

void main() {
  print('Enter your name:');
  String? name = stdin.readLineSync();
  print('Enter your age:');
  int? age = int.parse(stdin.readLineSync() ?? '0');
  print('Enter your city (optional):');
  String? city = stdin.readLineSync();

  String result = insertGrade(
    name: name!,
    age: age,
    city: city ?? 'Unknown',
  );

  print(result);
}

//In Dart, default parameters let you give a parameter a predefined value. If the caller doesn't provide a value, Dart uses that default value automatically.