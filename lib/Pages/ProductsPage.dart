// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../Data/ProductModel.dart';
import '../Data/Products.dart';
import 'CartPage.dart';
import 'ProductDetails.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    // List<Product> cart = [];
    List<Product> productsList = [];
    for (var element in Products.products) {
      productsList.add(Product.fromJson(json: element));
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 237, 28, 35),
        centerTitle: false,
        title: const Row(
          children: [
            Text('Jarir'),
            Image(
              width: 32,
              height: 32,
              image: NetworkImage(
                  'https://play-lh.googleusercontent.com/sGJ92rD1dBl0Z-ybhp3GAUp8Pj-R3G44WCz4at5Z7kCoS0bPdPQmrbffYCbeBN9tDTM'),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: ListView(
// ════════ Exception caught by rendering library ═════════════════════════════════
// A RenderFlex overflowed by 150 pixels on the bottom.
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                for (final product in productsList)
                  InkWell(
                    splashColor: Colors.red,
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              leading: Container(
                                  width: 72,
                                  height: 72,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                          color: Colors.red.shade300)),
                                  child: Image(
                                    image: NetworkImage(product.imageUrl),
                                  )),
                              title: Text(product.name),
                              subtitle: Text(product.description),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(bottom: 8.0, right: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.red,
                                  ),
                                  child: const Icon(
                                    Icons.shopping_cart,
                                    size: 18,
                                  ),
                                  onPressed: () {
                                    Product.cart.add(product);
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) =>
                                          CartPage(cartData: Product.cart),
                                    ));
                                  },
                                ),
                                const SizedBox(height: 8),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProductDetails(),
                          // Pass the arguments as part of the RouteSettings. The
                          // DetailScreen reads the arguments from these settings.
                          settings: RouteSettings(
                            arguments: product,
                          ),
                        ),
                      );
                    },
                  ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => CartPage(cartData: Product.cart),
                    ));
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     Text('Go to Cart'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
