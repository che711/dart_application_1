// Дерево наследования
// Типы наследования: простое, множественное, многоуровневое, иерархическое
// Простое наследование - это когда один класс наследует от другого класса (ClassA -> ClassB)
// Многоуровневое наследование - это когда один класс наследует от другого класса, который сам наследует от другого класса (ClassA -> ClassB -> ClassC)
// Иерархическое наследование - это когда один класс наследует от другого класса, который сам наследует от нескольких классов (ClassA -> ClassС, ClassA)
// Множественное наследование - это когда один класс наследует от нескольких классов (ClassA -> ClassB + ClassC)

void main() {
  final konstantin = Person('John', 'Doe');
  final ivan = Student('Ivan', 'Doe');
  final vasya = StudentSwimmer('Vasya', 'Sidorov');
  final misha = StudentAthlet('Misha', 'Ivanov');

  konstantin.getFullName();
  ivan.grades.add(5);
  ivan.getFullName();

  vasya.grades.add(3);
  vasya.getFullName();
  misha.getFullName();
}

class Person {
  String name;
  String surname;

  Person(this.name, this.surname);
  void getFullName() => print('$name $surname');
}

class Student extends Person {
  List<int> grades = [];

  Student(super.name, super.surname);

  @override
  void getFullName() {
    super.getFullName();
    print('Student has next grabes: $grades');
  }
}

class StudentSwimmer extends Student {
  StudentSwimmer(super.name, super.surname);

  @override
  void getFullName() {
    super.getFullName();
    grades.every((grade) => grade != 2)
        ? print('You can swim')
        : print("Can't swim");
  }
}

class StudentAthlet extends Student {
  StudentAthlet(super.name, super.surname);
  static const minPracticeTime = 1;
}
