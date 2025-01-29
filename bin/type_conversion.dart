void main() {
  // проверка на четность\нечетность числа
  num someNumber = 5;
  print(
      someNumber); // тут мы не можем вызвать .isEven, т.к. someNumber имеет тип num

  final someInt = someNumber as int;
  print(someNumber.isEven); // а теперь можем, т.к. someNumber имеет тип int

  // перевод строки в число Styring -> int
  var myInt = int.parse('8');
  print(myInt);

  // String -> double
  var myDouble = double.parse('10.5');
  print(myDouble);

  // int -> String
  String s1 = 10.toString();
  print(s1);
  String s2 = myInt.toString();
  print(s2);

  // double -> String
  String s3 = 3.14159.toStringAsFixed(2);
  print(s3);
  
}
