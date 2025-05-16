// создание потока в Dart:
//   1. с помощью конструктора
//   2. с помощью асинхронного генератора
//   3. с помощью StreamController

import 'dart:async';

StreamSubscription<int>? subscription;

void main() async {
  await readStreamAsyncForLoop();
}

Future<void> readStreamAsyncForLoop() async {
  final stream = Stream.fromIterable([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);

  await for (var data in stream) {
    print('Получено: $data');
  }
}

void readStream() {
  final stream = Stream.periodic(Duration(seconds: 1), (tick) => tick);

  stream.listen((data) {
    print('Получено: $data');
  }, onDone: () {
    print('Все события завершены');
  }, onError: (Object error) {
    print(error);
  });

  Future.delayed(Duration(seconds: 5), () {
    print('Приостановка потока');
    subscription?.pause();
  });

  Future.delayed(Duration(seconds: 10), () {
    print('Возобновление потока');
    subscription?.resume();
  });

  Future.delayed(Duration(seconds: 15), () {
    print('Отписка от потока');
    subscription?.cancel();
  });
}
