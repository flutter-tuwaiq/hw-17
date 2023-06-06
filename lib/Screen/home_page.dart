import 'package:flutter/material.dart';
import 'package:hw_17/Screen/proudect_details.dart';
import 'package:hw_17/Screen/prudect_cart.dart';

import '../Components/proudects_menu.dart';
import '../Components/brand_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  Stack(
        children: [
          MenuScreen(),
          
          Column(
            children: [
              SizedBox(height: 55,),
               Padding(
                  padding: EdgeInsets.symmetric(vertical: 100 , horizontal: 35),
                  child: Column(
                    children: [
                      ProductMenu(),
                  
                    ],
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
