/*Write a function that takes two numbers and an operator (+, -, *, /) as input and returns the result.
Handle cases where division by zero might occur.*/

import 'dart:io';

void main() {
  print('Please Enter A First Number');
  double num1 = double.parse(stdin.readLineSync()!);
  print('Please Enter A Second Number');
  double num2 = double.parse(stdin.readLineSync()!);
  print("Addition: ${add(num1, num2)}");
  print("Subtraction: ${subtract(num1, num2)}");
  print("Multiplication: ${multiply(num1, num2)}");
  if (divide(num1, num2) != null) {
    print("Division: ${divide(num1, num2)}");
  } else {
    print("Error: Returns a null value");
  }
}

double add(double number1, double number2) {
  double sum = number1 + number2;

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
