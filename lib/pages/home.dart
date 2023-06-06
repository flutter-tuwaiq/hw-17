import 'package:flutter/material.dart';
import 'package:flutter_application_10/model/prodect.dart';
import 'package:flutter_application_10/pages/cart.dart';
import 'package:flutter_application_10/product.dart';
import 'detail_screen.dart';
import '../Component/item_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static List<Product> cartItems = [];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: SizedBox(
          child: Image.network(
            'https://png.pngtree.com/png-vector/20191026/ourlarge/pngtree-cat-face-line-icon-vector-png-image_1874331.jpg',
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 150),
            child: const Text( "Products ",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,fontSize: 30,
                        color: Color.fromARGB(255, 14, 16, 16))),
          ),
          const Icon(
            Icons.more_vert,
            color: Colors.black,
          ),
          InkWell(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: ((context) => Cart(
                      items: cartItems,
                    )),
              ),
            ),
            child: const Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
          )

        ],
        
      ),
      
      body: SingleChildScrollView(
        child: Center(
  child: ClipRRect(borderRadius: BorderRadius.circular(20),
    child: Container(
      height: 500,
      width: double.infinity,
      color: Color.fromARGB(255, 169, 252, 247),
      child: Column(
  mainAxisAlignment: MainAxisAlignment.center,      children: [
          SizedBox(
            height: 450,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: products.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    ItemCard(
                      item: products[index],
                      press: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => DetailScreen(
                              item: products[index],
                              cartItems: cartItems,
                            ),
                          ),
                        );
                      },
                      cartPress: () {
                        cartItems.add(
                          products[index],
                        );
                      },
                    ),
                    SizedBox(width: 10),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    ),
  ),
        )
      )
);
  }
}
