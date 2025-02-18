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

  final Set<int> setOne ={};
  final setTwo = <int>{};
  final setThree = {1, 2, 3, 4, 5};

  print(setOne);
  print(setTwo);
  print(setThree);

  var setFour = Set.from([1, "hello", true]);
  print(setFour);

  // сhecking the contains element
  final fruits = {'apple', 'orange', 'banana', 'watermelon', 'pineapple'};
  print(fruits.contains('apple'));
  print(fruits.contains('mango'));
}
