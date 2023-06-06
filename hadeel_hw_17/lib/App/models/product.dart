class Product {
  final String title;
  final String image;
  final String price;
  final String briefDescription;
  final String description;
  final Map<String, String> details;

  Product({
    required this.title,
    required this.image,
    required this.price,
    required this.briefDescription,
    required this.description,
    required this.details,
  });

  get getPrice {
    return int.parse(price);
  }
}
