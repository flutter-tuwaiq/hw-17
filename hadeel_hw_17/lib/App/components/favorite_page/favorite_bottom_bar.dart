import 'package:flutter/material.dart';
import 'package:hadeel_hw_17/App/Views/cart_page.dart';
import 'package:hadeel_hw_17/App/Views/home_page.dart';
import 'package:hadeel_hw_17/App/extensions/context.dart';
import 'package:badges/badges.dart' as badges;

import '../../data/cart_data.dart';

class FavoriteBottomBar extends StatelessWidget {
  const FavoriteBottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final radius = Radius.circular(20);
    final radius0 = Radius.circular(0);
    return Container(
        height: 90,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: radius0,
              bottomRight: radius0,
              topLeft: radius,
              topRight: radius),
          color: Color.fromRGBO(116, 150, 150, 1),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                context.pushPage(HomePage()); // <-- home button
              },
              child: const Icon(
                Icons.home_outlined,
                size: 32,
                color: Colors.white,
              ),
            ),
            InkWell(
                onTap: () {
                  context.pushPage(CartPage()); // <-- cart button
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
                    size: 32,
                    color: Colors.white,
                  ),
                ))
          ],
        ));
  }
}
