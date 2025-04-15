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
  final vasya = StudentSwimmer('Vasya', 'Sidorov');

  konstantin.gitFullName();
  ivan.grades.add(5);
  ivan.gitFullName();

  vasya.grades.add(3);
  vasya.gitFullName();
}

class Person {
  String name;
  String surname;

  Person(this.name, this.surname);
  void gitFullName() => print('$name $surname');
}

class Student extends Person {
  List<int> grades = [];

  Student(super.name, super.surname);

  @override
  void gitFullName() {
    super.gitFullName();
    print('Student has next grabes: $grades');
  }
}

class StudentSwimmer extends Student {
  StudentSwimmer(super.name, super.surname);

  @override
  void gitFullName() {
    super.gitFullName();
    grades.every((grade) => grade != 2)
        ? print('You can swim')
        : print("Can't swim");
  }
}
