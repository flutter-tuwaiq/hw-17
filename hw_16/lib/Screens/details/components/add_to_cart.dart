import 'package:flutter/material.dart';

import '../../../Model/Product.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 100),
      child: Row(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(20),
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: Colors.black),
            ),
            child: IconButton(
              splashColor: Colors.green.shade300,
              icon: const Icon(Icons.add_shopping_cart_outlined),
              onPressed: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
          ),
        ],
      ),
    );
  }
}
