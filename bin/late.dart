// Sound Null Safety

// Модификатор late
// 1. Late vars
// 2. lazy initialization
// 3. late final variables
late int global;

void main() {
  late var pizza = Pizza().printPizza();
  // pizza.price = 43;
  print(pizza);

  global = 1;
  print(global);
}

class Pizza {
  late int id;
  late String name;
  late final double price;

  // Pizza(this.id, this.name, this.price);
  Pizza() {
    id = 16;
    name = 'Spring';
    price = 45;
  }

  String printPizza() {
    print('Cooking pizza...');
    return 'Pizza ($id): $name, price: $price';
  }
}
