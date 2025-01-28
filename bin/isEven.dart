void main() {
  // проверка на четность\нечетность числа
  num someNumber = 5;
  print(someNumber);  // тут мы не можем вызвать .isEven, т.к. someNumber имеет тип num 
  
  final someInt = someNumber as int;
  print(someNumber.isEven); // а теперь можем, т.к. someNumber имеет тип int

}
