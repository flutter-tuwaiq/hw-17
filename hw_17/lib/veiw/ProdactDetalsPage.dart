import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hw_17/Extantions/extantions.dart';
import 'package:hw_17/veiw/Shoppingcart.dart';

import '../Compoents/ProdactDetals/AppBarProdactdetalseComponent.dart';
import '../Compoents/ProdactDetals/ContanerOfProdacTstitleComponent.dart';

class ProdactDetalsPage extends StatelessWidget {
  const ProdactDetalsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(16, 122, 225, 1),
      body: ListView(
        children: [
          AppBarProdactdetalseComponent(),
          Container(
            child: Column(
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 3,
                    ),
                    Icon(
                      Icons.arrow_circle_left_outlined,
                      size: 35,
                      color: Colors.blue.shade400,
                    ),
                    Image(
                      height: 300,
                      width: 300,
                      image: NetworkImage(
                          "https://static-ssp.supersports.co.th/media/catalog/product/s/s/ssp63655063-1.jpg"),
                    ),
                    Icon(
                      Icons.arrow_circle_right_outlined,
                      size: 35,
                      color: Colors.blue.shade400,
                    ),
                  ],
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      ContanerOfProdacTstitle(),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            "Pridactname",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w900,
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
                            width: 16,
                          ),
                          Text(
                            "\$847",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w900,
                              color: Colors.amber.shade700,
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
                            width: 16,
                          ),
                          Text(
                            "Desciription:",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w900,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 16,
                          ),
                          Flexible(
                              child: new Text(
                            "Meet your new favorite tee. This classic adidas t-shirt boasts a slim fit and a contrast hem for some refined vintage vibes. Pair it with your favorite dark denim for an effortlessly classic look. It's made of super-soft cotton to keep you comfortable.",
                          ))
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            "Ratings:",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w900,
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
                            width: 16,
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
                        height: 16,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 16,
                          ),
                          SizedBox(
                            height: 57,
                            width: 170,
                            child: ElevatedButton(
                              onPressed: () {
                                context.pushPage(Shoppingcart());
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.blue.shade200,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                              child: Text(
                                "Add to Card",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          SizedBox(
                            height: 57,
                            width: 170,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: Colors.blue.shade400,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                              child: Text(
                                "Buy Now",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  height: 430,
                  width: 580,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      width: 1,
                      color: Color.fromARGB(255, 240, 240, 240),
                    ),
                  ),
                ),
              ],
            ),
            height: 750,
            width: 500,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                width: 1,
                color: Color.fromARGB(255, 240, 240, 240),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
