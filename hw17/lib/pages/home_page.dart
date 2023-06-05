import 'package:flutter/material.dart';

import 'package:hw17/models/data.dart';
import 'package:hw17/pages/product_detail_page.dart';

import '../components/brand_list.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 1100,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(200, 232, 227, 134),
                  borderRadius: BorderRadius.all(Radius.circular(34.0)),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(14, 16, 0, 0),
                    child: Text('Choose Brand'),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(12, 8, 0, 0),
                    child: Row(
                      children: [
                        BrandList(),
                        SizedBox(
                          width: 12,
                        ),
                        BrandList(),
                        SizedBox(
                          width: 12,
                        ),
                        BrandList(),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(14, 12, 0, 0),
                    child: Text('Choose Products'),
                  ),
                  for (int i = 0; i < Data.cards.length; i++)
                    InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (
                                context,
                              ) {
                                return ProductDetailPage(
                                  produc: Data.cards[i].produc,
                                );
                              },
                            ),
                          );
                        },
                        child: Data.cards[i]),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
