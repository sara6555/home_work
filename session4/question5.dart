/* Sets, Functions & Return Statement
Write a function `uniqueNames(List<String> names)` that:
- Accepts a list of names.
- Returns a Set containing only unique names.
Call the function inside `main()` and print the result.
*/

void main() {
  List<String> names = ['sara', 'ahmad', 'reem', 'sara'];
  print('names: ${uniqueNames(names)}');
}

Set uniqueNames(List<String> names) {
  return names.toSet();
}
