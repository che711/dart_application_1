void main() {
  // map    1 2 3 4 5 6 => 1 4 9 16 25 36
  //where   1 2 3 4 5 6 => 1 3 5
  //reduce  1 2 3 4 5 6 => 21

  const listNumbers = [1, 2, 3, 4, 5];
  listNumbers.forEach((int number) {
    print(2 * number);
  });
}
