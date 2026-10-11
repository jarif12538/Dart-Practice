class Person {
  final String name;
  final int age;

  Person({required this.name, required this.age});

  void displayInfo() {
    print('Name: $name, Age: $age');
  }
}

void main() {
  final person = Person(name: 'John Doe', age: 25);
  person.displayInfo();
}

class Student extends Person {
  final String school;

  Student({required super.name, required super.age, required this.school});

  @override
  void displayInfo() {
    super.displayInfo();
    print('i read in : $school');
  }
}
