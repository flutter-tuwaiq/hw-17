import 'package:flutter/material.dart';
import 'package:hadeel_hw_17/App/data/favorite_data.dart';
import '../../models/product.dart';
import '../spaces.dart';

// display a product in cart page
Card productInFavorite(BuildContext context, Product product,
    {required Function() deleteDone}) {
  return Card(
    // <-- product card
    elevation: 2,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(32, 16, 0, 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.title, // <-------- title
                  style: const TextStyle(
                    color: Colors.black54,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                height8,
                Text(
                  "\$ ${product.price}", // <-------- price
                  style: const TextStyle(
                    color: Color.fromRGBO(210, 170, 150, 1),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          width32,
          Expanded(
            flex: 1,
            child: Image.asset(
              product.image, // <-------- image
              width: 90,
              height: 90,
            ),
          ),
          Expanded(
            flex: 1,
            child: InkWell(
              onTap: () {
                FavoriteData.favoriteList.remove(product);
                deleteDone.call();
              },
              child: const Icon(
                Icons.close,
                color: Color.fromARGB(255, 213, 112, 104),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
