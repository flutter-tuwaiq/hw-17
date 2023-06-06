import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:hw_17/components/appBar.dart';
import 'package:hw_17/constants/spaces.dart';
import 'package:hw_17/extenstion/context.dart';

import '../components/cart.dart';
import '../components/item.dart';
import 'home_page.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

int _currentIndex = 0;

class _CartPageState extends State<CartPage> {
  void changPage(int index) {
    setState(() {
      _currentIndex = index;
      context.pushPage(pages[index]);
    });
  }

  List pages = [const HomePage(), const CartPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customAppBar(context),
      bottomNavigationBar: CustomNavigationBar(
          iconSize: 30.0,
          selectedColor: Color.fromARGB(255, 255, 255, 255),
          strokeColor: Color.fromARGB(47, 234, 233, 239),
          unSelectedColor: Color.fromARGB(255, 0, 0, 0),
          backgroundColor: Colors.blue,
          items: [
            CustomNavigationBarItem(
              icon: Icon(Icons.home),
            ),
            CustomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
            ),
          ],
          currentIndex: _currentIndex,
          onTap: changPage),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
          child: ListView.separated(
            itemCount: Cart.carts.length,
            itemBuilder: (context, index) {
              return Item(
                  product: Cart.carts[index],
                  delete: () {
                    Cart.carts.remove(Cart.carts[index]);
                    setState(() {});
                  });
            },
            separatorBuilder: (context, index) {
              return kVSpace16;
            },
          ),
        ),
      ),
    );
  }
}
