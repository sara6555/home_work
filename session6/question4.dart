/*Write a function that takes two numbers (start, end) and returns a list of all prime numbers between
them.
Ensure that the function correctly identifies prime numbers and handles edge cases where start is
greater than end.*/

void main() {
  print(primeNumbers(1, 9));
}

List<int> primeNumbers(int start, int end) {
  if (start > end) {
    return [];
  }

  List<int> primeNumbers = [];
  for (var i = start; i <= end; i++) {
    bool isPrime = true;

    if (i <= 1) {
      isPrime = false;
    } else {
      for (var j = 2; j * j <= i; j++) {
        if (i % j == 0) {
          isPrime = false;
          break;
        }
      }
    }

    if (isPrime) {
      primeNumbers.add(i);
    }
  }

  return primeNumbers;
}
