// we cannot create an object of an abstract class.
// abstract is something that has an idea but no concrete structure.
// so, abstract classes are used to define an interface that is common to multiple classes.

void main(){
  final square = Square(side:10.1);
  print(square.area());
}

abstract class Shape {
  double area();
}

class Square implements Shape {
  Square({required this.side});
  final double side;
  
  @override 
  // because we've overridden area() here.
  double area() => side * side; 
}
