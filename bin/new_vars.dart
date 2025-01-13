
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
  String myName = "Andrew";
  String question = 'What\'s your name?'; // Экранирование символов через \
  String myFullName = 'Andrew' + ' ' + 'Che'; // Конкатенация строк
  String myFio = '''
  Andrew
  Che
  '''; // Многострочная строка

  print(myName);
  print(myString);
  print(question);
  print(myFullName);
  print(myFio);
  print(''); // Пустая строка

  // Boolean
  var a = true;
  var b = false;

  print('a: $a, b: $b');

  //Symmbol

  // Null

  //List, Set, Map
}
