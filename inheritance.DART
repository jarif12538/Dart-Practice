import 'dart:io';

class person {
  void information(String name, int age, String city) {
    print('Name: $name');
    print('Age: $age');
    print('City: $city');

  }
}

class Animal extends person {
  void makeSound(String breed, String color,String weight) {
    print('Breed: $breed, Color: $color, Weight: $weight');
  }
}

class OwnerDogData {
  final String name;
  final int age;
  final String city;
  final String breed;
  final String color;
  final String weight;

  OwnerDogData(
    this.name,
    this.age,
    this.city,
    this.breed,
    this.color,
    this.weight,
  );
}

void main() {
  Animal animal = Animal();
  final List<OwnerDogData> records = [];

  for (int i = 0; i < 3; i++) {
    print('\nEnter data for owner ${i + 1}:');
    print('Enter your name:');
    String name = stdin.readLineSync() ?? '';
    print('Enter your age:');
    int age = int.parse(stdin.readLineSync() ?? '0');
    print('Enter your city:');
    String city = stdin.readLineSync() ?? '';

    print('Enter your dog breed:');
    String breed = stdin.readLineSync() ?? '';
    print('Enter your dog color:');
    String color = stdin.readLineSync() ?? '';
    print('Enter your dog weight:');
    String weight = stdin.readLineSync() ?? '';

    records.add(OwnerDogData(name, age, city, breed, color, weight));
  }

  print('\n--- Owner and Dog Information ---');
  for (final record in records) {
    animal.information(record.name, record.age, record.city);
    animal.makeSound(record.breed, record.color, record.weight);
    print('');
  }
}

///Inheritance: parent-এর functionality child-এ পাওয়া।
//Overriding: child-এ inherited method-এর implementation বদলানো।
/*
class User {
  String username;

  User(this.username);

  void login() {
    print('$username logged in');
  }
}

class Admin extends User {
  Admin(String username) : super(username);

  void manageUsers() {
    print('$username is managing users');
  }
}

class Member extends User {
  Member(String username) : super(username);

  void viewDashboard() {
    print('$username is viewing dashboard');
  }
}

void main() {
  Admin admin = Admin('jarif_admin');
  Member member = Member('alex');

  admin.login();
  admin.manageUsers();

  member.login();
  member.viewDashboard();
}
*/