import 'package:flutter/material.dart';
import 'package:hadeel_hw_17/App/data/cart_data.dart';

import '../spaces.dart';

cartTotalPrice() {
  num totalPrice = 0;

  CartData.cartList.forEach((element) {
    totalPrice += element.getPrice;
  });
  return totalPrice;
}

@override
Widget checkOut(BuildContext context, {required Function() deleteDone}) {
  return Padding(
    padding: EdgeInsets.all(16),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Total Price',
              style: TextStyle(
                  color: Color.fromRGBO(116, 150, 150, 1),
                  fontSize: 22,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              "\$ ${cartTotalPrice()}",
              style: const TextStyle(
                  color: Color.fromRGBO(210, 170, 150, 1),
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        height24,
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            backgroundColor: Color.fromRGBO(210, 170, 150, 1),
            elevation: 0,
            minimumSize: const Size(200, 44),
          ),
          child: const Text(
            "Check Out",
            style: TextStyle(fontSize: 18),
          ),
        ),
        height24,
      ],
    ),
  );
}
