import 'dart:math'; 

void main() {
  // set - множество. тип данных, который хранит только уникальные элементы.
  // повоторяющиеся элементы удаляются и порядок элементов не гарантируется.
  // в отличие от list, set не имеет индексов, поэтому нельзя получить доступ к элементу по индексу
  // set - это неупорядоченная коллекция уникальных элементов где надо использовать методы
  // add() - добавить элемент
  // remove() - удалить элемент
  // contains() - проверить наличие элемента
  // clear() - очистить множество
  // isEmpty - проверить пустое ли множество
  // isNotEmpty - проверить не пустое ли множество
  // length - длина множества (количество элементов)
  // union() - объединение множеств
  // intersection() - пересечение множеств
  // difference() - разность множеств
  // toList() - преобразовать множество в список
  // toSet() - преобразовать список в множество
  // union() - объединение множеств
  // intersection() - пересечение множеств
  // set - может быть быстрее чем list, когда надо проверить наличие элемента в коллекции

  // coздаем Set

  final Set<int> setOne = {};
  final setTwo = <int>{};
  final setThree = {1, 2, 3, 4, 5};

  print(setOne);
  print(setTwo);
  print(setThree);

  var setFour = {1, "hello", true};
  print(setFour);

  // сhecking the contains element
  final fruits = {'apple', 'orange', 'banana', 'watermelon', 'pineapple'};
  print(fruits.contains('apple'));
  print(fruits.contains('mango'));
  print('');

  // adding and removing single elements
  final newFruits = <String>{};
  newFruits.add('orange');
  newFruits.add('pear');
  newFruits.add('orange');

  print(newFruits);
  print('');

  newFruits.remove('orange');
  print('Removed orange value from newFruits: $newFruits');
  print('');

  // adding multiple elements
  newFruits.addAll({'apple', 'banana', 'kiwi', 'pear', 'watermelon'});
  print(newFruits);
  print('');

  // looping over the elements
  for (var fruit in fruits) {
    print("I'm like $fruit");
  }
  print('');

  // coping Sets
  final freshFruits = fruits.toSet();
  print(freshFruits);
  freshFruits.remove('banana');
  print('Removed mango value from freshFruits: $freshFruits');
  print('');

  print('newFruits: $fruits');
  print('');

  // other operations
  var newFruits2 = {'apple', ...freshFruits, if (true) ...fruits};
  print('newFruits2 $newFruits2');

  final randomGenerator = Random();
  final randomList = <int>[];

  print('');


  // intersection

  // union

  // difference
}
