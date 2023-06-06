import 'package:flutter/material.dart';

import '../constants/spaces.dart';
import '../screens/product_page.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({
    super.key,
    required this.widget,
  });

  final ProductPage widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.product.name,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
              ),
              Text(
                "${widget.product.price} SR",
                style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 26,
                    color: Colors.blue),
              ),
            ],
          ),
          kVSpace8,
          const Divider(),
          kVSpace8,
          const Text(
            "Product details",
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 26,
            ),
          ),
          kVSpace16,
          Text(
            widget.product.description,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
              color: Colors.grey[700],
            ),
          ),
        ],
      ),
    );
  }
}
