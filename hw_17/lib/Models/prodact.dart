class Prodact {
  final String Prodactname;
  final String? imageUrl;
  final String? ProdactPrice;
  final String? description;

  const Prodact({
    required this.Prodactname,
    required this.ProdactPrice,
    required this.imageUrl,
    this.description,
  });
}

