/*Write a function that takes a list of numbers and returns the sum of all elements.
Example:
sumList([1, 2, 3, 4, 5]) -> 15*/

void main() {
  List<int> numbers = [1, 3, 9, 0, 6];
  print('sum of all elements: ${sumList(numbers)}');
}

int sumList(List<int> numbers) {
  int sum = 0;
  for (var i = 0; i < numbers.length; i++) {
    sum = sum + numbers[i];
  }
  return sum;
}
