/*Create a class `Rectangle` with:
- Private attributes `_width` and `_height`.
- A constructor that initializes the values.
- A getter `area` that calculates and returns the area.
In `main()`, create a `Rectangle` object and print its area.
*/

void main() {
  Rectangle rectangle = Rectangle(width: 8, height: 9);
  print('area: ${rectangle.area}');
}

class Rectangle {
  int _width = 8;
  int _height = 9;

  Rectangle({int width = 4, int height = 3}) {
    _width = width;
    _height = height;
  }

  int get area => _width * _height;
}
