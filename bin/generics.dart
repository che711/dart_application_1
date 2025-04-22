// generics - помогают избежать дупликацию кода и обеспечивают безопасность типов
void main() {
  Car car = Car('2', "BMW");
  print(car.id.runtimeType);

  // int id = car.id;
  // print(id);

  print("");
  Car car1 = Car(1, 'Ford');
  print(car1.id.runtimeType);
}

class Car<T> {
  // <T> - Тип
  // <E> - Элемент
  // <K> - Ключ
  // <V> - Значение

  T id;
  String carName;

  Car(this.id, this.carName);
  void move() {
    print('The $carName. ID number: $id');
  }
}
