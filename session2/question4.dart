/*- Create a map named person with the keys and values: 'name': 'Alice', 'age': '25', and 'city': 'New
York'.
- Print the age of the person from the map.
- Update the city to 'Los Angeles' and print the updated map.
*/

void main() {
  Map<String, String> person = {
    'name': 'Alice',
    'age': '25',
    'city': 'New York'
  };

  print('Age of the person: ${person['age']}');
  person['city'] = 'Los Angeles';
  print('Updated person map: $person');
}
