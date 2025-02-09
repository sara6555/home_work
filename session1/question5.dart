//What is the difference between var and dynamic in Dart? Provide an example of each.

////the solution:
/* var : It is a keyword used to declare a variable, and Dart infers the type of the variable based on the value assigned to it at compile-time.
Once the type is inferred, it cannot be changed during runtime.
If a new value is assigned to a variable, Dart will expect this value to be of the same type.*/

// dynamic : It is data type used when you don't know the type of data at compile-time and want to allow the variable to hold any type of value at runtime.

void main() {
  //Example of var
  var firstName = 'sara';
   firstName = 25

   // Example of dynamic
  dynamic lastName = 'mohammed';
  lastName = 30;
  lastName = true;
  lastName = 12.8;
}
