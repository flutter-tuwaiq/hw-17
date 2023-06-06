
import 'package:flutter/material.dart';

class ContanerOfProdacTstitle extends StatelessWidget {
  const ContanerOfProdacTstitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          SizedBox(
            width: 25,
          ),
          Text(
            "Product",
            style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 16,
          ),
          Container(
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Details",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "Reviews",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            height: 50,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.blue.shade200,
              // borderRadius: BorderRadius.circular(16),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0),
                topRight: Radius.circular(16),
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(16),
              ),
            ),
          )
        ],
      ),
      height: 50,
      width: 300,
      decoration: BoxDecoration(
        color: Colors.blue.shade400,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          width: 1,
          color: Color.fromARGB(255, 240, 240, 240),
        ),
      ),
    );
  }
}
