import 'package:dart_application_1/car.dart';

void main() {
  // в Dart можно создавать множество разнообразных
  // объектов с помощью одного класса

  // после создания конструктора класса Car
  // нужно добавить объекты в ()
  final myCar = Car(vin: 503, model: 'BMW');
  // myCar.vin = 503; // Эти строки излишни, так как значения передаются в конструктор
  // myCar.model = 'BMW';

  print(myCar);
  print('');

  final renaultCar = Car.renault();
  print(renaultCar);
  print('');

  final mapCar = {
    'vin': 700,
    'model': 'Mercedes',
  };
  final mersedesCar = Car.fromJson(mapCar);
  print(mersedesCar);

}

// класс Car может быть объявлен здесь

class Car {
  final int _vin;
  final String _model;

  Car({required int vin, required String model}) : _vin = vin, _model = model;

  factory Car.renault() {
    return Car(vin: 200, model: 'Renault');
  }

  factory Car.fromJson(Map<String, dynamic> json) {
    final carVin = json['vin'] as int;
    final carModel = json['model'] as String;
    return Car(vin: carVin, model: carModel);
  }

  String printNewCar() {
    return "My new car has vin: $_vin, and model: $_model";
  }

  @override
  String toString() {
    return "Car's vin: $_vin, \nCar model: $_model";
  }
}