import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      height: 300,
      width: 300,
      indicatorRadius: 0,
      indicatorColor: Color.fromARGB(255, 70, 119, 106),
      onPageChanged: (value) {
        debugPrint('Page changed: $value');
      },
      autoPlayInterval: 3000,
      isLoop: true,
      children: [
        Image.asset(
          image,
          fit: BoxFit.contain,
        ),
        Image.asset(
          'lib/App/assets/images/pic1_2.png',
          fit: BoxFit.contain,
        ),
        Image.asset(
          'lib/App/assets/images/pic1_3.png',
          fit: BoxFit.contain,
        ),
      ],
    );
  }
}
