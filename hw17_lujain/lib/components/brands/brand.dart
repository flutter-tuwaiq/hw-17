import 'package:flutter/material.dart';

class Brand extends StatelessWidget {
  const Brand({super.key, required this.imageOfBrand});

  final String imageOfBrand;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 112.55,
      height: 63,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        color: Colors.white,
      ),
      child: Center(
        child: Image.asset(
          imageOfBrand,
          width: 93,
          height: 52,
        ),
      ),
    );
  }
}
