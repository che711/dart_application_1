void main() {
  print('');

  // Класс Future<T>, где Т - тип возвращаемого результата
  final myFuture = Future.delayed(Duration(seconds: 3), () {
    print('Future начал выполняться');
    // return 'Данные успешно загружены';
    throw 'Сервер не отвечает';
  });

  myFuture
      .then((result) => print('Результат: $result'))
      .catchError(
        (error) => print('Ошибка: $error'),
        test: (error) => error.runtimeType == String,
      )
      .whenComplete(() => print('Future завершил свою работу'));

  print(myFuture);

  firstName().then((firstName(){
    return lastName().then((lastName){
      var fullName = '$firstName $lastName';
      return sayHello(fullName);
    });
  }).then((value) => print(value));

  print('Завершение работы функции main()');
}

Future<String> firstName() {
  return Future.value('Andrew');
}

Future<String> lastName() {
  return Future.value('Che');
}

Future<String> sayHello (String name) {
  return Future.value('Hello, $name');
}