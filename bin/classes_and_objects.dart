void main() {

  // в Dart можно создавать множество разнообразных 
  // объектов с помощью одного класса
  
  final myCar = Car();
  myCar.vin = 503;
  myCar.model = 'BMW';

  print(myCar);
  print('');

  final myCar1 = Car()
    ..vin = 3242
    ..model = 'Audi';

  // myCar1.vin = 3241;
  // myCar1.model = 'Renault';
  print(myCar1.printNewCar());
  print('');

  final anotherCar = myCar;
  print(anotherCar.vin);
  anotherCar.vin = 000;
  print(anotherCar.vin);

}

// класс Car должен выше или ниже метода main

class Car {
  int? vin = 0;
  String model = '';

  String printNewCar() {
    return "My new car has vin: $vin, and model: $model";
  }

  @override
  String toString() {
    return "Car's vin: $vin, \nCar model: $model";
  }
}
