void main() {
  /**
    * var fruits = ['apples', 'oranges', 'bananas', 'watermelon']; // все в квадратных скобках литералом списка
    * мы не можем изменить списоk fruits через final (указывается только один раз), но можем изменить содержимое списка
    * final fruits = ['apples', 'oranges', 'bananas', 'watermelon']; // все в квадратных скобках литералом списка
    */
  final fruits = ['apples', 'oranges', 'bananas', 'watermelon']; // все в квадратных скобках называется литералом списка
  fruits.remove('apples');
  fruits.add('grapes');
  fruits[1] = 'mango';
  print(fruits);
  print('');

  // неизменяемый список
  const fruit = ['mango', 'oranges', 'avocado', 'melon'];
  // мы не можем изменить этот список через методы списка
  fruits.remove('mango');
  fruits.add('grapes');
  fruits[1] = 'apples';
  print(fruit); // все в квадратных скобках литералом списка
  print('');
  /** неизменяемый список
  * final owoce = const['mango', 'oranges', 'avocado', 'melon']; // мы не можем изменить этот список через методы списка
  * owoce.remove('mango');
  * owoce.add('grapes');
  * owoce[1] = 'apples';
  * print(owoce); // все в квадратных скобках литералом списка
  */

  final modifiableList = [DateTime.now(), DateTime.now()];
  final unmodifiableList = List.unmodifiable(modifiableList);
  print(unmodifiableList);
}

class Owoce {
  final List<String> owoce;
  Owoce([this.owoce = const ['owoce']]);
}
