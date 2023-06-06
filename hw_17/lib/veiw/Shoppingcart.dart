import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hw_17/Compoents/Ssoppingcart/Appbarshoppingcart.dart';
import 'package:line_icons/line_icon.dart';

import '../Compoents/Ssoppingcart/ContainerOFCartComponents.dart';

class Shoppingcart extends StatefulWidget {
  const Shoppingcart({super.key});

  @override
  State<Shoppingcart> createState() => _ShoppingcartState();
}

class _ShoppingcartState extends State<Shoppingcart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(16, 122, 225, 1),
      body: SafeArea(
        child: Column(
          children: [
            Appbarshoppingcart(),
            SizedBox(
              height: 16,
            ),
            Text(
              "your shopping cart",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ContainerOFCart(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
