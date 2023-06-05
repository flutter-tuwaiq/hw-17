import 'package:flutter/material.dart';
import 'package:homework_17/models/product.dart';
import '../widgets/cart_widgets/cart_item.dart';
import '../widgets/cart_widgets/cart_title.dart';
import '../widgets/cart_widgets/titles.dart';
import '../widgets/cart_widgets/total.dart';
import '../widgets/create_app_bar.dart';
import 'products_screen.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({
    super.key,
  });

  static List<Product> cartItems = [];

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int total = 0;

  updatePrice() {
    int updatedTotal = 0;
    for (var element in CartScreen.cartItems) {
      updatedTotal += element.price;
    }
    total = updatedTotal;
  }

  @override
  void initState() {
    updatePrice();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createAppBar(context, () {
        setState(() {});
      }),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const Divider(color: Colors.black),
                const CartTitle(),
                const Divider(color: Colors.black),
                const Titles(),
                const Divider(color: Colors.black),
                for (final item in CartScreen.cartItems)
                  CartItem(
                    item: item,
                    remove: () {
                      setState(() {
                        CartScreen.cartItems.remove(item);
                        ProductsScreen.cartItemsCounter--;
                        updatePrice();
                      });
                    },
                  ),
                const Divider(color: Colors.black),
                Total(total: total),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
