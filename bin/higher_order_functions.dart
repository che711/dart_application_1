void main() {
  // map    1 2 3 4 5 6 => 1 4 9 16 25 36
  //where   1 2 3 4 5 6 => 1 3 5
  //reduce  1 2 3 4 5 6 => 21

  const listNumbers = [1, 2, 3, 4, 5];

  final doubleElement = (number) => print(2 * number);
  listNumbers.forEach(doubleElement);

  listNumbers.forEach((int number) {
    print(2 * number);
  });
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
}
