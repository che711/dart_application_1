// вложенные функции имеют смысл если мы планируем испльзовать
//некие повторяющиеся действия только внутри одной функции

// Области видиомсти переменных - функция nestedFunction видит все переменные
// объявленные во всех функциях выше нее
// topLevelVariable - глобальная переменная доступна везде

var topLevelVariable = 'top level variable';

void main() {
  String variableInsideMain = 'variable inside main';

  void myFunction() {
    String variableInsideMyFunction = 'variable inside myFunction';
    print('Inside myFunction');

    void nestedFunction() {
      String variableInsideNestedFunction = 'variable inside nestedFunction';
      print('');
      print(topLevelVariable);
      print(variableInsideMain);
      print(variableInsideMyFunction);
      print('');
      print('Inside nestedFunction');
    }

    nestedFunction();
  }

  myFunction();
}
