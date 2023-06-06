import 'package:flutter/material.dart';

import '../../../Model/Product.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Text(
        product.description,
        style: const TextStyle(height: 1.5, fontSize: 36),
      ),
    );
  }
}
