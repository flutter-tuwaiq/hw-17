import 'package:flutter/material.dart';
import 'package:hw17/components/app_bar.dart';

import '../pages/cart_page.dart';
import '../pages/home_page.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentIndex = 0;
  List screenList = [const HomePage(), const CartPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: myappBar,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        iconSize: 28,
        elevation: 0,
        currentIndex: currentIndex,
        onTap: (index) {
          currentIndex = index;
          setState(() {});
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined), label: ''),
        ],
      ),
      body: screenList[currentIndex],
    );
  }
}
