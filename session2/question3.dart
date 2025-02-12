/* - Create a set named uniqueNumbers with the values {10, 20, 30, 40}.
- Print the length of uniqueNumbers.
- Check if the number 20 is present in the set and print the result.*/

void main() {
  Set<int> uniqueNumbers = {10, 20, 30, 40};
  print('Length of uniqueNumbers: ${uniqueNumbers.length}');
  bool DoesSetContain20 = uniqueNumbers.contains(20);
  if (DoesSetContain20) {
    print('Does the set contain 20? $DoesSetContain20');
  }
}
