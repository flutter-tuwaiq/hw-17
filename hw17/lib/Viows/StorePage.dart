import 'package:flutter/material.dart';
import 'package:hw17/Viows/sala.dart';

import '../Extinshen/ExtensionBoton.dart';
import 'Storeg.dart';

class StorePage extends StatefulWidget {
  const StorePage({super.key});

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  get sideLength => null;

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
      body: Container(
        color: const Color.fromARGB(255, 0, 221, 255),
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Column(
            children: [
              Container(
                  color: const Color.fromARGB(255, 0, 221, 255),
                  child: Column(children: [
                    const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 32, left: 24),
                          child: Text("Choose Brand",
                              style: TextStyle(fontSize: 15)),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              width: 112.55,
                              height: 63,
                              color: Colors.white,
                              child: const Image(
                                  image: AssetImage("Imags/image 4.png"))),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              width: 112.55,
                              height: 63,
                              color: Colors.white,
                              child: const Image(
                                  image: AssetImage("Imags/image 3.png"))),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              width: 112.55,
                              height: 63,
                              color: Colors.white,
                              child: const Image(
                                  image: AssetImage("Imags/image 2.png"))),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 32, left: 24),
                          child: Text("Choose Brand",
                              style: TextStyle(fontSize: 15)),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                child: Container(
                                    child: const Image(
                                        image:
                                            AssetImage("Imags/Product-2.png"))),
                                onTap: () {
                                  context.pushPage(const Storeg());
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  child: const Image(
                                      image: AssetImage("Imags/Product.png"))),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  child: const Image(
                                      image:
                                          AssetImage("Imags/Product-4.png"))),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  child: const Image(
                                      image:
                                          AssetImage("Imags/Product-3.png"))),
                            )
                          ],
                        ),
                      ],
                    )
                  ])),
            ],
          ),
        ),
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
}
