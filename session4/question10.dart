/*For-Each Loop, Lists & String Manipulation
Create a list of 5 words.
- Iterate through the list using a for-each loop.
- Convert each word to uppercase.
- Print each word in uppercase*/

void main() {
  List<String> words = ['Hi', 'Hello', 'Bye', 'Welcome', 'Goodbye'];
  words.forEach((item) {
    String wordsUpperCase = item.toUpperCase();
    print('UPPER CASE: $wordsUpperCase');
  });
}
