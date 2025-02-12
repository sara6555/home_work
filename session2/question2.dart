/*- Create a list named colors with the values ['red', 'green', 'blue'].
- Add 'yellow' to the list and print the updated list.
- Remove 'green' from the list and print the updated list.
*/

void main() {
  List<String> Colors = ['red', 'green', 'blue'];
  Colors.add('yellow');
  print('List after adding color "yellow" : $Colors');
  Colors.remove('green');
  print('List after removing color "green" : $Colors');
}
