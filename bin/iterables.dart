import 'package:dart_application_1/squares.dart';

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
  print(reversedList); // круглые скобки - это тип Iterable, а не List
  // iterable - это коллекция, которая может быть перебрана и возвращает элементы по одному с
  // List - это коллекция, которая может быть перебрана и имеет индексы

  final reversedList2 = mylist.reversed.toList();
  print(reversedList2); // квадратные скобки - это тип List

  // creage an Iterable
  final myIterable = Iterable.generate(5, (index) => index * 2);
  print("myIterable: $myIterable");

  Iterable<String> myIterable2 = ['a', 'b', 'c', 'd'];
  print(myIterable2);

  // accessing elements
  final twoElements = myIterable2.elementAt(1);
  print('twoElements: $twoElements');

  // finding the first and last elements
  print('First element: $myIterable2.first');
  print('Last element: $myIterable2.last');

  // Getting the length
  var mylength = myIterable2.length;
  print('myIterable2.length: $mylength');

  // other important methods on Iterable: map, where,expan, contains,forEach, reduce, fold
  // ignore: unused_element
  Iterable<int> hundredSquare() sync* {
    for (int i = 1; i < 100; i++) {
      yield i * i;
    }
  }

  // final squares = hundredSquare();
  // for (int square in squares) {
  //   print(square);
  // }

  final squares = HundredSquares();
  for (int square in squares) {
    print(square);
  }

}
