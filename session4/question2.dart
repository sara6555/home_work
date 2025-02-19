/*2. Arithmetic Operators, Conditional Statements & Functions
Write a function `calculateBonus(int salary, int yearsWorked)` that calculates a
bonus based on the following rules:
- If the employee has worked for 5 or more years, they get a 10% bonus.
- Otherwise, they get a 5% bonus.
The function should return the bonus amount.
Then, call the function inside `main()` and print the result.
*/

import 'dart:io';

void main() {
  print('Enter A Salary');
  int salary = int.parse(stdin.readLineSync()!);
  print('Enter A Years Worked');
  int yearsWorked = int.parse(stdin.readLineSync()!);
  print('bouns: ${calculateBonus(salary, yearsWorked)}');
}

num calculateBonus(int salary, int yearsWorked) {
  num bonus;
  if (yearsWorked >= 5) {
    bonus = salary + (salary * (10 / 100));
    return bonus;
  } else {
    bonus = salary + (salary * (5 / 100));
    return bonus;
  }
}
