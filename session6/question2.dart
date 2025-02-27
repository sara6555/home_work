/*Write a function that converts temperature from Celsius to Fahrenheit and vice versa.
Accept temperature value and unit ('C' for Celsius, 'F' for Fahrenheit) as inputs.
Convert accordingly and return the result.*/

import 'dart:io';

void main() {
  print('Enter the temperature');
  int temperature = int.parse(stdin.readLineSync()!);
  print('Enter the unit C or F');
  String unit = stdin.readLineSync()!;
  if (unit == 'C' || unit == 'F') {
    print(convertTemperature(temperature, unit));
  } else {
    print('Error : Please Enter the unit C or F');
  }
}

double convertTemperature(int temperature, String unit) {
  bool isCelsius = unit == 'C';
  if (isCelsius) {
    double fahrenheit = (temperature * (9 / 5)) + 32;
    return fahrenheit;
  } else {
    double celsius = ((temperature - 32) * 5) / 9;
    return celsius;
  }
}
