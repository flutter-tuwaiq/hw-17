// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:hw_17/Data/ProductModel.dart';
import 'package:scrollable/exports.dart';

import 'ProductDetails.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key, required this.cartData});
  final List<Product> cartData;

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final ScrollController controller = ScrollController();

  @override
  void dispose() {
    controller.dispose(); // <----- Remember to dispose the controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
      body: ScrollableView(
        controller: controller,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              for (final product in widget.cartData)
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
                                    border:
                                        Border.all(color: Colors.red.shade300)),
                                child: Image(
                                  image: NetworkImage(product.imageUrl),
                                )),
                            title: Text(product.name),
                            subtitle: Text(product.description),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0, right: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.red,
                                    ),
                                    child: const 
                                    // badges.Badge(
                                      // badgeContent: Text('3'),
                                      // child: 
                                      Icon(
                                        Icons.remove_shopping_cart_rounded,
                                        size: 18,
                                      ),
                                    // ),
                                    onPressed: () {
                                      Product.cart.remove(product);
                                      setState(() {});
                                    },
                                  ),
                                  const SizedBox(height: 8),
                                ],
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
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 50,
        margin: const EdgeInsets.all(10),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
          onPressed: () {},
          child: const Center(
            child: Text('Proceed to pay'),
          ),
        ),
      ),
    );
  }
}
