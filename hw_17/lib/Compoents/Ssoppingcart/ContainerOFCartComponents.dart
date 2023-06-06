
import 'package:flutter/material.dart';

class ContainerOFCart extends StatelessWidget {
  const ContainerOFCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 330,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Image(
            height: 100,
            width: 120,
            image: NetworkImage(
                "https://static-ssp.supersports.co.th/media/catalog/product/s/s/ssp63655063-1.jpg"),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "nadkkljf",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "\$2345",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber.shade800,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Row(
                    children: [
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
                      SizedBox(
                        width: 30,
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
            ],
          ),
          SizedBox(
            width: 24,
          ),
          Icon(
            Icons.delete_forever,
            size: 35,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
