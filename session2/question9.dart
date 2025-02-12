/*- Create an integer variable month with a value between 1 and 12.
- Use a switch statement to print the season based on the month.*/

import 'dart:io';

void main() {
  print('Please Enter The Month Between 1 and 12');
  int month = int.parse(stdin.readLineSync()!);
  switch (month) {
    case 12 || 1 || 2:
      print('Winter');
      break;
    case 3 || 4 || 5:
      print('Spring');
      break;
    case 6 || 7 || 8:
      print('Summmer');
    case 9 || 10 || 11:
      print('Autumn');
      break;
    default:
      print('Invalid month');
  }
}
