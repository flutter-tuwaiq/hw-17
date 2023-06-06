import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:glassmorphism/glassmorphism.dart';

import '../constants/colors.dart';
import '../models/prodct_model.dart';

class ProductCard extends StatelessWidget {
  final ProductModel products;
  final Function() press;
  const ProductCard({
    Key? key,
    required this.products,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: [
          Expanded(
            child: GlassmorphicContainer(
              width: 164,
              height: 229,
              borderRadius: 20,
              linearGradient: LinearGradient(
                  colors: [Colors.white, Colors.white.withOpacity(0.5)],
                  begin: Alignment.topLeft),
              border: 1,
              blur: 16,
              borderGradient: LinearGradient(colors: [
                Colors.white24.withOpacity(0.5),
                Colors.white70.withOpacity(0.5)
              ]),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      products.image,
                      width: 121,
                      height: 118,
                    ),
                    Text(products.title,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12.8581,
                            color: thirdColor)),
                    Text(
                      products.price,
                      style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color.fromRGBO(188, 135, 0, 0.89)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('images/Group 20.png'),
                        const Icon(
                          FontAwesomeIcons.basketShopping,
                          color: thirdColor,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
