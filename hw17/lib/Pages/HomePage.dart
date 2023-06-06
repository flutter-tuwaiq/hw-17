import 'package:flutter/material.dart';

import '../Styles/AppStyles.dart';
import '../Widgets/BrandsWidget.dart';
import '../Widgets/ProductsWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.format_list_bulleted,
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
        child: Container(
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
                Text('Choose Brand', style: Styles.headLineStyle1),
                const SizedBox(height: 10),
                const BrandsWidget(),
                const SizedBox(height: 24),
                Text('Choose Products', style: Styles.headLineStyle1),
                const SizedBox(height: 20),
                const ProductsWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
