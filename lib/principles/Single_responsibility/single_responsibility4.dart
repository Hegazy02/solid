//Wrong Single Responsibility

class Item {
  final String code;
  final double price;
  final double quantity;
  Item(this.code, this.price, this.quantity);
}

class Stock {
  static List<Item> items = [
    Item('01', 20, 3),
    Item('02', 110, 7),
    Item('05', 80, 10),
  ];
}

class ShoppingCart {
  List<Item> cartItems = [];
  removeFromCart(Item item) {
    if (cartItems.contains(item)) {
      cartItems.remove(item);
    }
  }

  add(Item item) {
    var quantityInStock = Stock.items
        .where((element) => element.code == item.code)
        .toList()
        .length;
    if (quantityInStock >= item.quantity) {
      cartItems.add(item);
      return true;
    } else {
      return false;
    }
  }

  getItemsCount() {
    double count = 0;
    for (Item element in cartItems) {
      count = count + element.quantity;
    }
    return count;
  }

  createInvoice() {
    //calc total price
    double total = 0;
    for (Item element in cartItems) {
      total = total + element.price;
    }
    // Get customer data
    // Save to DB
    // Print invoice
    // Send invoice to customer email
  }
}

// The right way

class Item2 {
  final String code;
  final double price;
  final double quantity;
  Item2(this.code, this.price, this.quantity);
}

class Stock2 {
  static List<Item> items = [
    Item('01', 20, 3),
    Item('02', 110, 7),
    Item('05', 80, 10),
  ];
  static getQuantityInStock(Item2 item2) {
    return items.where((element) => element.code == item2.code).toList().length;
  }
}

class ShoppingCart2 {
  List<Item2> cartItems = [];
  removeFromCart(Item item) {
    if (cartItems.contains(item)) {
      cartItems.remove(item);
    }
  }

  add(Item2 item2) {
    var quantityInStock = Stock2.getQuantityInStock(item2);
    if (quantityInStock >= item2.quantity) {
      cartItems.add(item2);
      return true;
    } else {
      return false;
    }
  }

  getItemsCount() {
    double count = 0;
    for (Item2 element in cartItems) {
      count = count + element.quantity;
    }
    return count;
  }
}

class SalesInvoice {
  static createInvoice(var cartItems) {
    //calc total price
    double total = TotalPrice.getTotalPrice(cartItems);
    // Get customer data
    //fun
    // Save to DB
    //fun
    // Print invoice
    //fun
    // Send invoice to customer email
    //fun
  }
}

class TotalPrice {
  static getTotalPrice(var cartItems) {
    double total = 0;
    for (Item2 element in cartItems) {
      total = total + element.price;
    }
    return total;
  }
}
