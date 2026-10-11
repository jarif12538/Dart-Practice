import 'dart:io';
//A positional parameter is a parameter whose value is passed to a function based on its position (order).
void information(String name, int age, String city) {
  print('Name: $name');
  print('Age: $age');
  print('City: $city');
}
void main() {
  int? age;
  print('Enter your name:');
  String? name = stdin.readLineSync();
  print('Enter your age:');
  age = int.parse(stdin.readLineSync() ?? '0');
  print('Enter your city:');
  String? city = stdin.readLineSync();
  information(name!, age, city!);
}

//The order matters!
///introduce('Jarif', 24); this is the correct order of the parameters(name first, age second, city third)
///
///
///introduce(24, 'Jarif'); // Wrong order of the parameters