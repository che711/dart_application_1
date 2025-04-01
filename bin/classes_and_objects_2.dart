
void main() {
  final myCar = Car(503, 'BMW');

  Car.numOfWheels = 4; // Изменяем статическое поле numOfWheels
  myCar.chceckMove(); // Проверяем состояние автомобиля
  // print(myCar); // Выводим информацию об автомобиле
  print('');

}

// класс Car может быть объявлен здесь

class Car {
  int vin;
  String model;
  static int numOfWheels = 3;

  void chceckMove() {
    if (numOfWheels < 4) {
      print('Car is broken');
    } else {
      print('Car is OK');
    }
  }

  Car(this.vin, this.model);

  @override
  String toString() {
    return "Car's vin: $vin, \nCar model: $model";
  }
}
