void main() {
  final myCar = Car(503, 'BMW');

  Car.numOfWheels = 4; // Изменяем статическое поле numOfWheels
  myCar.chceckMove(); // Проверяем состояние автомобиля
  // print(myCar); // Выводим информацию об автомобиле
  print('');

  Car.setWheels(3);
}

// класс Car может быть объявлен здесь

class Car {
  int vin;
  String model;
  static int numOfWheels = 4;

  void chceckMove() {
    numOfWheels < 4 ? print('Your car is brokent') : print('Your car is OK');
  }

  static double time(int dist, double speed) => dist / speed;

  static void setWheels(int value) {
    if (value == 4) {
      numOfWheels = value;
    } else {
      print('Please, set 4 wheels');
    }
  }

  Car(this.vin, this.model) {
    var t = time(500, 80);
    print('Time: $t');
  }

  @override
  String toString() {
    return "Car's vin: $vin, \nCar model: $model";
  }
}
