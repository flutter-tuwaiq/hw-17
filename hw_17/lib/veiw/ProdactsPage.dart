// ignore_for_file: sort_child_properties_last

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hw_17/Data/prodactdata.dart';
import 'package:hw_17/Extantions/extantions.dart';
import 'package:line_icons/line_icons.dart';

import '../Compoents/ProdactsPage/AppBarComponent.dart';
import '../Compoents/ProdactsPage/ImagesOfBrand.dart';
import '../Compoents/ProdactsPage/ListBrandComponents.dart';
import '../Compoents/ProdactsPage/ListProdactDetalseComponant.dart';
import '../Compoents/ProdactsPage/prodactDetalsComponents.dart';
import '../Models/prodact.dart';
import 'Shoppingcart.dart';

class ProdactsPage extends StatefulWidget {
  const ProdactsPage({
    super.key,
  });

  @override
  State<ProdactsPage> createState() => _ProdactsPageState();
}

class _ProdactsPageState extends State<ProdactsPage> {
  int firstbage = 1;

  List pagelist = [ProdactsPage(), Shoppingcart()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(16, 122, 225, 1),
      body: 
      
      SafeArea(
        child: Column(
          children: [
            AppBarComponent(),
            SizedBox(
              height: 32,
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 50,
                        width: 32,
                      ),
                      Text(
                        "Choose Brand",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  ListBrandComponents(),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 50,
                        width: 32,
                      ),
                      Text(
                        "Choose Products",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  ListProdactDetalse(),
                ],
              ),
              height: 619,
              width: 450,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  width: 1,
                  color: Color.fromARGB(255, 240, 240, 240),
                ),
              ),
            )
          ],
          
        ),
        
      ),
      
      // bottomNavigationBar: CurvedNavigationBar(
      //   height: 58,
      //   backgroundColor: Colors.transparent,
      //   onTap: (index) {},
      //   color: Colors.blue,
      //   items: [
      //     Icon(
      //       LineIcons.home,
      //       size: 30,
      //       color: Colors.white,
      //     ),
      //     Icon(
      //       LineIcons.shoppingBag,
      //       size: 30,
      //       color: Colors.white,
      //     ),
      //   ],
      // ),
    );
  }
}
