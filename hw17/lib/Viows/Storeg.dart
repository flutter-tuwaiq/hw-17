import 'package:flutter/material.dart';

import '../cuntenuow/Staricon.dart';

class Storeg extends StatelessWidget {
  const Storeg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
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
              Icon(Icons.abc, color: Colors.black)
            ],
          )),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 0.0),
            child: Container(
              color: const Color.fromARGB(255, 254, 222, 127),
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
                color: const Color.fromARGB(255, 254, 222, 127),
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
                                  const Color.fromARGB(255, 250, 213, 103)),
                          onPressed: () {},
                          child: const Text("Add to Cart")),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 243, 182, 1)),
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
    );
  }
}
