
import 'package:flutter/material.dart';

class ProductsEvaluation extends StatelessWidget {
  const ProductsEvaluation({super.key});

  @override
  Widget build(BuildContext context) {
    const colorStars = Color.fromARGB(255, 255, 191, 1);
    const StarTybe = Icons.star;
    return const Row(
      children: [
        Icon(StarTybe, color: colorStars),
        Icon(StarTybe, color: colorStars),
        Icon(StarTybe, color: colorStars),
        Icon(StarTybe, color: colorStars),
        Icon(StarTybe, color: colorStars),
      ],
    );
  }
}
