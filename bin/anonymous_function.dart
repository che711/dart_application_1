void main() {
  // // Анонимные функции - это функции без имени
  // Function addTwoNumbers = (int a, int b) {
  //   var sum = a + b;
  //   print(sum);
  // };

  // Короткая запись анонимной функции
  addTwoNumbers(int a, int b) => print(a + b);

  // print(addTwoNumbers(2, 5));

  int result = operationNumbers(10, 20, (a, b) => a * b);
  print(result);
}




int operationNumbers(int a, int b, Function operation) {
  return operation(a, b);
}

void addNumbers(int a, int b) {
  var sum = a + b;
  print(sum);
}
