import 'package:flutter/material.dart';

import '../Styles/AppStyles.dart';

class ProductsWidget extends StatelessWidget {
  const ProductsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              height: 225,
              width: 160,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(249, 249, 249, 1),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    spreadRadius: 0,
                    blurRadius: 6,
                    offset: const Offset(1, 2),
                  ),
                ],
              ),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 17,
                      width: 17,
                      decoration: BoxDecoration(
                        color:
                            const Color.fromARGB(255, 255, 72, 72),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: 10,
                      ),
                    ),
                  ],
                ),
                Image.asset("/product-1.png"),
                const SizedBox(height: 15),
                const Text("Pet Oatmeal Spray"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text("\$233.4",
                            style: Styles.headLineStyle3),
                        const Row(
                          children: [
                            Icon(Icons.star,
                                color: Colors.orange, size: 9),
                            Icon(Icons.star,
                                color: Colors.orange, size: 9),
                            Icon(Icons.star,
                                color: Colors.orange, size: 9),
                            Icon(Icons.star,
                                color: Colors.orange, size: 9),
                            Icon(Icons.star,
                                color: Colors.orange, size: 9),
                          ],
                        ),
                      ],
                    ),
                    const Icon(Icons.shopping_basket)
                  ],
                )
              ]),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              height: 225,
              width: 160,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(249, 249, 249, 1),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    spreadRadius: 0,
                    blurRadius: 6,
                    offset: const Offset(1, 2),
                  ),
                ],
              ),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 17,
                      width: 17,
                      decoration: BoxDecoration(
                        color:
                            const Color.fromARGB(255, 255, 72, 72),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: 10,
                      ),
                    ),
                  ],
                ),
                Image.asset("/product-2.png"),
                const SizedBox(height: 15),
                const Text("Fleece Cat Carrier"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text("\$293.4",
                            style: Styles.headLineStyle3),
                        const Row(
                          children: [
                            Icon(Icons.star,
                                color: Colors.orange, size: 9),
                            Icon(Icons.star,
                                color: Colors.orange, size: 9),
                            Icon(Icons.star,
                                color: Colors.orange, size: 9),
                            Icon(Icons.star,
                                color: Colors.orange, size: 9),
                            Icon(Icons.star,
                                color: Colors.orange, size: 9),
                          ],
                        ),
                      ],
                    ),
                    const Icon(Icons.shopping_basket)
                  ],
                )
              ]),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              height: 225,
              width: 160,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(249, 249, 249, 1),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    spreadRadius: 0,
                    blurRadius: 6,
                    offset: const Offset(1, 2),
                  ),
                ],
              ),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 17,
                      width: 17,
                      decoration: BoxDecoration(
                        color:
                            const Color.fromARGB(255, 255, 72, 72),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: 10,
                      ),
                    ),
                  ],
                ),
                Image.asset("/product-3.png"),
                const SizedBox(height: 5),
                const Text("Veterinary Ear Drops"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text("\$93.4",
                            style: Styles.headLineStyle3),
                        const Row(
                          children: [
                            Icon(Icons.star,
                                color: Colors.orange, size: 9),
                            Icon(Icons.star,
                                color: Colors.orange, size: 9),
                            Icon(Icons.star,
                                color: Colors.orange, size: 9),
                            Icon(Icons.star,
                                color: Colors.orange, size: 9),
                            Icon(Icons.star,
                                color: Colors.orange, size: 9),
                          ],
                        ),
                      ],
                    ),
                    const Icon(Icons.shopping_basket)
                  ],
                )
              ]),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              height: 225,
              width: 160,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(249, 249, 249, 1),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    spreadRadius: 0,
                    blurRadius: 6,
                    offset: const Offset(1, 2),
                  ),
                ],
              ),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 17,
                      width: 17,
                      decoration: BoxDecoration(
                        color:
                            const Color.fromARGB(255, 255, 72, 72),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: 10,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 3),
                Image.asset("/product-4.png"),
                const SizedBox(height: 26),
                const Text("Pet Vipes Spray"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text("\$233.4",
                            style: Styles.headLineStyle3),
                        const Row(
                          children: [
                            Icon(Icons.star,
                                color: Colors.orange, size: 9),
                            Icon(Icons.star,
                                color: Colors.orange, size: 9),
                            Icon(Icons.star,
                                color: Colors.orange, size: 9),
                            Icon(Icons.star,
                                color: Colors.orange, size: 9),
                            Icon(Icons.star,
                                color: Colors.orange, size: 9),
                          ],
                        ),
                      ],
                    ),
                    const Icon(Icons.shopping_basket)
                  ],
                )
              ]),
            ),
          ],
        ),
      ],
    );
  }
}