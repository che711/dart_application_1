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
  misha.whoIam();
  print('');

  misha.passText = '12345';
  print(misha.passText);
  print(misha.hidePass);

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

  final String _passText = 'pass123';
  String get passText => _passText;
  String get hidePass {
    final length = _passText.length;
    return '*' * length;
  }

  set passText(String text) {
    if (text.length < 6) {
      print('Password must have 6 or more characters');
      return;
    }
    _passText = text;
  }

  @override
  void whoIam() => print("I'm a student Athlet");
}
