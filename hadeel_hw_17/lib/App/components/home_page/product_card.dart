import 'package:flutter/material.dart';
import 'package:hadeel_hw_17/App/models/product.dart';

import '../spaces.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.product,
  });

  final Product product;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 8, 0, 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title, // <-------- name
                    style: const TextStyle(
                      color: Colors.black54,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  height8,
                  Text(
                    product.briefDescription, // <-------- brief description
                    style: const TextStyle(
                      color: Colors.black38,
                      fontSize: 14,
                    ),
                  ),
                  height16,
                  Text(
                    product.price, // <-------- price
                    style: const TextStyle(
                      color: Color.fromRGBO(210, 170, 150, 1),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Image.asset(
                product.image, // <-------- image
                width: 130,
                height: 130,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
