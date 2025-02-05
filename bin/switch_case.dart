// switch and case statement in dart

void main() {
  // switch case statement
  String grade = 'B';

  switch (grade) {
    case 'A':
      print('Excellent grade of A');
      break;
    case 'B':
      print('Good');
      break;
    case 'C':
      print('Fair');
      break;
    case 'D':
      print('Poor');
      break;
    default:
      print('Invalid grade');
  }
}
