import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hw_17/card_data.dart';
import 'package:hw_17/components/app_bar.dart';
import 'package:hw_17/components/cart_card.dart';
import 'package:hw_17/components/product_card.dart';
import 'package:hw_17/components/rating.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  Widget _buildProductCard(ProductCard product) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(child: Image.network(product.product.imageUrl!)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.product.productName,
                  style: GoogleFonts.lato(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('\$ ${product.product.price} ',style: GoogleFonts.lato(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),),
                ratings,
              ],
            ),
            IconButton(
                onPressed: () {
                  setState(() {
                    CardData.cartList.remove(product);
                  });
                },
                icon: const Icon(FontAwesomeIcons.trashCan))
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: customAppBar(context),
        body: SafeArea(
          child: Container(
            child: ListView.builder(
              itemCount: CardData.cartList.length,
              itemBuilder: (context, index) {
                var item = CardData.cartList[index];
                return _buildProductCard(item);
              },
            ),
          ),
        ),
      ),
    );
  }
}
