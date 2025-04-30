// Sound Null Safety

// ?[] - null-aware оператор доступа по индексу

void main() {
  Map<String, int> categories = {'kitchen': 1, 'bedroom': 2};
  print(categories);

  List<String?> nullableValues = [null, 'Warsaw', null, 'LA', 'NY'];
  List<String>? nullableList;
  print(nullableValues);

  print('');
  print(nullableList?[0]);

  print("");
  nullableValues[0] ??= 'SPB';
  print(nullableValues[0]);

  print("");
  String someStirng = nullableValues[2] ?? 'Vologda';
  print(someStirng);
}
