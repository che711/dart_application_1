void main() {
  // create a lis
  var fruits = ['apples', 'oranges', 'bananas', 'watermelon']; // все в квадратных скобках литералом списка
  fruits = [];
  fruits = ['orange', 'pears', 'coconaut', 'melon'];
  print(fruits);

  var owoce = []; // при создании пустого списка dart думает что это список динамического типа
  List<String> apple = ['watermelon', 'grape', 'cherr']; // указываем тип списка
  var orange = <String>[]; // указываем тип списка

  // accesseing elements
  final secondElement = fruits[1];
  print(secondElement);

  final index = fruits.indexOf('coconaut');
  final value = fruits[index];
  print('Значение индекса: $index будет $value');
  print('');

  // assigning values to list of elements
  fruits[1] = 'mango';
  print(fruits[1]);
  print(fruits);

  // adding elements to the end of the list
  fruits.add('avocado');
  print(fruits);
  print('');

  // inserting elements
  fruits.insert(4, 'kiwi'); // добавляет элемент в список по индексу
  print(fruits);
  print('');

  // removing elements
  fruits.remove('melon'); // удаляет элемент по значению
  print(fruits);

  fruits.removeAt(2); // удаляет элемент по индексу
  // print(fruits);
  print('');

  // // sorting elements
  // final numbers = [22, 83, 42, 24, 85, 3]; // сортировка чисел
  // numbers.sort();
  // print(numbers);

  // final minValues = numbers[0];
  // final maxValues = numbers[numbers.length - 1];
  // print('Минимальное значение: $minValues');
  // print('Максимальное значение: $maxValues');
  // print('');

  // fruits.sort(); // сортировка строк. по дефолту сортирует по алфавиту
  // print(fruits);
}
