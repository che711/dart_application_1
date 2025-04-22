void main() {
  Car car = Car(1, "BMW");
  print(car.id.runtimeType);
}

class Car {
  int id;
  String carName;

  Car(this.id, this.carName);
  void move(){
    print('The $carName. ID number: $id');
  }
}
