void main() {
  Electronic laptop = Electronic(name: "Laptop", priceMap: {1: 1200.0});
  Clothing tshirt = Clothing(name: "T-Shirt", priceMap: {2: 25.0});
  BeautyItems perfume = BeautyItems(name: "Perfume", priceMap: {3: 50.0});
  DigitalProduct ebook = DigitalProduct(name: "E-Book", priceMap: {4: 15.0});

  laptop.applyDiscount(0.1);
  print(laptop);

  tshirt.findProduct(2);

  System inventorySystem = System(products: [laptop, tshirt, perfume, ebook]);
  double totalValue = inventorySystem.calculateTotal();
  print("Total Inventory Value: \$${totalValue.toStringAsFixed(2)}");
}

abstract class Product {
  String name;
  Map<int, double> priceMap;

  Product({required this.name, required this.priceMap});

  void applyDiscount(double discount) {
    priceMap.updateAll((key, value) => value - (value * discount));
  }

  void findProduct(int id) {
    if (priceMap.containsKey(id)) {
      print('Product found: $name, Price: ${priceMap[id]}');
    } else {
      print('Product not found');
    }
  }

  double calculateTotalInventoryValue() {
    double total = 0.0;
    for (var price in priceMap.values) {
      total += price;
    }
    return total;
  }

  @override
  String toString() {
    return "Product: $name, Prices: $priceMap";
  }
}

class Electronic extends Product {
  Electronic({required super.name, required super.priceMap});
}

class Clothing extends Product {
  Clothing({required super.name, required super.priceMap});
}

class BeautyItems extends Product {
  BeautyItems({required super.name, required super.priceMap});
}

class DigitalProduct extends Product {
  DigitalProduct({required super.name, required super.priceMap});
}

class System {
  List<Product> products;

  System({required this.products});

  double calculateTotal() {
    double total = 0.0;
    for (var product in products) {
      total += product.calculateTotalInventoryValue();
    }
    return total;
  }
}
