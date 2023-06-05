import 'package:flutter/material.dart';
import 'package:hadeel_hw_17/App/models/product.dart';

import '../components/product_page/product_appbar.dart';
import '../components/product_page/product_background_design.dart';
import '../components/product_page/product_bottom_bar.dart';
import '../components/product_page/product_details.dart';
import '../components/product_page/product_image.dart';
import '../components/product_page/product_name_price.dart';
import '../components/spaces.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({
    super.key,
    required this.product,
  });
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: ProductBottomBar(product: product), // <--- Add to cart
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const ProductBackgroundDesign(), // <--- background design
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 48, 32, 32),
              child: Column(
                // ----- all details of product ------

                children: [
                  height16,
                  ProductAppBar(product: product), // <--- app bar
                  height24,
                  ProductImage(image: product.image), // <--- image
                  height24,
                  ProductTitleAndPrice(
                    // <--- title and price
                    title: product.title,
                    price: product.price,
                  ),
                  height24,
                  ProductDetails(
                      description: product.description,
                      details: product.details), // <--- details
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
