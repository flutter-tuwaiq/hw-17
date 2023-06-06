import 'package:flutter/material.dart';
import 'package:hw_17/components/product_card.dart';
import 'package:hw_17/components/products.dart';
import 'package:hw_17/extenstion/context.dart';

import '../constants/spaces.dart';
import '../screens/product_page.dart';

class ProductCardsBuilder extends StatelessWidget {
  const ProductCardsBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.separated(
          itemCount: Products.products.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                context
                    .pushPage(ProductPage(product: Products.products[index]));
              },
              child: ProductCard(product: Products.products[index]),
            );
          },
          separatorBuilder: (context, index) {
            return kVSpace16;
          },
        ),
      ),
    );
  }
}
