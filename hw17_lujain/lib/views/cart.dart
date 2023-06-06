// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:hw17_lujain/constants/colors.dart';
import 'package:hw17_lujain/models/cart_model.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
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
                GlassmorphicContainer(
                  width: 358,
                  height: 139,
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
                  child: Column(
                    children: [cartItem],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
