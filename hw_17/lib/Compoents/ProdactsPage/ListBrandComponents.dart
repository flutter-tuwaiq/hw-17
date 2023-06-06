
import 'package:flutter/material.dart';

import 'ImagesOfBrand.dart';


class ListBrandComponents extends StatelessWidget {
  const ListBrandComponents({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 400,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(
            width: 40,
          ),
          ImagesOfBrand(
            ImageOfBrand:
                "https://1000logos.net/wp-content/uploads/2016/10/Color-Adidas-logo.jpg",
          ),
          SizedBox(
            width: 16,
          ),
          ImagesOfBrand(
            ImageOfBrand:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvi0wL5EQKfjSOEWk5xFJ5zy4vIgXbdwFR9gILVUO9yhlMrPDgJBfqG-7-LFNUGllEOc0&usqp=CAU",
          ),
          SizedBox(
            width: 16,
          ),
          ImagesOfBrand(
            ImageOfBrand:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzLRiYyL8vZ4wwt-AAWpPdos-DhN2O6H2QaQ&usqp=CAU",
          ),
          SizedBox(
            width: 16,
          ),
          ImagesOfBrand(
            ImageOfBrand:
                "https://alhilal.com/thumb/09/9a/850_edbc425d0f.jpeg",
          ),
          
        ],
      ),
    );
  }
}
