import 'package:flutter/material.dart';

import '../../models/product.dart';
import 'table_text.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const TableText(message: "Product Name:"),
              TableText(message: "${product.name} T-shirt"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const TableText(message: "Product Price:"),
              TableText(message: "${product.price} SR"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const TableText(message: "Product Rating:"),
              Row(
                children: [
                  for (var i = 0; i < 5; i++)
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
