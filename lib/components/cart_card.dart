import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hw_17/Models/product.dart';

class CartCard extends StatelessWidget {
  const CartCard({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(children: [
            Image(
              image: NetworkImage(product.imageUrl ?? ''),
            ),
            Row(
              children: [Text(product.productName)],
            ),
          ]),
        ),
      ],
    );
  }
}
