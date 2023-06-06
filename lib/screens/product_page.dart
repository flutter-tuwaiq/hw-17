import 'package:flutter/material.dart';
import '../components/appBar.dart';
import '../components/cart.dart';
import '../components/images.dart';
import '../components/product_info.dart';
import '../components/product_model.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key, required this.product});

  final Product product;

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Images(widget: widget),
              ProductInfo(widget: widget,)
            ],
          ),
        ],
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 50,
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Cart.carts.add(widget.product);
              setState(() {});
              Navigator.of(context).pop();
            },
            child: const Text(
              "Add to cart",
              style: TextStyle(fontSize: 22),
            ),
          ),
        ),
      ),
    );
  }
}


