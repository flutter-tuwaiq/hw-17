import 'package:flutter/material.dart';

class ProductTitleAndPrice extends StatelessWidget {
  const ProductTitleAndPrice({
    super.key,
    required this.title,
    required this.price,
  });
  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 60,
        width: 300,
        padding: EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(116, 150, 150, 1),
              ),
            ),
            Text(
              price,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(210, 170, 150, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
