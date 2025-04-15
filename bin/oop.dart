// Дерево наследования
// Типы наследования: простое, множественное, многоуровневое, иерархическое
// Простое наследование - это когда один класс наследует от другого класса (ClassA -> ClassB)
// Многоуровневое наследование - это когда один класс наследует от другого класса, который сам наследует от другого класса (ClassA -> ClassB -> ClassC)
// Иерархическое наследование - это когда один класс наследует от другого класса, который сам наследует от нескольких классов (ClassA -> ClassС, ClassA)
// Множественное наследование - это когда один класс наследует от нескольких классов (ClassA -> ClassB + ClassC)

void main() {
  final konstantin = Person('John', 'Doe');
  final ivan = Student(
    'Ivan',
    'Doe',
  );
  konstantin.gitFullName();
  ivan.grabed.add(5);
  ivan.gitFullName();

}

class Person {
  String name;
  String surname;

  Person(this.name, this.surname);
  void gitFullName() => print('$name $surname');
}

class Student extends Person {
  List<int> grabed = [];

  Student(super.name, super.surname);

  @override
  void gitFullName() {
    super.gitFullName();
    print('Student has next grabes: $grabed');
  }
}
