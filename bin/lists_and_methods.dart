void main() {
  // create a lis
  var fruits = [
    'apples',
    'oranges',
    'bananas',
    'watermelon'
  ]; // все в квадратных скобках литералом списка
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

  // assigning values to list of elements

  // adding elements to the end of the list

  // inserting elements

  // removing elements

  // sorting elements
}
