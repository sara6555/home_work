/*Write a function that counts the number of words in a given sentence.
Words are separated by spaces, and the function should ignore extra spaces.*/

import 'dart:io';

void main() {
  print('Enter a sentence');
  String word = stdin.readLineSync()!;
  countsWords(word);
}

void countsWords(String word) {
  List<String> words = word.split(' ');
  int sum = 0;
  for (var i = 0; i < words.length; i++) {
    if (words[i] != ' ') {
      print(words[i]);
      sum = sum + 1;
    }
  }

  print('number of words: $sum');
}
