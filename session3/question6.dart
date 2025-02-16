/* Create a map representing a student with keys for name, age, and grade. Add, update,
and remove entries from the map, printing the map after each operation.
- Task 2: Iterate over the map and print each key-value pair.*/

void main() {
  Map<String, dynamic> student = {'name': 'sara', 'age': 25, 'grade': 'A'};
  print("Initial Student Map: $student");

  student['university'] = 'SVU';
  print("After Adding School: $student");

  student['grade'] = 'A+';
  print("After Updating Grade: $student");

  student.remove('age');
  print("After Removing Age: $student");

  student.forEach((key, value) {
    print("$key: $value");
  });
}
