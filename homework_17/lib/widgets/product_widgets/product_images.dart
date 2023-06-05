import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import '../../models/product.dart';

class ProductImages extends StatelessWidget {
  const ProductImages({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      child: ImageSlideshow(
        children: [
          Image.asset(
            "directory/vega/${product.name} 1.jpg",
            fit: BoxFit.fill,
          ),
          Image.asset(
            "directory/vega/${product.name} 2.jpg",
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
