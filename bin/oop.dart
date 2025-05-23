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

  // final someStudent = SomeStudent('User', 'Test');
  // // someStudent.grades.add(5);
  // // someStudent.getFullName();
  // // someStudent.name = 'Jonny';
  // // someStudent.surname = 'Snow';
  // someStudent.getFullName();
  print('');

  vasya.course = 'Flutter';
  misha.course = 'Dart';
  vasya.study();
  misha.study();
  print('');

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

mixin Learner {
  String? course;
  void study() => print('Course is $course');
}

class StudentSwimmer extends Student with Learner {
  StudentSwimmer(super.name, super.surname);

  @override
  void getFullName() {
    super.getFullName();
    grades.every((grade) => grade != 2)
        ? print('You can swim')
        : print("Can't swim");
  }
}

class StudentAthlet extends Student with Learner {
  StudentAthlet(super.name, super.surname);
  static const minPracticeTime = 1;
}

// class SomeStudent extends StudentSwimmer {
//   SomeStudent(super.name, super.surname);

//   @override
//   List<int> grades = [4];

//   @override
//   String name = 'MyName';

//   @override
//   String surname = 'MySurname';

//   @override
//   void getFullName() => print('$surname $name');
// }
