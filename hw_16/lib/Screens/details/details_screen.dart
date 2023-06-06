import 'package:flutter/material.dart';
import 'package:hw_16/Screens/details/components/body.dart';
import '../../Model/Product.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(context),
      body: body(product: product),
    );
  }

  AppBar myAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 255, 226, 171),
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
