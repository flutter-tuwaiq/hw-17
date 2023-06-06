import 'package:flutter/material.dart';

import '../../../Model/Product.dart';

class ProductTitleAndImage extends StatelessWidget {
  const ProductTitleAndImage({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Drinks",
            style: TextStyle(color: Color.fromARGB(255, 110, 108, 105)),
          ),
          Text(
            product.title,
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                        text: "Price\n", style: TextStyle(color: Colors.black)),
                    TextSpan(
                      text: "\$${product.price}",
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 36,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Image.asset(
                  product.image,
                  fit: BoxFit.fill,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
