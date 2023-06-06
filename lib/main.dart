import 'package:flutter/material.dart';
import 'package:hw_17/Pages/cart_page.dart';
import 'package:hw_17/Pages/get_Start_page.dart';
import 'package:hw_17/Pages/home_page.dart';
import 'package:hw_17/Pages/product_detail_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      routes: {
        '/start':(context) => const GetStart(),
        '/homepage':(context) => const HomePage(),
        '/product':(context) => const ProductDetail(),
        '/cart':(context) => const CartPage(),
      },
      home: const GetStart(),
        
    );
  }
}
