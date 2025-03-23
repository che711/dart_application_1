void main() {
  // Exception handling
  // Error

  try {
    var list = [double.parse('3,14'), '3', 3];
    print('Result: $list');
  } on RangeError {
    print('The error');
  } catch (e, s) {
    print('Stack trace: $s');  // added stack trace
    print('Error: $e');
  } finally {
    print('This is Finally and is always executed');
  }
}
