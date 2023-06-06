import 'package:flutter/material.dart';

import '../Constents/spaces.dart';

class CategoryType extends StatelessWidget {
  const CategoryType({
    super.key,
    required this.imagePath,
    required this.type,
  });
  final String imagePath;
  final String type;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      elevation: 8,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      borderRadius: BorderRadius.circular(3014),
      child: InkWell(
        splashColor: Colors.amber.shade600,
        onTap: () {},
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image(
              image: AssetImage(imagePath),
              height: 50,
              width: 50,
              fit: BoxFit.cover,
            ),
            kHSpace16,
            Text(
              type,
              style: const TextStyle(fontSize: 14),
            ),
            kHSpace16,
          ],
        ),
      ),
    );
  }
}
