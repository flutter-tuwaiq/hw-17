import 'package:flutter/material.dart';
import 'package:hw17/Extinshen/ExtensionBoton.dart';
import 'package:hw17/Model/Model.dart';
import 'package:hw17/Viows/sala.dart';

import '../combonant/Staricon.dart';
import 'StorePage.dart';

class Storeg extends StatelessWidget {
  const Storeg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 0, 221, 255),
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [SizedBox()],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image(image: AssetImage("Imags/Vector.png")),
                  Text("PETLY", style: TextStyle(color: Colors.black))
                ],
              ),
              Icon(Icons.search, color: Color.fromARGB(255, 255, 255, 255))
            ],
          )),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 0.0),
            child: Container(
              color: const Color.fromARGB(255, 6, 230, 255),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: const Image(
                          image: AssetImage("Imags/71fN75kIuwL 1.png")),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 64.0, right: 64, top: 16),
            child: Container(
                color: const Color.fromARGB(255, 255, 255, 255),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Product  Details  Reviews",
                        style: TextStyle(fontSize: 21))
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                const Row(
                  children: [
                    Text("Pet Oatmeal Spray", style: TextStyle(fontSize: 30)),
                  ],
                ),
                const Row(children: [
                  Text("\$233.4",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 217, 163, 2))),
                ]),
                const Text(
                    """Sweet almond oil nourishes and provides a wonderful fragrance.
13 care ingredients such as Aloe vera, chamomile and panthenol nourish the coat and make it supple.
Oatmeal spray conditioner remaining in the coat"""),
                const Row(
                  children: [Text("Ratings: ")],
                ),
                const Row(
                  children: [ProductsEvaluation()],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 0, 204, 255)),
                          onPressed: () {
                            context.pushPage(const Sala());

                            sala = Padding(
                              padding:
                                  const EdgeInsets.only(left: 16, right: 16),
                              child: Column(children: [
                                Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: Container(
                                    color: Colors.white,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Image(
                                            image: AssetImage(
                                                "Imags/71fN75kIuwL 1.png"),
                                            width: 100,
                                            height: 130),
                                        const Column(
                                          children: [
                                            Row(
                                              children: [
                                                Text("Pet Oatmeal Spray")
                                              ],
                                            ),
                                            Row(
                                              children: [Text("\$233.4")],
                                            ),
                                            Row(
                                              children: [ProductsEvaluation()],
                                            )
                                          ],
                                        ),
                                        InkWell(
                                          child: const Icon(Icons.delete,
                                              color: Color.fromARGB(
                                                  255, 255, 28, 7)),
                                          onTap: () {
                                            context.pushPage(const Sala());
                                            sala = const SizedBox(
                                              width: 0,
                                              height: 0,
                                            );
                                          },
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ]),
                            );
                          },
                          child: const Text("Add to Cart")),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 0, 204, 255)),
                          onPressed: () {},
                          child: const Text("Buy Now")),
                      //عجزت تزبط معاي
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                InkWell(
                  child: const Icon(Icons.home, size: 50),
                  onTap: () {
                    context.pushPage(const StorePage());
                  },
                )
              ],
            ),
            Row(
              children: [
                InkWell(
                  child: const Icon(Icons.store, size: 50),
                  onTap: () {
                    context.pushPage(const Sala());
                  },
                )
              ],
            )
          ]),
    );
  }

  void Extension() {}
}
