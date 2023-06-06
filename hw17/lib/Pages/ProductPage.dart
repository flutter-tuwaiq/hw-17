import 'package:flutter/material.dart';

import '../Styles/AppStyles.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _HomePageState();
}

class _HomePageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back,
          color: Color.fromRGBO(48, 48, 48, 1),
          size: 30,
        ),
        title: Row(
          children: [
            const SizedBox(width: 80),
            Image.asset(
              "/logo.png",
              height: 23,
              width: 23,
            ),
            Text("PETLY", style: Styles.textStyle4),
          ],
        ),
        actions: const [
          Row(
            children: [
              Icon(
                Icons.search,
                color: Color.fromRGBO(48, 48, 48, 1),
                size: 35,
              ),
              SizedBox(width: 30),
            ],
          )
        ],
      ),
      body: Center(
        child: Column(children: [
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(246, 201, 83, 0.43),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(31),
                topRight: Radius.circular(31),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 39),
                  Image.asset("/Product.png")
                ],
              ),
            ),
          ),
          const SizedBox(height: 40),
          Text(
            "Pet Oatmeal Spray",
            style: Styles.textStyle2,
            
          )
        ]),
      ),
    );
  }
}
