class Product {
  final String image, title, description;
  final int price, id;

  Product({
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    required this.id,
  });
}

List<Product> products = [
  Product(
    id: 1,
    image: "assets/images/pngwing.com (2).png",
    title: "Coffee",
    price: 16,
    description: 'The best Coffee on the world',
  ),
  Product(
    id: 2,
    image: "assets/images/—Pngtree—sweet tea material_118686.png",
    title: "Tea",
    price: 2,
    description: 'The best Tea on the world',
  ),
  Product(
    id: 3,
    image: "assets/images/download1-removebg-preview-1-1.png",
    title: "Coca Cola",
    price: 3,
    description: 'Do not drink this',
  ),
  Product(
    id: 4,
    image: "assets/images/pngwing.com.png",
    title: "Water",
    price: 1,
    description: 'It is Great for your health',
  ),
];
