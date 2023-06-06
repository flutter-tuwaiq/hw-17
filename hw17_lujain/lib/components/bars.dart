// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants/colors.dart';
import '../views/cart.dart';
import '../views/home_page.dart';

class Bars extends StatefulWidget {
  const Bars({super.key});

  @override
  State<Bars> createState() => _BarsState();
}

class _BarsState extends State<Bars> {
  List screen = [const HomePage(), Cart()];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (currentIndex) {
            index = currentIndex;
            setState(() {});
          },
          selectedItemColor: thirdColor,
          unselectedItemColor: secondColor,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.house), label: ''),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.cartShopping), label: '')
          ]),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(
          FontAwesomeIcons.bars,
          color: thirdColor,
        ),
        title: const Icon(FontAwesomeIcons.glasses, color: thirdColor),
        centerTitle: true,
        actions: const [
          Icon(FontAwesomeIcons.magnifyingGlass, color: thirdColor),
          Padding(padding: EdgeInsets.all(8.0))
        ],
      ),
      body: screen[index],
    );
  }
}
