import 'package:flutter/material.dart';

class ImagesOfBrand extends StatelessWidget {
  ImagesOfBrand({super.key, required this.ImageOfBrand});
  String ImageOfBrand;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 90,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Image(image: NetworkImage(ImageOfBrand)),
    );
  }
}
