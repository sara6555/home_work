/*Implement a program that uses a List to store grocery items. It should allow adding, removing, and
displaying items. Use functions with return types and optional/named parameters. Make sure to
handle possible null values.*/

void main() {
  List<String> groceryStorage = ['Flour', 'Sugar', 'Rice', 'Pasta', 'Salt'];
  print(addItem(groceryItems: groceryStorage, item: 'Coffe'));
  print(removeItem(groceryItems: groceryStorage));
  print(updateItem(groceryItems: groceryStorage, index: 0, item: 'Tea'));
  displayItems(groceryStorage);
}

List addItem({required List<String> groceryItems, required String item}) {
  groceryItems.add(item);
  return groceryItems;
}

List removeItem({required List<String> groceryItems, String? item}) {
  if (item != null) {
    groceryItems.remove(item);
    return groceryItems;
  } else {
    print('Error: cannot be deleted because value is empty');
    return groceryItems;
  }
}

List updateItem(
    {required List<String> groceryItems,
    required int index,
    required String item}) {
  if (index >= 0 && index < groceryItems.length) {
    groceryItems[index] = item;
    return groceryItems;
  } else {
    print("Invalid index. Unable to update item.");
    return groceryItems;
  }
}

void displayItems(List<String> groceryItems) {
  for (var element in groceryItems) {
    print(element);
  }
}
