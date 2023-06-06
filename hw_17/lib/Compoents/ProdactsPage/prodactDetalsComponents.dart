import 'package:flutter/material.dart';
import 'package:hw_17/Extantions/extantions.dart';
import 'package:hw_17/veiw/ProdactDetalsPage.dart';

class prodactDetals extends StatelessWidget {
  prodactDetals({
    super.key,
    required this.Imageprodact,
    required this.prodactname,
    required this.price,
  });
  dynamic Imageprodact;
  dynamic prodactname;
  dynamic price;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 229,
          width: 164,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.favorite_border,
                      size: 30,
                      color: Colors.red,
                    ),
                    Padding(
                      padding: EdgeInsets.all(6),
                    ),
                  ],
                ),
                Image(
                  height: 100,
                  width: 140,
                  image: NetworkImage(Imageprodact),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      prodactname,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      price,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.amber.shade700,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 8,
                        ),
                        Icon(
                          Icons.star_outlined,
                          size: 15,
                          color: Colors.amber.shade800,
                        ),
                        Icon(
                          Icons.star_outlined,
                          size: 15,
                          color: Colors.amber.shade800,
                        ),
                        Icon(
                          Icons.star_outlined,
                          size: 15,
                          color: Colors.amber.shade800,
                        ),
                        Icon(
                          Icons.star_half,
                          size: 15,
                          color: Colors.amber.shade800,
                        ),
                        Icon(
                          Icons.star_border,
                          size: 15,
                          color: Colors.amber.shade800,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.add_shopping_cart),
                        Padding(
                          padding: EdgeInsets.all(6),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
