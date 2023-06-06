import 'package:flutter/material.dart';
import 'package:hw_16/Model/Product.dart';
import 'package:hw_16/Screens/details/components/descripton.dart';
import 'package:hw_16/Screens/details/components/profile_title_and_image.dart';

import 'add_to_cart.dart';

class body extends StatelessWidget {
  final Product product;
  const body({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Column(
                  children: [
                    const SizedBox(height: 350),
                    Description(product: product),
                    const SizedBox(height: 20),
                    AddToCart(product: product)
                  ],
                ),
                ProductTitleAndImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}
