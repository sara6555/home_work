/*Create a Dart program that takes two numbers as input and performs addition, subtraction,
multiplication, and division using variables, arithmetic operators, and functions. Also, include
optional parameters for different operations (e.g., addition of multiple numbers).
*/

import 'dart:io';

void main() {
  print('Please Enter A First Number');
  double num1 = double.parse(stdin.readLineSync()!);
  print('Please Enter A Second Number');
  double num2 = double.parse(stdin.readLineSync()!);
  print('Please Enter A Third Number');
  String? input = stdin.readLineSync();
  double num3 = (input != null && input.isNotEmpty) ? double.parse(input) : 0.0;
  print("Addition: ${add(num1, num2, num3)}");
  print("Subtraction: ${subtract(num1, num2)}");
  print("Multiplication: ${multiply(num1, num2)}");
  if (divide(num1, num2) != null) {
    print("Division: ${divide(num1, num2)}");
  } else {
    print("Error: Returns a null value");
  }
}

double add(double number1, double number2, [double? number3]) {
  double sum;
  if (number3 != null) {
    sum = number1 + number2 + number3;
  } else {
    sum = number1 + number2;
  }
  return sum;
}

double subtract(double number1, double number2) {
  double result = number1 - number2;
  return result;
}

double multiply(double number1, double number2) {
  double result = number1 * number2;
  return result;
}

double? divide(double number1, double number2) {
  double result;
  if (number2 != 0) {
    result = number1 / number2;
  } else {
    print("Error: Division by zero is not allowed.");
    return null;
  }
  return result;
}
