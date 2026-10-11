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
List<Employee> employee() {
  List<Employee> employees = [];

  for (int i = 0; i < 3; i++) {
    
    print('\n--- Employee ${i + 1} Information ---');
    print('Enter employee name:');
    String name = stdin.readLineSync() ?? '';
    print('Enter employee age:');
    int age = int.parse(stdin.readLineSync() ?? '0');
    print('Enter employee city:');
    String city = stdin.readLineSync() ?? '';

    employees.add(Employee(name, age, city));
  }

  return employees;
}

void main() {
  List<Employee> employees = employee();

  print('\n--- Employee Information ---');

  for (Employee emp in employees) {
    emp.displayInfo();
    print('');
  }
}
