// sound Null Safety
// Dart - типобезопасный язык (type-safe)

// В основе Null Safety лежит 3 принципа:
// 1. Non-nullabel by default
// 2. Fully sound - полная надежность
// 3. Incrementally adoptable - поэтапная миграция

void main() {
  int? age = 2; // can be nullable

  String name = 'Mark';
  print(name);
  print(age);
  print('');

  print(someValue(25));
  print(someValue(null));
  print('');

  int x;
  if (25 > 0) {
    x = 1;
  } else {
    x = -1;
  }

  print(x);
  print('');
}

int someValue(int? value) {
  // if (value == null) {
  //   return 0;
  // }
  return value ?? 0;
}

Never valueIsNotDefined() {
  throw ArgumentError('Value is not defined');
}
