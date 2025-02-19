/*. Null Safety, Encapsulation & Classes
Create a class `Person` with the following attributes:
- `String name`
- `int? age` (nullable)
- `bool isStudent` (default is false)
Implement:
- A constructor that initializes `name` and `age`.
- A method `displayInfo()` that prints the person's details.
In `main()`, create an instance of `Person` and call `displayInfo()`.*/

void main() {
  Person person = Person(name: 'sara');
  person.displayInfo();
}

class Person {
  final String name;
  int? age;
  bool isStudent = false;

  Person({required this.name, this.age});

  void displayInfo() {
    print('name: $name');
    if (age != null) {
      print('age: $age');
    }
    print('is student: $isStudent');
  }
}
