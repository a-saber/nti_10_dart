 abstract class Animal {
  String? name;
  Animal(this.name);

  void makeSound();

  void displayInfo() {
    print('Name: $name');
  }
}

class Dog extends Animal{
  bool isTrained;
  Dog(this.isTrained, super.name);

  @override
  void makeSound(){
    print('Woof Woof');
  }

  @override
  void displayInfo() {
    super.displayInfo();
    print('Is Trained: $isTrained');
  }
}

abstract class Cat extends Animal{
  Cat(super.name);
  void makeCatSound();
}

class CatA extends Cat{
  CatA(super.name);

  @override
  void makeSound() {
    print('Meow Meow');
  }

  @override
  void makeCatSound() {
    print('Purr Purr');
  }

  @override
  void displayInfo() {
    super.displayInfo();
    print('CatA specific info');
  }
}

class CatB implements Cat{
  @override
  String? name;

  @override
  void displayInfo() {
    // TODO: implement displayInfo
  }

  @override
  void makeCatSound() {
    // TODO: implement makeCatSound
  }

  @override
  void makeSound() {
    // TODO: implement makeSound
  }
  


}
/*
Shape
- height
- width
- displayInfo(){}
- claculateArea();

Rectangle extends Shape

Circle extends Shape

Square extends Shape
*/