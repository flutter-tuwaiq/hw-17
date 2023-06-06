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

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _buildProductCard(ProductCard product) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Expanded(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.network(product.product.imageUrl!),
            ]),
          ),
          kHSpace16,
          Text(
            product.product.productName,
            style: GoogleFonts.lato(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                '\$ ${product.product.price} ',
                style: GoogleFonts.lato(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ratings,
            ]),
            Column(children: [
              IconButton(
                  icon: const Icon(FontAwesomeIcons.basketShopping),
                  onPressed: () {
                    CardData.cartList.add(product);
                  }),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed('/product', arguments: product);
                    // Navigator.of(context).push()
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: btnColor),
                  child: Text(
                    'View',
                    style: GoogleFonts.lato(
                        fontStyle: FontStyle.italic, color: Colors.white),
                  )),
            ]),
          ]),
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: customAppBar(context),
        //bottomNavigationBar: customBottomNavigationBar(context),
        //   type: BottomNavigationBarType.fixed,
        //   backgroundColor: Colors.white,

        body: SafeArea(
          child: Container(
            child: GridView.builder(
              itemCount: CardData.cards.length,
              itemBuilder: (_, index) {
                var item = CardData.cards[index];
                return _buildProductCard(item);
              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0),
            ),
          ),
        ),
      ),
    );
  }
}
