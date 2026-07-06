//Author : Manar Elhabbal

class Food {
  String name;
  double price, discount;

  Food(this.name, this.price, {this.discount = 0.0});

  double calculatePrice() {
    return price * (1.0 - discount);
  }
}

class Pizza extends Food {
  String size;
  List<String> extraToppings;
  static const double toppingPrice = 1.50;

  Pizza({
    required String name,
    required double price,
    required this.size,
    List<String> toppings = const [],
    double discount = 0.0,
  }) : this.extraToppings = toppings,
       super(name, price, discount: discount);

  @override
  double calculatePrice() {
    double sizeMultiplier = 1.0;
    if (this.size.toLowerCase() == 'medium') sizeMultiplier = 1.2;
    if (this.size.toLowerCase() == 'large') sizeMultiplier = 1.4;

    double adjustedBase = this.price * sizeMultiplier;
    double toppingsCost = this.extraToppings.length * toppingPrice;

    return (adjustedBase * (1.0 - this.discount)) + toppingsCost;
  }
}

class Burger extends Food {
  bool doublePatty;
  List<String> extraToppings;
  static const double toppingPrice = 1.50;

  Burger({
    required String name,
    required double price,
    this.doublePatty = false,
    List<String> toppings = const [],
    double discount = 0.0,
  }) : this.extraToppings = toppings,
       super(name, price, discount: discount);

  @override
  double calculatePrice() {
    double adjustedBase = this.price;
    if (this.doublePatty) {
      adjustedBase += 3.00;
    }
    double toppingsCost = this.extraToppings.length * toppingPrice;

    return (adjustedBase * (1.0 - this.discount)) + toppingsCost;
  }
}

class Restaurant {
  static int orders = 0;
  static const String restaurantName = "My Restaurant";

  List<Food> menu = [];

  Restaurant(this.menu);

  Iterable<String> menuItems() sync* {
    for (var item in this.menu) {
      yield "${item.name} - \$${item.price.toStringAsFixed(2)}";
    }
  }

  void displayMenu() {
    print("=== Welcome to $restaurantName ===");
    print("--- MENU ---");
    for (var menuItem in menuItems()) {
      print(menuItem);
    }
    print("============\n");
  }

  void printOrder(List<Food> order) {
    orders++;
    print("=== ORDER REPORT (Order #${orders}) ===");
    double grandTotal = 0.0;

    for (var item in order) {
      double itemPrice = item.calculatePrice();
      grandTotal += itemPrice;

      print("- ${item.name} (${item.runtimeType})");
      if (item is Pizza) {
        print("  Size: ${item.size}");
        if (item.extraToppings.isNotEmpty) {
          print("  Extras: ${item.extraToppings.join(', ')}");
        }
      }
      if (item is Burger) {
        if (item.doublePatty) {
          print("  Double Patty: Yes");
        }
        if (item.extraToppings.isNotEmpty) {
          print("  Extras: ${item.extraToppings.join(', ')}");
        }
      }
      if (item.discount > 0) {
        print("  Discount Applied: ${(item.discount * 100).toInt()}%");
      }
      print("  Price: \$${itemPrice.toStringAsFixed(2)}");
    }
    print("---------------------------------------");
    print("GRAND TOTAL: \$${grandTotal.toStringAsFixed(2)}");
    print("=======================================\n");
  }
}

void main() {
  List<Food> restaurantMenu = [
    Pizza(name: "Margherita Pizza", price: 10.00, size: "Medium"),
    Pizza(name: "Pepperoni Pizza", price: 12.00, size: "Large"),
    Burger(name: "Classic Cheeseburger", price: 8.00),
    Burger(name: "Bacon Double Cheeseburger", price: 9.50, doublePatty: true),
  ];

  Restaurant res = Restaurant(restaurantMenu);
  res.displayMenu();

  List<Food> order1 = [
    Pizza(
      name: "Veggie Supreme Pizza",
      price: 11.00,
      size: "Large",
      toppings: ["Mushrooms", "Olives", "Green Peppers"],
      discount: 0.10,
    ),
    Burger(
      name: "Spicy Jalapeno Burger",
      price: 8.50,
      doublePatty: true,
      toppings: ["Extra Cheese", "Jalapenos"],
    ),
  ];

  res.printOrder(order1);

  List<Food> order2 = [
    Pizza(name: "BBQ Chicken Pizza", price: 13.00, size: "Medium"),
    Burger(name: "Vegan Burger", price: 7.50, discount: 0.20),
  ];

  res.printOrder(order2);
  print("Total orders processed today: ${Restaurant.orders}");
}

/*Task 3 —Restaurant System
Create classes:
* Restaurant
* Food
* Pizza
* Burger
Requirements:
* Use inheritance
* Use constructors
* Use functions
* Use optional/named parameters
* Use static variable
* Use this keyword
* Use at least one generator function
Example:
Iterable<String> menuItems() sync*
Add:
* displayMenu()
* calculatePrice()
* printOrder()
*/
