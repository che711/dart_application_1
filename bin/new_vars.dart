void main() {
  print(''); // Пустая строка
  // Numbers (num -> int (целые числи) и double (числа с плавающей точкой))
  double myDouble = 10.5;
  double myDouble2 = 10;

  int myInt = 10;

  print('myDouble: $myDouble, myDouble2: $myDouble2');
  print('myINt: $myInt');
  print(''); // Пустая строка

  // String используется кодировка UTF-16 и это единственный тип который пошется с заглавной буквы
  String myString = 'Hello, Dart!';
  String myName = "andrew";
  String question = 'What\'s your name?'; // Экранирование символов через \
  String myFullName = 'Andrew' ' ' 'Che'; // Конкатенация строк
  String myFio = '''
  andrew
  Che
  '''; // Многострочная строка
  String personInfo =
      'I\'m ${myName.toUpperCase()} and my full name $myFio'; // Интерполяция строк

  print(myName);
  print(myString);
  print(question);
  print(myFullName);
  print(myFio);
  print(personInfo);
  print(
      'Первый элемент строки: ${personInfo[0]}'); // Обращение к символу по индексу
  print(''); // Пустая строка

  // Boolean
  var a = true;
  var b = false;

  print('a: $a, b: $b');
  print(''); // Пустая строка
  // Rune - последовательность символов UTF-32.
  // выдает уникальное числовое значение для каждого символа
  Runes hello = Runes('Hello, Dart!');
  // \uXXXX - где XXXX - это код символа в шестнадцатеричной системе
  var input = Runes('\u2665 \u{1f600}');

  print(String.fromCharCodes(input));
  print(hello);
  print(''); // Пустая строка

  //Symmbol
  var mySymbol = #myApi;

  print(mySymbol);
print('');
// Null.
/* Dart - типобезопастный язык. Он гарантируе что переменная не будет null
если не указано иное. 
Рекомендуется часто делать провекрки на Null*/

int age;
age = 4;

int? age2;  // указание на то что переменная может быть null
age2 = null;

print(age);
print(age2);
  // List, Set, Map
}
