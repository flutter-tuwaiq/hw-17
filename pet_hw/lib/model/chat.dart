class Chat {
 

  final String name;
  final String? imageUrl;
  final num price;



const Chat({
    required this.name,
    required this.price,
    this.imageUrl,
  });
}