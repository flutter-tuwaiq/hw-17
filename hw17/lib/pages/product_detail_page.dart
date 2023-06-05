import 'package:flutter/material.dart';
import 'package:hw17/components/app_bar.dart';

import '../models/data.dart';
import '../models/product.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key, required this.produc});
  final Produc produc;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myappBar,
      body: Stack(
        children: [
          Container(
            height: 500,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color.fromARGB(200, 232, 227, 134),
              borderRadius: BorderRadius.all(Radius.circular(34.0)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 250, 0, 0),
            child: Container(
              height: 450,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(48, 268, 0, 0),
            child: Container(
              height: 48,
              width: 298,
              decoration: const BoxDecoration(
                color: Color.fromARGB(200, 232, 227, 134),
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(112, 277, 0, 0),
            child: Text(
              'Product Details',
              style: TextStyle(
                  fontSize: 24, color: Color.fromARGB(201, 29, 29, 29)),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(80, 26, 0, 0),
                child: Image.asset(
                  produc.imagePath,
                  height: 200,
                  width: 200,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 112, 0, 0),
                child: Text(
                  produc.name,
                  style: const TextStyle(
                    fontSize: 28,
                    color: Color.fromARGB(201, 29, 29, 29),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 0, 0),
                child: Text(
                  produc.price,
                  style: const TextStyle(
                      fontSize: 28,
                      color: Color.fromARGB(255, 192, 127, 8),
                      fontWeight: FontWeight.w500),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(16, 8, 0, 0),
                child: Text(
                  "Description:",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(201, 29, 29, 29),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 0, 0),
                child: Text(
                  produc.description,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(201, 29, 29, 29),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 28, 0, 0),
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        ListData.listData.add(produc.name);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(200, 232, 227, 134),
                        elevation: 0,
                        fixedSize: const Size(158, 42),
                      ),
                      child: const Text(
                        'Add to Cart',
                        style: TextStyle(
                            color: Color.fromARGB(201, 29, 29, 29),
                            fontSize: 18),
                      ),
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(223, 224, 218, 104),
                        elevation: 0,
                        fixedSize: const Size(158, 42),
                      ),
                      child: const Text(
                        'Buy Now',
                        style: TextStyle(
                            color: Color.fromARGB(201, 29, 29, 29),
                            fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
