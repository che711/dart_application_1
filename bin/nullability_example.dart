// ignore_for_file: unnecessary_null_comparison, dead_code
void main() {
  /* в основе null-safety лежат два принципа:
  1. все переменные по умолчанию не могут быть null (non-nullable переменные)
  2. Fully sound. полная надежность. Dart гарантирует, что переменные, имеющие тип non-nullable,
  никогда не смогут принимать значение null (тем самым исключается падение приложения на null)*/

  String name = 'Test_Andrey';
  print(name.toUpperCase());
  print('');

  String? name2; // String? - nullable переменная (String? -> String)

  // Flow Ananlysis. Type promotion:
  name2 = 'andrew';

  if (name2 == null) return print('Unknown name');
  print(name2.toUpperCase());

  // Flow analisys: Definite Assignment
  String result;
  if (DateTime.now().hour < 12) {
    result = 'Good Morning';
  } else {
    result = 'Good Afternoon';
  }
  print(result);
  
  print('');
  print('Блок кода с операторами ?? и ??= :');

  //null-aware operator. ?? - называется if-null operator
  String? name3;
  name3 = 'not_null';
  print(name3 ?? 'Unknown name');

  //  ??= - это null-aware assignment operator
  print(name3 ??= 'test_msg');
}
