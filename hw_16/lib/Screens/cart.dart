import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(52.0),
        child: Text(
          "Your Cart is empty",
          style: TextStyle(fontSize: 36, color: Colors.grey.shade600),
        ),
      )),
    );
  }
}
