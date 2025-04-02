late int global;

void main() {

  global = 10;
  print('Print global late int: $global');


  var pizza = Pizza().orgerPizza();
  // pizza.price = 20;
  print(pizza);
}

class Pizza {
  String name;
  final double price;

  Pizza()
      : name = 'Spring',
        price = 10.50;

  // Pizza(this.name, this.price);

  String orgerPizza() {
    print('Cooking pizza...');
    return 'Your Pizza: $name, price: $price is ready';
  }

  @override
  String toString() => 'Pizza: $name, price: $price';
}
