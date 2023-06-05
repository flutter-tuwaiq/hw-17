import 'package:flutter/material.dart';

import '../models/product.dart';


class ProductCart extends StatelessWidget {
  const ProductCart({super.key, required this.produc});
  final Produc produc;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(68, 24, 0, 0),
      child: Stack(
        children: [
          Container(
            height: 204,
            width: 258,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(62, 24, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(produc.imagePath),
                const SizedBox(
                  height: 8,
                ),
                Text(produc.name),
                Text(
                  produc.price,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 192, 127, 8),
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
