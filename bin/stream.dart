// создание потока в Dart:
//   1. с помощью конструктора
//   2. с помощью асинхронного генератора
//   3. с помощью StreamController

import 'dart:async';

StreamSubscription<int>? subscription;

void main() {
  final stream = Stream.periodic(Duration(seconds: 1), (tick) => tick);

  stream.listen((data) {
    print('Получено: $data');
  });

  Future.delayed(Duration(seconds: 5), () {
    print('Отписка от потока');
    subscription?.cancel();
  });
}

