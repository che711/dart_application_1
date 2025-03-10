// main() - точка входа в программу и тоже функция

void main() {
  // // Используем код в одном месте
  // var circleArea = 3.14 * 5 * 5;

  // // Используем кода в дргуом месте
  // var circleArea = 3.14 * 5 * 5;

  String myCircleArea = circleArea(5);
  print(myCircleArea);

  String myPerson = person(
    age: 37,
    firstName: 'Andrew',
    lastName: 'Che',
  );
  print(myPerson);
}

// Анатомия функции
String circleArea(int radius) {
  // String circleArea(int radius) - это сигнатура функции
  // тело функции
  return 'Circle Area: ${3.14 * radius * radius}';
}

// Типы функций
//  1.Предопределенные функции (встроенные: print, main, etc)
//  2.Пользовательские функции (то что мы создаем сами)
//      - Функции без параметра и без возвращаемого типа:
//           void test() {
//             print('Hello, World');
//           }
//      - Функции с параметрами и без возвращаемого типа:
//           void cube(int num) {
//            print(num * num * num);
//          }
//      - Функции без параметров, но с возвращаемым типом:
//            int sum(){
//             int a = 10, b = 20, c;
//            c = a + b;
//           return c;
//         }
//      - Функции с параметрами и с возвращаемым типом:
//           double area(int r) {
//             double a;
//             a = 3.14 * r * r;
//             return a;
//          }

String person({
  required String firstName,
  String? lastName,
  int? age,
}) {
// String person(String firstName, String lastName, [int? age=0]) {

  if (age == null) {
    return 'Hello, $firstName $lastName';
  }
  return 'Hello, $firstName $lastName, your age is $age';
}


//                обязательные    необязательные
//              +---------------------+-----------------+
// позиционные  |     f(int x)        |    f([int x])   | 
//              +---------------------+-----------------+
// именнованные | f({required int x}) |    f({int x})   | 
//              +---------------------+-----------------+

