import 'dart:math';

// toString() that converts an object to a string.
void main(){
  final square = Square(side:10.1);
  printArea(square); // passing square object as parameter
  //   it was a stored property.
  //   print(square.area());
  //   using computed property now
  //   dart has 2 computed properties => getter and setter.
  final circle = Circle(radius:1.5);
  printArea(circle);
}
void printArea(Shape shape){
  print(shape.area);// computed property
}
abstract class Shape {
  double get area; // computed property
}

class Square implements Shape {
  Square({required this.side});
  final double side;
  
  @override
  double get area => side * side; 
}

class Circle implements Shape {
  Circle({required this.radius});
  final double radius;
  
  @override
  double get area => radius*radius*pi;
}
