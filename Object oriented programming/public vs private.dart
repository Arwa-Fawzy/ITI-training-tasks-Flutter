//dart is not sequantial, we can call the class before creating it
void main() {
  //create object
  //call the instructor - the object
  Student student1 = Student('arwa', 19, 104701);
  //print(student1);
  print("""my name is ${student1.cName}, my age is ${student1.cAge} and my ID 
  is ${student1.ID}""");
}

//class syntax
class Student {
  String cName = '';
  int cAge = 0;
  int ID = 12;

//constructor
  Student(this.cName, this.cAge, this.ID) {
    this.cName = cName;
    this.cAge = cAge;
    this.ID = ID;
  }
}
