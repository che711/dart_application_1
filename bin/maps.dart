void main() {
  // map - это коллекция ключ-значение, где каждый ключ уникален
  // map - словарь в python
  print('');
  final Map<String, int> emptyMap = {};
  final emptyMap1 = <String, int>{};

  final emptySomething = {};
  final mySet = <String>{};

  final caloriesInFood = {
    'apple': 200,
    'pineapple': 150,
    'watermelon': 650,
  };
  final test = {
    1: 'one',
    2: 'two',
    3: 'three',
  };

  print(caloriesInFood);
  print(test);

  final caloriesInFood2 = {
    'apple': [200, 650],
    'pineapple': 150,
    'watermelon': 650,
  };
  print('caloriesInFood2: $caloriesInFood2');

  // Accessing Key-Value Pairs
  final numbersCaloriesInApple = caloriesInFood['apple'];
  print('numbersCaloriesInApple: $numbersCaloriesInApple');
  print("");
  print(numbersCaloriesInApple?.isEven);

  // Updating elements to a map
  caloriesInFood['pear'] = 90;
  print('caloriesInFood: $caloriesInFood');
  print(caloriesInFood["pear"]);

  // Removing elements from a map
  caloriesInFood.remove('apple');
  print(caloriesInFood);

  // accessing properties
  print(caloriesInFood.isEmpty);
  print(caloriesInFood.isNotEmpty);
  print(caloriesInFood.length);
  print(caloriesInFood.keys);
  print(caloriesInFood.values);

  // checking for Key or Value Existing
  print(caloriesInFood.containsKey('pear'));
  print(caloriesInFood.containsValue(1));

  // Looping over elements for a Map via forEach
  for (var key in caloriesInFood.keys) {
    print(caloriesInFood[key]);
  }
  print("");

  // Looping over elements for a Map via entries
  for (var entry in caloriesInFood.entries) {
    print('${entry.key}: ${entry.value}');
  }
}
