import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hw_17/Models/product.dart';
import 'package:hw_17/card_data.dart';
import 'package:hw_17/components/app_bar.dart';
import 'package:hw_17/components/bottom_nav_bar.dart';
import 'package:hw_17/components/product_card.dart';
import 'package:hw_17/components/rating.dart';
import 'package:hw_17/constants/const_colors.dart';
import 'package:hw_17/constants/spaces.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final product = ModalRoute.of(context)!.settings.arguments as ProductCard;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: btnColor,
        appBar: customAppBar(context),
        // bottomNavigationBar: customBottomNavigationBar(context),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Image.network(
                            product.product.imageUrl!,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      product.product.productName,
                      style: GoogleFonts.lato(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      '\$ ${product.product.price} ',
                      style: GoogleFonts.lato(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: priceColor,
                      ),
                    ),
                    //discription label
                    Text(
                      'Discription:',
                      style: GoogleFonts.lato(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    //discription text
                    Text(
                      product.product.discription,
                      style: GoogleFonts.lato(
                        fontStyle: FontStyle.italic,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      'Ratings:',
                      style: GoogleFonts.lato(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                    ratings,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: btnColor),
                          onPressed: () {
                            CardData.cartList.add(product);
                          },
                          child:  Text('Add To Cart',style: GoogleFonts.lato(
                        fontStyle: FontStyle.italic, color: Colors.white),),
                        ),
                        kHSpace16,
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: btnColor),
                          onPressed: () {
                            Navigator.of(context).pushNamed('/cart');
                          },
                          child:  Text('Buy Now',style: GoogleFonts.lato(
                        fontStyle: FontStyle.italic, color: Colors.white),),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
