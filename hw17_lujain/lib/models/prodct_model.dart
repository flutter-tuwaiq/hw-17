class ProductModel {
  final String image, title, description, price;
  ProductModel(
      {required this.image,
      required this.title,
      required this.price,
      required this.description});
}

List<ProductModel> products = [
  ProductModel(
      title: "sunglasses",
      price: '\$233.4',
      description: dummyText,
      image: "images/charlesdeluvio-1-nx1QR5dTE-unsplash.jpg"),
  ProductModel(
      title: "blue light",
      price: "\$293.4",
      description: dummyText,
      image: "images/jocelyn-morales-Mv7kokwzIMw-unsplash.jpg"),
  ProductModel(
      title: "blue light",
      price: "\$93.4",
      description: dummyText,
      image: "images/lensabl-0GfPlommtxM-unsplash.jpg"),
  ProductModel(
      title: "blue light",
      price: "\$233.4",
      description: dummyText,
      image: "images/thiago-carlos-machado-oNXGsD7Ibsk-unsplash.jpg")
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
