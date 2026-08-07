class Person{
  String? name;
  int? age;

  Person( this.age, this.name,);
  void displayInfo(){
    print('Name: $name');
    print('Age: $age');
  }
}

class Student extends Person{
  double? gpa;

  // Student({required this.gpa}):super(30, 'Ali');
  Student(super.age, super.name);

  @override
  void displayInfo(){
    print('GPA: $gpa');
    super.displayInfo();
  }

}

void main(){
  Person person1 = Person(30, 'ahmed');
  person1.displayInfo();

  print('-------------------');

  Student student1 = Student(22, 'Ali');
  student1.gpa = 3.5;
  student1.displayInfo();
}