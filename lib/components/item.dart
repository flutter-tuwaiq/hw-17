import 'package:flutter/material.dart';
import 'package:hw_17/components/product_model.dart';

import '../constants/spaces.dart';

class Item extends StatelessWidget {
  final Product product;
  final Function() delete;

  const Item({
    super.key,
    required this.product,
    required this.delete,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.black, width: 3),
        color: Colors.white,
      ),
      width: double.infinity,
      height: 110,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: CircleAvatar(
                radius: 55,
                backgroundImage: AssetImage(
                  product.imagePath.first,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                  kVSpace16,
                  Text(
                    "${product.price} SR",
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue),
                  ),
                ],
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                // Cart.carts.remove(product);
                // // setState(() {});
                delete.call();
              },
              child: const Icon(
                size: 44,
                Icons.remove_circle_outline,
                color: Colors.red,
              ),
            ),
            kHSpace8
          ],
        ),
      ),
    );
  }
}
