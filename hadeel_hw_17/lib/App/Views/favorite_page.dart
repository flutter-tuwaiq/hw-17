import 'package:flutter/material.dart';
import 'package:hadeel_hw_17/App/components/favorite_page/product_in_favorite.dart';
import 'package:hadeel_hw_17/App/extensions/context.dart';

import '../components/favorite_page/favorite_bottom_bar.dart';
import '../components/spaces.dart';
import '../data/favorite_data.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({
    super.key,
  });

  @override
  State<FavoritePage> createState() => _FavoritePage();
}

class _FavoritePage extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: FavoriteBottomBar(),
      body: Padding(
        padding: EdgeInsets.fromLTRB(32, 32, 32, 32),
        child: Column(
          children: [
            height24,
            favoriteAppBar(context), // <--- app bar
            //-----------

            favoriteListView(), // <--- Cart list
          ],
        ),
      ),
    );
  }

  Row favoriteAppBar(BuildContext context) {
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
        const Text(
          "My Favorite",
          style: TextStyle(
              color: Color.fromRGBO(116, 150, 150, 1),
              fontSize: 22,
              fontWeight: FontWeight.w500),
        ),
        InkWell(
          onTap: () {
            FavoriteData.favoriteList.clear(); // <-- delete all favorites
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

  // favorite ListView builder
  ListView favoriteListView() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: FavoriteData.favoriteList.length,
      itemBuilder: (BuildContext context, int index) {
        return productInFavorite(
          context,
          FavoriteData.favoriteList[index],
          deleteDone: () {
            setState(() {});
          },
        );
      },
    );
  }
}
