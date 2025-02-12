/*- Create an integer variable marks.
- If marks is 70 or higher, print 'Passed', otherwise print 'Failed'.*/

import 'dart:io';

void main() {
  print('Please Enter The Marks');
  int marks = int.parse(stdin.readLineSync()!);
  if (marks >= 70) {
    print('Passed');
  } else {
    print("Failed");
  }
}
