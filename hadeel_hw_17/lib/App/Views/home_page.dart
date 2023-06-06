import 'package:flutter/material.dart';
import 'package:hadeel_hw_17/App/Views/product_page.dart';
import 'package:hadeel_hw_17/App/extensions/context.dart';

import '../data/products_data.dart';
import '../components/home_page/app_bar.dart';
import '../components/home_page/categories_labels.dart';
import '../components/home_page/search_textfield.dart';
import '../components/spaces.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final radius = Radius.circular(20);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(236, 227, 235, 233),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(116, 150, 150, 1),
              borderRadius: BorderRadius.only(
                bottomLeft: radius,
                bottomRight: radius,
                topLeft: Radius.circular(0),
                topRight: Radius.circular(0),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.fromLTRB(32, 48, 32, 32),
              child: Column(children: [
                MyAppBar(), // <--- app bar
                height24,
                SearchTextField(), // <-- Search TextField
                height24,
                CategoriesLabels(), // <-- Categories Row
              ]),
            ),
          ),
          // ----------------- Product Cards List -----------------
          const Expanded(
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: ListOfProduct())),
        ],
      ),
    );
  }
}

class ListOfProduct extends StatelessWidget {
  const ListOfProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ProductsData.cards.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            context.pushPage(ProductPage(
              product: ProductsData.cards[index].product,
            ));
          },
          child: ProductsData.cards[index],
        );
      },
    );
  }
}
