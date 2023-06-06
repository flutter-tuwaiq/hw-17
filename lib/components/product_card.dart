import 'package:flutter/material.dart';
import 'package:hw_17/components/product_model.dart';
import 'package:image_card/image_card.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return FillImageCard(
      color: Color.fromARGB(55, 162, 220, 247),
      width: 400,
      heightImage: 180,
      imageProvider: AssetImage(product.imagePath.first),
      title: Text(
        product.name,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
      ),
      description: Text(
        "${product.price} SR",
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20, color: Colors.blue),
      ),
    );
  }
}

