import 'package:flutter/material.dart';
import 'package:hadeel_hw_17/App/Views/cart_page.dart';
import 'package:hadeel_hw_17/App/data/cart_data.dart';
import 'package:hadeel_hw_17/App/extensions/context.dart';

import '../../models/product.dart';
import 'counter_icon.dart';

class ProductBottomBar extends StatelessWidget {
  const ProductBottomBar({
    super.key,
    required this.product,
  });
  final Product product;
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
          color: const Color.fromRGBO(116, 150, 150, 1),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Row(
              children: [
                CounterIcon(iconName: Icons.remove),
                Text(
                  '1',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                CounterIcon(iconName: Icons.add),
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  CartData.cartList.add(product);
                  context.pushPage(CartPage());
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: const Color.fromRGBO(138, 170, 170, 1),
                  elevation: 0,
                  minimumSize: const Size(140, 44),
                ),
                child: const Text(
                  "Add to Cart",
                  style: TextStyle(fontSize: 18),
                ))
          ],
        ));
  }
}
