late int tweets;

void main() {
  // declare a variable
  var number = 10;
  print(number);
  number = 20;
  print(number);

  // declare a variable after the initialization
  int like; // the same int like = null;
  like = 324;
  print(like);

  // declare a variable with a late
  tweets = 100;
  print(tweets);

  // nullable variable
  int? comment; // не требуют инициализации перед доступом
  print(comment);

  print('test msg');

  String? test_var;
  print(test_var);
}
