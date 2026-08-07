class Car{
  late String brand;
  late String category;
  late String color;
  int? _maxSpeed;

  bool setMaxSpeed(int maxSpeed){
    if(maxSpeed>0){
      _maxSpeed = maxSpeed;
      return true;
    }
    return false;
  }
  // using set keyword
  set maxSpeed(int maxSpeed){
     if(maxSpeed>0){
      _maxSpeed = maxSpeed;
    }
  }
  int? getMaxSpeed(){
    return _maxSpeed;
  }
  // using get keyword
  int? get maxSpeed{
    return _maxSpeed;
  }
  

  void displayInfo(){
    print('Brand: $brand');
    print('Category: $category');
    print('Color: $color');
    print('Max Speed: $_maxSpeed');
  }

  Car({required this.brand, required this.category, required this.color});

  Car.sport(this.brand){
    color = 'Red';
    category = 'Sport';
  }


}
void main(){
  Car car1 = Car(brand: 'Honda', category: 'Sedan', color: 'Black');
  car1._maxSpeed = -200;
  car1.displayInfo();
  // test(name:'Ali');
}


void test(String name){}