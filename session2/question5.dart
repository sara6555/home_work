/*- Create two integer variables, x and y, with values 50 and 30 respectively.
- Print true if x is less than y, otherwise print false.*/

void main() {
  int x = 50;
  int y = 30;
  bool isXLessThanY = x < y;
  if (isXLessThanY) {
    print('is x less than y? true');
  } else {
    print('is x less than y? false');
  }
}
