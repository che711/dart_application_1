// ignore_for_file: unnecessary_null_comparison, dead_code
void main() {
  /* в основе null-safety лежат два принципа:
  1. все переменные по умолчанию не могут быть null (non-nullable переменные)
  2. Fully sound. полная надежность. Dart гарантирует, что переменные, имеющие тип non-nullable,
  никогда не смогут принимать значение null (тем самым исключается падение приложения на null)*/
   
  String name='Andrey';
  print(name.toUpperCase());
}
