import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:glassmorphism/glassmorphism.dart';
import '../components/buttons.dart';
import '../components/details.dart';
import '../constants/colors.dart';

import '../models/prodct_model.dart';

class ProductDetails extends StatelessWidget {
  final ProductModel product;
  const ProductDetails({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Icon(FontAwesomeIcons.glasses, color: thirdColor),
        centerTitle: true,
        actions: [Icon(Icons.search, color: thirdColor)],
      ),
      body: SingleChildScrollView(
        child: Container(
            width: 428,
            height: 828,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(31),
                    topRight: Radius.circular(31)),
                gradient: LinearGradient(colors: [
                  firstColor.withOpacity(0),
                  secondColor.withOpacity(0.5)
                ], begin: Alignment.topLeft)),
            child: Column(
              children: [
                Image.asset(
                  product.image,
                  width: 304,
                  height: 275,
                ),
                GlassmorphicContainer(
                  width: 430,
                  height: 494,
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
                    padding: const EdgeInsets.symmetric(
                        vertical: 40, horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Details(product: product),
                        Image.asset('images/Group 20.png'),
                        SizedBox(height: 40),
                        Buttons()
                      ],
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
