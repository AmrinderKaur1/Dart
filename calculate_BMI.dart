// calculating BMI
class Person {
  Person({required this.height, required this.weight});
  final double height;
  final int weight;
  
  double calculateBMI(){
    return weight / (height * height);
  }
}

void main() {
  final person = Person(height: 1.67, weight: 50);
  print(person.calculateBMI());
}
