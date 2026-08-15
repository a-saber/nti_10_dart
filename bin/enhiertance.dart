import 'dart:math';

class User{
  static String name = "Ali";
  int age = 20;
}

void main(){

  User u = User();
  User.name = "Ahmed";
  // User.age =  25;
  u.age = 30;
  
}
class Vehicle {
  String brand;
  String color;

  Vehicle(this.brand, this.color);

  void displayInfo() 
  {
    print('Brand: $brand');
    print('Color: $color');
  }
}
class Car extends Vehicle {
  String model;
  Car( super.brand, super.color, {required this.model,});

  @override
void displayInfo() {
  super.displayInfo();
  print('Model: $model');
}
}

class CarA extends Car{
  String? aType;
  CarA(super.brand, super.color, {required super.model, this.aType});

  @override
  void displayInfo() {
    super.displayInfo();
    print('TypeA: $aType');
  }
}
class Bus extends Vehicle{
  String? type;
  Bus(super.brand, super.color, {this.type});

  @override
  void displayInfo() {
    super.displayInfo();
    print('Type: $type');
  }
}

// void main(){

 

//   Vehicle v1 = Vehicle("Honda", "Blue");
//   Car c1 = Car(model: 'Sedan', "Toyota", "Red");
//   Bus b1 = Bus("Nissan", "Black", type: "School Bus");
//   CarA ca1 = CarA("BMW", "White", model: "X5", aType: "Luxury");
 
// display(v1);
// print('-------------------');
// display(c1);
// print('-------------------');
// display(b1);
// print('-------------------');
// display(ca1);

// print(pow(2,3));
// }

void display(Vehicle vehicle) {
  vehicle.displayInfo();
}

/*
Person
- name
- age
- displayInfo()

Student
- name
- age
- university
- displayInfo()

Employee
- name
- age
- salary
- displayInfo()

Manager
- name
- age
- salary
- department
- displayInfo()

Teacher
- name
- age
- salary
- subject

-------------

display(Person person) {
  person.displayInfo();
}

main() {
  Person p1 = Person("John", 25);
  Student s1 = Student("Alice", 20, "Harvard");
  Employee e1 = Employee("Bob", 30, 50000);
  Manager m1 = Manager("Charlie", 35, 80000, "Sales");
  Teacher t1 = Teacher("Dave", 40, 60000, "Math");

  display(p1);
  display(s1);
  display(e1);
  display(m1);
  display(t1);
}
*/