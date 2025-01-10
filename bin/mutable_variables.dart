void main() {
  // const  - никогда не меняется
  const int meYearOfBirth = 1987;
  print(meYearOfBirth);

  // final - значение переменной устанавливается только один раз
  final hoursSinceMidnight = DateTime.now().hour;
  print(hoursSinceMidnight);
}
