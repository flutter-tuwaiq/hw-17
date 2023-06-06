import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hw_17/veiw/ProdactsPage.dart';
import 'package:hw_17/veiw/Shoppingcart.dart';
import 'package:line_icons/line_icons.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  int firstbage = 0;

  List pagelist = [ProdactsPage(), Shoppingcart()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: pagelist[firstbage]
      ,
      bottomNavigationBar: CurvedNavigationBar(
        height: 58,
        backgroundColor: Colors.transparent,
        onTap: (index) {setState(() {
              firstbage = index;
            });},
        color: Colors.blue,
        
        items: [
          Icon(
            LineIcons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            LineIcons.shoppingBag,
            size: 30,
            color: Colors.white,
          ),
        ],
      ),

    );
  }
}