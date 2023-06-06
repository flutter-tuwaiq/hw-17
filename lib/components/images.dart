import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import '../screens/product_page.dart';

class Images extends StatelessWidget {
  const Images({
    super.key,
    required this.widget,
  });

  final ProductPage widget;

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      height: MediaQuery.of(context).size.height * 0.46,
      indicatorColor: Colors.white,
      indicatorRadius: 3,
      children: [
        for (final image in widget.product.imagePath)
          Image(image: AssetImage(image), fit: BoxFit.cover)
      ],
    );
  }
}
