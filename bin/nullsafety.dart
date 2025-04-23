// sound Null Safety
// Dart - типобезопасный язык (type-safe)

// В основе Null Safety лежит 3 принципа:
// 1. Non-nullabel by default 
// 2. Fully sound - полная надежность
// 3. Incrementally adoptable - поэтапная миграция

void main() {
  int? age = 2;  // can be nullable 

  String name = 'Mark';
  print(name);
  print(age);
}
