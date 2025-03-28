class Car {
  int? vin = 0;
  String model = '';

  // создаем конструктор класса Car
  Car({required int vin, String model = 'unknown'})  : vin = vin,   model = model{
    print('Car: $vin and $model');
  }

  // создаем именнованный конструктор
  Car.volvo() {
    vin = 200;
    model = 'Volvo';
  }

  Car.bmw() : this(vin: 300, model: 'BMW');
  
  String printNewCar() {
    return "My new car has vin: $vin, and model: $model";
  }

  @override
  String toString() {
    return "Car's vin: $vin, \nCar model: $model";
  }
}