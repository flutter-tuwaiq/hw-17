import 'package:flutter/material.dart';
import 'package:hadeel_hw_17/App/Views/favorite_page.dart';
import 'package:hadeel_hw_17/App/extensions/context.dart';
import 'package:hadeel_hw_17/App/models/product.dart';

import '../../data/favorite_data.dart';

class ProductAppBar extends StatelessWidget {
  const ProductAppBar({
    super.key,
    required this.product,
  });
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            context.popPage;
          },
          child: const Icon(
            Icons.arrow_back,
            color: Color.fromRGBO(116, 150, 150, 1),
          ),
        ),
        InkWell(
          onTap: () {
            FavoriteData.favoriteList.add(product);
            context.pushPage(FavoritePage());
          },
          child: const Icon(
            Icons.favorite_border_rounded,
            color: Color.fromRGBO(116, 150, 150, 1),
          ),
        ),
      ],
    );
  }
}
