void main() {
  // в Dart можно создавать множество разнообразных
  // объектов с помощью одного класса

  // после создания конструктора класса Car
  // нужно добавить объекты в ()
  final myCar = Car(vin: 503, model: 'BMW'); 
  myCar.vin = 503;
  myCar.model = 'BMW';

  print(myCar);
  print('');

  final myCar1 = Car(vin: 3242, model: 'Audi') // после добавления конструктора обязтель добавить параметры в ()
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

  // создаем конструктор класса Car
  Car({required this.vin, this.model = 'unknown'}) {
    // this.vin = vin;
    // this.model = model;
  }

  String printNewCar() {
    return "My new car has vin: $vin, and model: $model";
  }

  @override
  String toString() {
    return "Car's vin: $vin, \nCar model: $model";
  }
}
