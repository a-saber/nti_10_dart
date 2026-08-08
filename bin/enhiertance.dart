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

void main(){

  Vehicle v1 = Vehicle("Honda", "Blue");
  Car c1 = Car(model: 'Sedan', "Toyota", "Red");
  Bus b1 = Bus("Nissan", "Black", type: "School Bus");
  CarA ca1 = CarA("BMW", "White", model: "X5", aType: "Luxury");
 
display(v1);
print('-------------------');
display(c1);
print('-------------------');
display(b1);
print('-------------------');
display(ca1);

}

void display(Vehicle vehicle) {
  vehicle.displayInfo();
}