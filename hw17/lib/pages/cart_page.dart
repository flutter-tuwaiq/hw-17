import 'package:flutter/material.dart';
import 'package:hw17/models/data.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(200, 232, 227, 134),
      body: ListView(
        children: [
          const SizedBox(
            height: 24,
          ),
          for (final name in ListData.listData)
            Column(
              children: [
                Text(
                  name,
                  style: const TextStyle(fontSize: 18),
                ),
                const Icon(
                  Icons.delete_forever_rounded,
                  color: Colors.red,
                ),
                const SizedBox(
                  height: 24,
                ),
              ],
            ),
        ],
      ),
    );
  }
}
