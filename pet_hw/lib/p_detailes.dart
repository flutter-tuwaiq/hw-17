import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pet_hw/cart/cart.dart';
import 'package:pet_hw/extinstions/context.dart';
import 'package:pet_hw/post/data.dart';
import 'package:pet_hw/post/stars.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'model/chat.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key, required this.chat});

  final Chat chat;

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  var cartlist = <DetailsPage>[];
  // var current = ();

  int activeIndex = 0;
  final urlImages = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVTflLPPs1iK44OjgDsSZ7jXL-s2Z42bF5uAJ4mMMo&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcsARw8291h4xSdjMvnpFUhiMtBkabF5BNlNqcllY_YQ&s=0',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcsARw8291h4xSdjMvnpFUhiMtBkabF5BNlNqcllY_YQ&s=0'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        padding: const EdgeInsets.all(24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  //context.pushPage(cart());

                  context.pushPage(cart());
                },
                style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(), backgroundColor: Colors.black),
                child: const Text(
                  'buy !',
                  // style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),

//add to cart

            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  // cartlist.add(DetailsPage(chat: Data.cards[current].chat));
                },
                style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(), backgroundColor: Colors.black),
                child: const Text(
                  'Add to cart',
                  // style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                  style: TextStyle(fontSize: 24),
                ),
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        //  leading: Icon(Icons.pets_outlined),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(Icons.pets_outlined), Text("PETLY")],
        ),
        actions: [Icon(Icons.search)],
      ),
      backgroundColor: const Color.fromARGB(255, 237, 239, 249),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Stack(
          children: [
            Container(
              height: 1000,
              width: 500,
              //  padding: const EdgeInsets.all(0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 252, 236, 170),
                borderRadius: BorderRadius.all(Radius.elliptical(50, 60)),
              ),
              child: Center(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        CarouselSlider.builder(
                          options: CarouselOptions(
                            height: 260,
                            initialPage: 1,
                            viewportFraction: 1,
                            // autoPlay: true,
                            //autoPlayInterval: Duration(seconds: 2),
                            onPageChanged: (index, reason) =>
                                setState(() => activeIndex = index),
                          ),
                          itemCount: urlImages.length,
                          itemBuilder: (context, index, realIndex) {
                            final urlImage = urlImages[index];

                            return buildImage(urlImage, index);
                          },
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.arrow_circle_right_sharp),
                          ],
                        ),
                      ],
                    ),
                    buildIndicator(),
                    Row(
                      children: [
                        Container(
                          height: 1000,
                          width: 500,
                          //   padding:const EdgeInsets.only(top: 0, right: 50, left: 50),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(50, 60)),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Pet Oatmeal Spray",
                                  style: TextStyle(
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Stars(),
                          ],
                        )),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            " \$ 230",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Row(
                      children: [
                        Text(
                          "  Description: ",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "Sweet almond oil nourishes and provides a wonderful fragrance. 13 care ingredients such as Aloe vera, chamomile and panthenol nourish the coat and make it supple. Oatmeal spray conditioner remaining in the coat ",
                            style: const TextStyle(
                                color: Colors.grey, fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 200,
                    ),
                    ElevatedButton(
                      child: Text("Buy"),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          shadowColor: Colors.grey,
                          minimumSize: Size.fromHeight(50)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildImage(String urlImage, int index) => Container(
        // margin: EdgeInsets.symmetric(horizontal: 0),
        color: Colors.grey,
        child: Image.network(
          urlImage,
          fit: BoxFit.contain,
          scale: 100,
        ),
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: urlImages.length,
        effect: const JumpingDotEffect(
          dotWidth: 10,
          dotHeight: 10,
          dotColor: Colors.grey,
          activeDotColor: Colors.white,
        ),
      );
}
