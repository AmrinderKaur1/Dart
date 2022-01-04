// important: Classes and mixins cannot define the same variables and method names
// syntatically:
mixin mixin_name {
  data_type function_name(parameters) {
    return ....
    }
}

class className with mixin_name {
  // computed function
  data_type get func_name => function_name(parameters);
}

void main(){
  // code here
  print(classname_object.func_name);
}


// Understanding with an example where we calculate BMI.
mixin BMI {
  double calculateBMI(double weight, double height){
    return weight / (height * height);
  }
}

class Person with BMI {
  Person({required this.height, required this.weight});
  final double height;
  final double weight;
  
  // calling a mixin with a computed property
  double get bmi => calculateBMI(weight, height);
}

void main() {
  final person = Person(height: 1.67, weight: 50);
  print(person.bmi);
}
