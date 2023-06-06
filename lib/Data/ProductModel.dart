// ignore_for_file: file_names

class Product {
  final String name;
  final String description;
  final String imageUrl;
  int? productCount = 0;

  Product(
      {this.productCount,
      required this.name,
      required this.description,
      required this.imageUrl});

  factory Product.fromJson({required Map json}) {
    return Product(
      name: json["name"],
      description: json["description"],
      imageUrl: json["imageUrl"],
      productCount: json["productCount"],
    );
  }
  setProductCount() {
    productCount = (productCount! + 1);
  }

  static List<Product> cart = [];
}
