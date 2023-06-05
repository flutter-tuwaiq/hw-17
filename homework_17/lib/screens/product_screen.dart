import 'package:flutter/material.dart';
import 'package:homework_17/models/product.dart';
import '../widgets/create_app_bar.dart';
import '../widgets/product_widgets/product_details.dart';
import '../widgets/product_widgets/product_images.dart';
import '../widgets/product_widgets/table_text.dart';
import 'cart_screen.dart';
import 'products_screen.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({
    super.key,
  });

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    final Product product =
        ModalRoute.of(context)!.settings.arguments as Product;

    return Scaffold(
      appBar: createAppBar(context, () {
        setState(() {});
      }),
      body: SafeArea(
        child: Column(
          children: [
            ProductImages(product: product),
            ProductDetails(product: product),
            ElevatedButton(
              onPressed: () {
                CartScreen.cartItems.add(product);
                ProductsScreen.cartItemsCounter++;
                setState(() {});
              },
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.black)),
              child: const TableText(message: "Add to cart"),
            )
          ],
        ),
      ),
    );
  }
}
