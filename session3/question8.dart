/*Write a Dart program that checks if a number is within a specified range using logical operators and
prints the result*/

import 'dart:io';

void main() {
  print("Enter a number:");
  double number = double.parse(stdin.readLineSync()!);

  double lowerBound = 10;
  double upperBound = 50;

  if (number >= lowerBound && number <= upperBound) {
    print("The number is within the range [$lowerBound - $upperBound].");
  } else {
    print("The number is outside the range [$lowerBound - $upperBound].");
  }
}
