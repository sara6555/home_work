//Given this code, identify any errors and explain why they occur: ```dart void main(){ String name = "Alice"; name = 123; print(name); } ```

void main() {
  String name = "Alice";
  name = 123;
  print(name);
}
// Error: A value of type 'int'  be assigned to a variable of type 'String'.
