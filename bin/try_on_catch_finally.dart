void main() {
  // Exception handling
  // Error

  try {
    var list = [double.parse('3.14'), '3', 3];
    print('Result: $list');
  } on RangeError {
    print('The error');
  } catch (e, s) {
    print('Stack trace: $s'); // added stack trace
    print('Error: $e');
  } finally {
    print('This is Finally and is always executed');
  }

  try {
    print(factorial(-5));
  } catch (e) {
    print(e);
  } finally {
    print('some code');
  }
}

class FactorialExeptions implements Exception {
  String errorMessage() {
    return 'Number must be greater than or equal to 0';
  }
}

int factorial(int n) {
  if (n < 1) throw FactorialExeptions();
  int fact = 1;
  for (int i = 2; i <= n; i++) {
    fact *= i;
  }
  return fact;
}
