import 'package:flutter/material.dart';
import 'package:flutter_application_10/model/prodect.dart';
import 'package:flutter_application_10/pages/ProductDetails.dart';
import 'package:flutter_application_10/pages/firstpage.dart';
import 'package:flutter_application_10/product.dart';

class DetailScreen extends StatelessWidget {
  final Product item;
  List<Product> cartItems;
  DetailScreen({super.key, required this.item, required this.cartItems});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.network(
              item.image,
              height: 350,
              width: 350,
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              item.name,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color(0xFFa4bea0)),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              item.price,
              style: const TextStyle(fontSize: 20, color: Colors.black38),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Color.fromARGB(255, 103, 252, 255), width: 1),
                  ),
                  child: const Icon(
                    Icons.favorite_border,
                    color: Color.fromARGB(255, 103, 252, 255),
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: const Color(0xFFa4bea0), width: 1),
                  ),
                  child: const Icon(
                    Icons.share,
                    color: Color(0xFFa4bea0),
                  ),
                ),
              ],
            ),
          ),
          Padding(
  padding: const EdgeInsets.all(16.0),
  child: InkWell(
    onTap: () {
      Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => ProductDetails(product:item),
  ),
);
    },
    child: Center(
      child: Container(
        width: 300,
        height: 50,
        decoration: BoxDecoration(
       color: Color.fromARGB(255, 103, 252, 255),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            "Add to Cart",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    ),
  ),
          )
      ]
          )
);

  }
}
