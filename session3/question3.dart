/*Create a to-do list program using a List where each item has a description, due date, and
completion status (as bool). Implement methods to add, remove, and update tasks, including the
use of for-each loops.*/

void main() {
  List<Map<String, dynamic>> items = [
    {
      'description': 'Buy groceries',
      'dueDate': '2025-02-20',
      'isCompleted': true
    },
    {
      'description': 'Complete work report',
      'dueDate': '2025-02-18',
      'isCompleted': true
    }
  ];

  addItem(
      itemsList: items,
      description: 'Complete work report',
      dueDate: '2025-02-18',
      isCompleted: true);
  print(items);
  removeItem(itemsList: items, index: 0);
  print(items);
  updateItem(
      itemsList: items, newItem: 'Go to the gym', index: 0, key: 'description');
  print(items);
  displayItems(items);
}

void addItem(
    {required List<Map<String, dynamic>> itemsList,
    required String description,
    required String dueDate,
    required bool isCompleted}) {
  itemsList.add({
    'description': description,
    'dueDate': dueDate,
    'isCompleted': isCompleted
  });
}

void removeItem(
    {required List<Map<String, dynamic>> itemsList, required int index}) {
  if (index >= 0 && index < itemsList.length) {
    itemsList.removeAt(index);
  } else {
    print("Invalid index. Unable to remove item.");
  }
}

void updateItem(
    {required List<Map<String, dynamic>> itemsList,
    required dynamic newItem,
    required int index,
    required String key}) {
  if (index >= 0 && index < itemsList.length) {
    itemsList[index][key] = newItem;
  } else {
    print("Invalid index. Unable to update item.");
  }
}

void displayItems(List<Map<String, dynamic>> itemsList) {
  for (int i = 0; i < itemsList.length; i++) {
    print(itemsList[i]['description']);
    print(itemsList[i]['dueDate']);
    print(itemsList[i]['isCompleted']);
  }
}
