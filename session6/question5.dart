/*Write a function that takes a sentence as input and returns the longest word in the sentence.
If multiple words have the same longest length, return the first one that */

void main() {
  print(longestWord('sara mohamed qasoa'));
}

String? longestWord(String sentence) {
  List<String> words = sentence.split(' ');
  int j = 0;
  String? longest;
  for (int i = 1; i < words.length; i++) {
    if (words[i].length > words[j].length) {
      longest = words[i];
    } else if (words[i].length == words[j].length) {
      longest = words[j];
    } else {
      longest = words[j];
    }
  }
  return longest;
}
