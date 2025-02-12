void main() {
    var fruits = ['apples', 'oranges', 'bananas', 'watermelon']; // все в квадратных скобках литералом списка
    
    /**
    * мы не можем изменить переменную fruits через final (указывается только один раз), но можем изменить содержимое списка
    * final fruits = ['apples', 'oranges', 'bananas', 'watermelon']; // все в квадратных скобках литералом списка
    */
    
    print(fruits);
    fruits = [];
    print(fruits);
    fruits = ['orange', 'pears', 'coconaut', 'melon'];
    print(fruits);
}
