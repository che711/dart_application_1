class SquaresIterator implements Iterator<int> {
  int _index = 0;

  @override
  int get current => _index * _index;

  bool moveNext() {
    _index++;
    return _index <=100;
  }
}