import 'package:c_app/Views/Dashboard%20View/dashboard_view.dart';
import 'package:flutter/material.dart';

import '../Cart View/cart_view.dart';

class BottomNavigationBarView extends StatefulWidget {
  const BottomNavigationBarView(
      {super.key,
      required int currentIndex,
      // required Color selectedItemColor,
      required void Function(int index) onTap,
      required List<BottomNavigationBarItem> items});

  @override
  State<BottomNavigationBarView> createState() =>
      _BottomNavigationBarViewState();
}

class _BottomNavigationBarViewState extends State<BottomNavigationBarView> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    DashboardView(),
    CartView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: Container(
          height: 70,
          width: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              iconSize: 35,
              selectedIconTheme: const IconThemeData(color: Colors.black),
              elevation: 1,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  // backgroundColor: AppColors.bottomNavBar,
                  icon: Icon(
                    Icons.home_outlined,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  // backgroundColor: AppColors.bottomNavBar,
                  icon: Icon(
                    Icons.shopping_bag_outlined,
                  ),
                  label: '',
                ),
              ],
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
            ),
          ),
        ),
      ),
    );
  }
}
