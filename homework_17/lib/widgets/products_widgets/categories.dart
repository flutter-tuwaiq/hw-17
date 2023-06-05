import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  Categories({
    super.key,
  });

  final List categories = [
    "all",
    "T-shirts",
    "Pants",
    "Hoodies",
    "Shorts",
    "Caps",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Text(
            "Categories",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (final category in categories)
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      category,
                      style: const TextStyle(fontSize: 25),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
