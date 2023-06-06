import 'package:flutter/material.dart';

import '../spaces.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    super.key,
    required this.description,
    required this.details,
  });
  final String description;
  final Map<String, String> details;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Description",
          style: TextStyle(
              color: Color.fromRGBO(116, 150, 150, 1),
              fontSize: 20,
              fontWeight: FontWeight.w500),
        ),
        height16,
        Text(
          description,
          style: const TextStyle(
            color: Color.fromRGBO(100, 100, 100, 1),
          ),
        ),
        height16,
        const Text(
          "Details",
          style: TextStyle(
              color: Color.fromRGBO(116, 150, 150, 1),
              fontSize: 20,
              fontWeight: FontWeight.w500),
        ),
        height16,
        Text(
          "Material: ${details["Material"]!}",
          style: const TextStyle(
            color: Color.fromRGBO(100, 100, 100, 1),
          ),
        ),
        Text(
          "Light source: ${details["Light source"]!}",
          style: const TextStyle(
            color: Color.fromRGBO(100, 100, 100, 1),
          ),
        ),
        Text(
          "Power: ${details["Power"]!}",
          style: const TextStyle(
            color: Color.fromRGBO(100, 100, 100, 1),
          ),
        ),
      ],
    );
  }
}
