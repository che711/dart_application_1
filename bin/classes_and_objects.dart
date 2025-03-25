void main() {
  final myCar = Car();
  myCar.vin = 503;
  myCar.model = 'BMW';

  print(myCar);
}

// класс Car должен выше или ниже метода main

class Car {
  int? vin = 0;
  String model = '';
}
