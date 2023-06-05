import 'package:flutter/material.dart';

class BrandList extends StatelessWidget {
  const BrandList({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 54,
          width: 112,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
        ),
        Image.asset("assets/image2.png"),
      ],
    );
  }
}
