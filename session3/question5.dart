/*Create a class with a few properties and methods. Instantiate the class and use the dot operator to
access and print its properties and methods.*/

void main() {
  Animal cat = Animal();
  cat.name = 'lolo';
  cat.age = 2;
  cat.height = 46;
  cat.weight = 30;
  cat.color = 'white';
  print(
      'cat name: ${cat.name}\n age: ${cat.age}\n height: ${cat.height}\n weight: ${cat.weight}\n color: ${cat.color}');
}

class Animal {
  String? name;
  int? age;
  double? weight;
  double? height;
  String? gender;
  String? color;
}
