// single inheritance

class state{
  void output1(){
    print("The state is Punjab");
  }
}
class district extends state {
  void output2(){
    print("Hoshiarpur is my district");
  }
}

void main(){
  var address = district();
  address.output2();
  address.output1();
}

// output:
// Hoshiarpur is my district
// The state is Punjab
 
------------------------------------
// Multiple Inheritance: When a class inherits more than one parent class than this inheritance occurs. Dart doesn’t support this.
------------------------------------
  
// multilevel inheritance

class state{
  void output1(){
    print("The state is Punjab");
  }
}
class district extends state {
  void output2(){
    print("Hoshiarpur is my district");
  }
}
class tehsil extends district {
  void output3() {
    print("garhshahnkr is the tehsil");
  }
}

void main(){
  var address = new tehsil();
  address.output3();
  address.output2();
  address.output3();
}

// output:
// garhshahnkr is the tehsil
// Hoshiarpur is my district
// garhshahnkr is the tehsil

--------------------------------
  
// hierarchical inheritance : More than one classes have the same parent class.
  
  class state{
  void output1(){
    print("The state is Punjab");
  }
}
class district extends state {
  void output2(){
    print("Hoshiarur is my district");
  }
}
class tehsil extends state {
  void output3() {
    print("garhshahnkr is the tehsil");
  }
}

void main(){
  var address = new tehsil();
  address.output3();
  address.output1();

  var address1 = new district();
  address1.output2();
  address.output1();
}

// output: 
// garhshahnkr is the tehsil
// The state is Punjab
// Hoshiarur is my district
// The state is Punjab
  
