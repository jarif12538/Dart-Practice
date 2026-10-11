import 'dart:io';

class Employee {
  String name;
  int age;
  String city;

  Employee(this.name, this.age, this.city);

  void displayInfo() {
    print('Name: $name');
    print('Age: $age');
    print('City: $city');
  }
}

void main() {
  Map<String, Map<String, int>> employees = {
    'EMP001': {'Alice': 30, 'Bob': 25, 'Charlie': 28},
    'EMP002': {'David': 35, 'Eva': 32},
  };

  print('--- search results ---');
  String searchName = stdin.readLineSync() ?? '';
  int? searchAge = int.tryParse(stdin.readLineSync() ?? '');
  if (searchName.isEmpty || searchAge == null) {
    print('Invalid input.');
    return;
  }

  for (final entry in employees.entries) {
    final age = entry.value[searchName];
    if (age == searchAge) {
      print('--- Employee Information ---');
      print('Employee ID: ${entry.key}');
      print('Name: $searchName');
      print('Age: $age');
      return;
    }
  }

  print('No employee found.');
}