import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

import '../screens/products_screen.dart';

AppBar createAppBar(BuildContext context, Function() setState) {
  return AppBar(
    backgroundColor: Colors.white,
    iconTheme: const IconThemeData(color: Colors.black),
    title: Image.asset("directory/vega/IMG_6416.PNG"),
    actions: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: badges.Badge(
          position: badges.BadgePosition.topStart(start: 30),
          showBadge: ProductsScreen.cartItemsCounter > 0,
          badgeContent: Text(
            '${ProductsScreen.cartItemsCounter}',
            style: const TextStyle(color: Colors.white),
          ),
          child: IconButton(
            icon: const Icon(
              Icons.shopping_cart_outlined,
              size: 30,
            ),
            onPressed: () async {
              await Navigator.pushNamed(context, "/cart");
              setState.call();
            },
          ),
        ),
      ),
    ],
  );
}
