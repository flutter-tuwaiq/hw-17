import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hw_17/extenstion/context.dart';

import '../components/appBar.dart';
import '../components/product_cards_builder.dart';

import 'cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

int _currentIndex = 0;

class _HomePageState extends State<HomePage> {
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
      extendBody: true,
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
      body: const ProductCardsBuilder(),
    );
  }
}

// DotNavigationBar(
//         marginR: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
//         currentIndex: _currentIndex,
//         onTap: changPage,
//         dotIndicatorColor: Colors.blue,
//         items: [
//           /// Home
//           DotNavigationBarItem(
//             icon: const Icon(Icons.home),
//             selectedColor: Colors.blue,
//           ),

//           /// CART
//           DotNavigationBarItem(
//             icon: const Icon(Icons.shopping_cart_outlined),
//             selectedColor: Colors.blue,
//           ),
//         ],
//       ),