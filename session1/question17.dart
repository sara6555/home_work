//If you need a variable that can hold any type of value and may change during execution, which data type would you use? Write a code example to show thi

////the solution:
// data type : dynamic

void main() {
  dynamic name = 'sara';
  print(name);
  name = 16;
  print(name);
  name = 13.2;
  print(name);
  name = true;
  print(name);
}
