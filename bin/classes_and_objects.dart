import 'package:dart_application_1/car.dart';

void main() {
  // в Dart можно создавать множество разнообразных
  // объектов с помощью одного класса

  // после создания конструктора класса Car
  // нужно добавить объекты в ()
  const myCar = Car(vin: 503, model: 'BMW');
  // myCar.vin = 503;
  // myCar.model = 'BMW';

  print(myCar);
  print('');

  const anotherCar = myCar;
  print(anotherCar.vin);
  anotherCar.vin = 000;
  print(anotherCar.vin);
  print('');

  const bmwCar = Car.bmw();
  print(bmwCar);
  print('Printed Car.bmw above');
}

// класс Car должен выше или ниже метода main

class Car {
  final int? vin;
  final String model;

  // создаем конструктор класса Car
  Car({required int vin, String model = 'unknown'}) : vin = vin, model = model {
    print('Car: $vin and $model');
  }

  const Car.bmw() : this(vin: 300, model: 'BMW');

  String printNewCar() {
    return "My new car has vin: $vin, and model: $model";
  }

  @override
  String toString() {
    return "Car's vin: $vin, \nCar model: $model";
  }
}
