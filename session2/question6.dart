/*- Create a string variable password and set it to 'secret'.
- If password equals 'secret', print 'Access granted', otherwise print 'Access denied*/

void main() {
  String password = 'secret';
  bool isPassswordEqualsSecret = password == 'secret';
  if (isPassswordEqualsSecret) {
    print('Access granted');
  } else {
    print('Access denied');
  }
}
