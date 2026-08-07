import 'oop.dart';
void main(){
  Car car1 = Car(brand: 'Honda', category: 'Sedan', color: 'Black');
  // car1._maxSpeed = -200;
  print(car1.setMaxSpeed(200));
  car1.maxSpeed = 300;
  car1.brand = 'Toyota';
  car1.displayInfo();
  print(car1.maxSpeed);
}
