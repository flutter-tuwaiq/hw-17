import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import '../../models/product.dart';

class Products extends StatelessWidget {
  Products({
    super.key,
    required this.updateBadge,
  });

  final Function() updateBadge;

  final List<Product> products = [
    Product(name: "crash", price: 250),
    Product(name: "pac man", price: 240),
    Product(name: "tekken", price: 230),
    Product(name: "slot", price: 220),
    Product(name: "mario", price: 210),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Text(
            "Products",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        for (final product in products)
          InkWell(
            onTap: () async {
              await Navigator.pushNamed(context, "/product", arguments: product)
                  .then((value) => updateBadge.call());
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Card(
                elevation: 3,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  side: BorderSide(
                    color: Colors.black,
                  ),
                ),
                child: Column(
                  children: [
                    ImageSlideshow(
                      children: [
                        Image.asset("directory/vega/${product.name} 1.jpg"),
                        Image.asset("directory/vega/${product.name} 2.jpg"),
                      ],
                    ),
                    Column(
                      children: [
                        const Divider(
                          color: Colors.black,
                        ),
                        Text(
                          "${product.name} T-shirt",
                          style: const TextStyle(fontSize: 30),
                        ),
                        const Divider(
                          color: Colors.black,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "${product.price} SR",
                                style: const TextStyle(fontSize: 30),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  for (var i = 0; i < 5; i++)
                                    const Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }
}
