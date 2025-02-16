void main() {
  var fruits = <String>['orange', 'pears', 'coconaut', 'melon'];
  print(fruits);

  List<String> otherFruits = ['watermelon', 'grape', 'cherry'];
  print(otherFruits);

  final secondElement = fruits[1];
  print(secondElement);

  final index = fruits.indexOf('coconaut');
  if (index != -1) {
    final value = fruits[index];
    print('Значение индекса: $index будет $value');
  } else {
    print('Элемент coconaut не найден в списке');
  }
  print('');

  fruits[1] = 'mango';
  print(fruits[1]);
  print(fruits);

  fruits.add('avocado');
  print(fruits);
  print('');

  fruits.insert(4, 'kiwi');
  print(fruits);
  print('');

  fruits.remove('melon');
  print(fruits);

  fruits.removeAt(2);
  print(fruits);
  print('');

  final numbers = [22, 83, 42, 24, 85, 3];
  numbers.sort();
  print(numbers);

  final minValue = numbers.first; // более читаемый способ получить первый элемент
  final maxValue = numbers.last;   // более читаемый способ получить последний элемент
  print('Минимальное значение: $minValue');
  print('Максимальное значение: $maxValue');
  print('');

  fruits.sort();
  print(fruits);
}