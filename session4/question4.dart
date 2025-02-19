/* Maps, Functions & User Input
Create a Dart program that:
- Declares a `Map<String, int>` where keys are fruit names and values are their
prices.
- Implements a function `getPrice(String fruitName)` that returns the price of a
given fruit.
- If the fruit is not found, return -1.
Call the function inside `main()` and print the resul*/

import 'dart:io';

void main() {
  Map<String, int> fruits = {
    'Apple': 15,
    'banana': 17,
    'orange': 18,
    'lemon': 11,
    'grapes': 19,
    'Strawberry': 13,
    'Berries': 20,
  };

  print('Enter a fruit name:');
  String? fruitName = stdin.readLineSync();

  int price = getPrice(fruitName, fruits);
  print('Price of $fruitName: $price');
}

// وظيفة getPrice
int getPrice(String? fruitName, Map<String, int> fruits) {
  if (fruitName != null && fruits.containsKey(fruitName)) {
    return fruits[fruitName]!;
  } else {
    return -1;
  }
}
