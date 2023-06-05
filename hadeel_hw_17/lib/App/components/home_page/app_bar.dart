import 'package:flutter/material.dart';
import 'package:hadeel_hw_17/App/Views/cart_page.dart';
import 'package:hadeel_hw_17/App/extensions/context.dart';
import 'package:badges/badges.dart' as badges;

import '../../data/cart_data.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Shop',
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        InkWell(
            onTap: () {
              context.pushPage(CartPage());
            },
            child: badges.Badge(
              badgeContent: Text(
                CartData.cartList.length.toString(),
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              badgeStyle: const badges.BadgeStyle(
                badgeColor: Color.fromARGB(255, 207, 108, 80),
              ),
              child: const Icon(
                Icons.shopping_cart_outlined,
                color: Colors.white,
              ),
            )),
      ],
    );
  }
}
