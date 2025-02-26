void main() {
  // a, b, c, d, e
  // 2, 4, 6, 16, 32

  // Iterable
  final mylist = ['a', 'b', 'c', 'd', 'e'];
  print(mylist);

  for (final item in mylist) {
    print(item);
  }

  final reversedList = mylist.reversed;
  print(reversedList);  // круглые скобки - это тип Iterable, а не List
  // iterable - это коллекция, которая может быть перебрана и возвращает элементы по одному с
  // List - это коллекция, которая может быть перебрана и имеет индексы
  

  final reversedList2 = mylist.reversed.toList();
  print(reversedList2);  // квадратные скобки - это тип List  
  

}
