// toString() that converts an object to a string.
void main(){
  int n = 12;
  var res = n.toString();
//   res is of type String
  print("the output is: ${res+2}");
}

// we can convert any object of a class to return string val too. eg..
void main() {
  var emp = Employee();
  print(emp.toString);
  // the output od emp will be String
}
class Employee {
  // any code
}
 
// we can also override the toString() as:
.
.
.
class Employee {
  String toString => 'hi i am a girl';
}
