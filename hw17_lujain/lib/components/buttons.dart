// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:hw17_lujain/extensions/next_page.dart';
import 'package:hw17_lujain/views/cart.dart';
import '../models/cart_model.dart';
import '../models/prodct_model.dart';
import '../constants/colors.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          width: 170,
          height: 57,
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(firstColor)),
              onPressed: () {
                CartModel.removeProducts.add(product);
                context.nextPage(Cart());
              },
              child: Text(
                'Add to cart',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.white),
              )),
        ),
        Container(
          width: 170,
          height: 57,
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(secondColor)),
              onPressed: () {},
              child: Text(
                'Buy Now',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: thirdColor),
              )),
        )
      ],
    );
  }
}
