void main() {
  print('');

  // Класс Future<T>, где Т - тип возвращаемого результата
  Future.delayed(Duration(seconds: 3), () {
    print('Future начал выполняться');
    return 'Данные успешно загружены';
  });
  print('Завершение работы функции main()');
}
