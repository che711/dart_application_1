void main() {
  // create a list
  // все в квадратных скобках называется литералом списка:
  var fruits = ['apples', 'oranges', 'bananas', 'watermelon'];

  // тоже самое, что и с использованием цикла for-in:
  print('without for-in cycle:');
  for (int i = 0; i < fruits.length; i++) {
    final fruit = fruits[i];
    print('I like $fruit');
  }

  print('for-in cycle:');
  // тоже самое, чтог и с использованием цикла for:
  for (final fruit in fruits) {
    print('I like $fruit');
  }

  // print(fruits);
  // print('');

  // print(fruits.first);
  // print('');

  // print(fruits.last);
  // print('');

  // print(fruits[0]);
  // print('');

  // print('print(fruits.length - 1):');
  // print(fruits.length - 1);
  // print('');

  // print(fruits.isEmpty);
  // print('');

  // print(fruits.isNotEmpty);
  // print('');
}
