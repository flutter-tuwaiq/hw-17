import 'package:flutter/material.dart';

import '../widgets/create_app_bar.dart';
import '../widgets/products_widgets/categories.dart';
import '../widgets/products_widgets/products.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({
    super.key,
  });

  static int cartItemsCounter = 0;

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createAppBar(context, () {
        setState(() {});
      }),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [
              Categories(),
              Products(
                updateBadge: () {
                  setState(() {});
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
