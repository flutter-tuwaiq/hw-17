import 'package:flutter/material.dart';

class ProductBackgroundDesign extends StatelessWidget {
  const ProductBackgroundDesign({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 370,
        ),
        Container(
          // <--- back rectangle design
          height: MediaQuery.of(context).size.height * 0.6,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color.fromARGB(255, 243, 234, 228),
          ),
        ),
      ],
    );
  }
}

//Color.fromRGBO(210, 170, 150, 1),