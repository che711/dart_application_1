void main() {
  // spread operator (...) - оператор распространения
  const orangeAllerge = true;

  const appleAndPineApple = [
    'apple',
    'pineapple',
  ];
  // ignore: dead_code
  const prangeAndPear = [if (!orangeAllerge) 'orange', 'pear'];

  // если добавляем , после последнего элемента, то  список отформатируется в стобец
  final fruits = <String>[
    'watermelon',
    ...appleAndPineApple,
    ...prangeAndPear,
  ];

  // fruits.addAll(appleAndPineApple);
  // fruits.addAll(prangeAndPear);
  print(fruits);
  print('');
  print(prangeAndPear);
  print('');
 
  // for cycle
  var bigFruits = ['BANANA', for(final fruit in fruits) fruit.toUpperCase()];
  print(bigFruits);
}
