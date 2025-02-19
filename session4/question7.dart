/*. Loops, Conditional Statements & Logical Operators
Write a program that prints the numbers 1 to 20 but:
- If a number is divisible by 3, print "Fizz".
- If a number is divisible by 5, print "Buzz".
- If a number is divisible by both 3 and 5, print "FizzBuzz".
*/

void main() {
  for (int i = 1; i <= 20; i++) {
    bool IsNumberDivisibleByThree = (i / 3 == 1) || (i / 3 == 3);
    bool IsNumberDivisibleByFive = (i / 5 == 1) || (i / 5 == 3);
    if (IsNumberDivisibleByThree) {
      print('Number: $i "Fizz"');
    } else if (IsNumberDivisibleByFive) {
      print('Number: $i "Buzz"');
    } else if (IsNumberDivisibleByThree && IsNumberDivisibleByFive) {
      print('Number: $i "FizzBuzz"');
    }
  }
}
