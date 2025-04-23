void main() {
  // map    1 2 3 4 5 6 => 1 4 9 16 25 36
  //where   1 2 3 4 5 6 => 1 3 5
  //reduce  1 2 3 4 5 6 => 21

  /**
   *  ДЕКЛАРАТИВНОЕ ПРОГРАММИРОВАНИЕ - это парадигма программирования, 
   * в которой программист описывает, что программа должна делать, 
   * не указывая, как она должна это делать
   * 
   * ИМПЕРАТИВНОЕ ПРОГРАММИРОВАНИЕ - это парадигма программирования, 
   * в которой программист описывает, как программа должна выполнять задачу

  */

  const listNumbers = [1, 2, 3, 4, 5, 6];

  doubleElement(number) => print(2 * number);
  listNumbers.forEach(doubleElement);

  for (var number in listNumbers) {
    print(2 * number);
  }
  print('');

  // map
  final carColor = {
    'Ferrari': 'red',
    'Lamborghini': 'black',
    'Porsche': 'white',
  };

  carColor.forEach((car, color) => print('$car is $color'));
  print('');

  final looped = <int>[];
  for (final x in listNumbers) {
    looped.add(x * x);
  }
  print(looped);
  print('');

  // map
  final mapped = listNumbers.map((x) => x * x);
  print(mapped);
  print('');

  // where
  final odds = listNumbers.where((x) => x.isOdd);
  print(odds);
  print('');

  // reduce
  final emptyList = <int>[];
  // final sum = listNumbers.reduce((value, element) => value + element);
  final sum = listNumbers.reduce((value, element) {
    print('$value -> $element');
    return value + element;
  });
  print(sum);
  print('');

  // fold - может принимать начальное значение равное 0
  final sumFold = emptyList.fold(0, (value, element) => value + element);
  print(sumFold);
  print('');

  // Декларативный подход
  const cars = [
    'Ferrari',
    'Lamborghini',
    'Porsche',
    'BMW',
    'Audi',
    'Mercedes',
    'Toyota',
    'Honda',
    'Ford',
    'Chevrolet',
    'Volvo'
  ];
  print(cars);
  print('');

  final filteredCars =
      cars.where((car) => car.length > 4).map((car) => car.toUpperCase());

  print(filteredCars);
  print('');

  final filteredCarsToList = filteredCars.toList();
  print(filteredCarsToList);
  print('');

  // Императивный подход
  final filteredCarsImperative = <String>[];
  for (final car in cars) {
    if (car.length > 4) {
      filteredCarsImperative.add(car.toUpperCase());
    }
  }
  print(filteredCarsImperative);
  print('');
}
