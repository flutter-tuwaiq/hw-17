import 'package:flutter/material.dart';
import 'package:hw17_lujain/extensions/next_page.dart';
import '../components/brands/list_of_brand.dart';
import '../components/products_cards.dart';
import '../constants/colors.dart';
import '../models/prodct_model.dart';
import 'product_details.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: 428,
          height: 828,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(31), topRight: Radius.circular(31)),
              gradient: LinearGradient(colors: [
                firstColor.withOpacity(0),
                secondColor.withOpacity(0.5)
              ], begin: Alignment.topLeft)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                'Choose Brand',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15.7401,
                    color: thirdColor),
              ),
              const SizedBox(height: 16),
              const ListOfBrand(),
              const SizedBox(height: 16),
              const Text('Chooose Prodcut',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15.7401,
                      color: thirdColor)),
              const SizedBox(height: 16),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GridView.builder(
                    itemCount: products.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 20,
                            crossAxisSpacing: 20,
                            childAspectRatio: 0.75),
                    itemBuilder: (context, index) => ProductCard(
                          products: products[index], press: () => context.nextPage(ProductDetails(product: products[index]))
                        )),
              )),
            ]),
          )),
    );
  }
}
