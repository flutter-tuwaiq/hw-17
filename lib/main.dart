import 'package:flutter/material.dart';
import 'package:hw_17/Pages/ProductsPage.dart';
import 'package:hw_17/Routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      routes: Routes(),
      home: const Scaffold(
        body: ProductPage(),
      ),
    );
  }
}
