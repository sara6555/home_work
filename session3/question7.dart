/*Create a program that asks the user to input a number and checks if it's positive, negative, or zero
using if-else statements.*/

import 'dart:io';

void main() {
  print('Please Enter A Number');
  int number = int.parse(stdin.readLineSync()!);
  if (number > 0) {
    print('positive');
  } else if (number == 0) {
    print('zero');
  } else {
    print('negative');
  }
}
