/*. Lists, Loops & If Conditions
Create a list of numbers. Iterate over the list and:
- If a number is even, print "Even: <number>".
- If a number is odd, print "Odd: <number>".*/

void main() {
  List<int> numbers = [1, 9, 7, 6, 4, 3];
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] % 2 == 0) {
      print('Even: ${numbers[i]}');
    } else {
      print('Odd: ${numbers[i]}');
    }
  }
}
