void main() {
  var pizza = Pizza();
  print(pizza);
}

class Pizza {
  String name;
  double price;

  Pizza()
      : name = 'Spring',
        price = 10.50;

  @override
  String toString() => 'Pizza: $name, price: $price';
}
