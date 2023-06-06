import 'package:flutter/material.dart';
import 'package:hw17_lujain/models/cart_model.dart';
import 'package:hw17_lujain/models/prodct_model.dart';
import '../constants/colors.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

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
                cartItem.add(products);
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
