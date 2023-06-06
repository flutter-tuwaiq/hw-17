import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../models/prodct_model.dart';

class Details extends StatelessWidget {
  final ProductModel product;
  const Details({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          product.title,
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 27, color: thirdColor),
        ),
        SizedBox(height: 16),
        Text(
          product.price,
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 27,
              color: Color.fromRGBO(188, 135, 0, 0.89)),
        ),
        SizedBox(height: 16),
        Text(
          product.description,
          style: TextStyle(
              fontWeight: FontWeight.w500, fontSize: 15, color: thirdColor),
        )
      ],
    );
  }
}
