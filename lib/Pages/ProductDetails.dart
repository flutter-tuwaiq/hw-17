// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:hw_17/Data/ProductModel.dart';

import 'CartPage.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final product = ModalRoute.of(context)!.settings.arguments as Product;
    // List<Product> cart = [];

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //image
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
              child: Image(
                image: NetworkImage(product.imageUrl),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: const TextStyle(
                      fontSize: 28, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(product.description),
                const SizedBox(
                  height: 14,
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 50,
        margin: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {
                Product.cart.add(product);
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => CartPage(cartData: Product.cart),
                ));
              },
              child: const Center(
                child: Text('Add to Cart'),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {
                Product.cart.add(product);
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => CartPage(cartData: Product.cart),
                ));
              },
              child: const Center(
                child: Text('Buy now'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
