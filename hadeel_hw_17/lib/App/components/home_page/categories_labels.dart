import 'package:flutter/material.dart';

class CategoriesLabels extends StatelessWidget {
  const CategoriesLabels({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 32,
          width: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromRGBO(138, 170, 170, 1),
          ),
          child: const Center(
            child: Text(
              "Lamps",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
        const Text(
          "Frames",
          style:
              TextStyle(color: Color.fromRGBO(69, 100, 100, 1), fontSize: 18),
        ),
        const Text(
          "Chairs",
          style:
              TextStyle(color: Color.fromRGBO(69, 100, 100, 1), fontSize: 18),
        ),
        const Text(
          "Vases",
          style:
              TextStyle(color: Color.fromRGBO(69, 100, 100, 1), fontSize: 18),
        )
      ],
    );
  }
}
