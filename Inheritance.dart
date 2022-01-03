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
