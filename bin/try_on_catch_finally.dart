void main() {
  // Exception handling
  // Error

  try {
    var list = [double.parse('3,14'), '3', 3];
    print ('Result: ${list[7]}');
  } on RangeError {
    print('The error');
  } catch (e) {
    print('Error: $e');
  }finally {
    print('This is Finally and is always executed');
  }
  


}
