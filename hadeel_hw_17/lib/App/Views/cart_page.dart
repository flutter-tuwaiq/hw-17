import 'package:flutter/material.dart';
import 'package:hadeel_hw_17/App/components/cart_page/product_in_cart.dart';

import '../data/cart_data.dart';
import '../components/cart_page/cart_bottom_bar.dart';
import '../components/cart_page/cart_checkout.dart';
import '../components/spaces.dart';

class CartPage extends StatefulWidget {
  const CartPage({
    super.key,
  });

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: const CartBottomBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(32),
          child: Column(
            children: [
              height24,
              cartAppBar(context), // <--- app bar
              //-----------

              cartListView(), // <--- Cart list

              //----------
              const CheckOut(),
              height48, // <--- checkout
            ],
          ),
        ),
      ),
    );
  }

  Row cartAppBar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        width16,
        const Text(
          "Shopping Cart",
          style: TextStyle(
              color: Color.fromRGBO(116, 150, 150, 1),
              fontSize: 22,
              fontWeight: FontWeight.w500),
        ),
        InkWell(
          onTap: () {
            CartData.cartList.clear(); // <-- delete all products from cart
            setState(() {});
          },
          child: const Icon(
            Icons.delete_outline_rounded,
            color: Color.fromRGBO(116, 150, 150, 1),
          ),
        ),
      ],
    );
  }

  ListView cartListView() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CartData.cartList.length,
      itemBuilder: (BuildContext context, int index) {
        return productInCart(
          context,
          CartData.cartList[index],
          deleteDone: () {
            setState(() {});
          },
        );
      },
    );
  }
}
