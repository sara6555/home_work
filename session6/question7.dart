/*Write a function that takes a string as input and returns the string reversed.
Example:
reverseString('hello') -> 'olleh'*/

void main() {
  print(reverseString('sara'));
}

String reverseString(String word) {
  List<String> letters = word.split('');
  return letters.reversed.toString();
}
