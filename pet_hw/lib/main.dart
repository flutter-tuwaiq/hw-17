import 'package:flutter/material.dart';
import 'package:pet_hw/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,

      // home: homepage(),
      home: home(),
    );
  }
}
