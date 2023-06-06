import 'package:flutter/material.dart';

import 'brand.dart';

class ListOfBrand extends StatelessWidget {
  const ListOfBrand({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          Brand(imageOfBrand: 'images/foster-grant-logo-png-transparent.png'),
          SizedBox(width: 16),
          Brand(imageOfBrand: 'images/images.png'),
          SizedBox(width: 16),
          Brand(imageOfBrand: 'images/Untitled.png'),
          SizedBox(width: 16),
          Brand(imageOfBrand: 'images/LOGO.png'),
          SizedBox(width: 16),
        ],
      ),
    );
  }
}
