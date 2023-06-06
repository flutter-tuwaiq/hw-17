import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_10/Component/RemoveItme.dart';
import 'package:flutter_application_10/Component/title.dart';
import 'package:flutter_application_10/model/prodect.dart';

import 'package:flutter_application_10/pages/firstpage.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
       child:ClipRRect(
  borderRadius: BorderRadius.circular(30),
  child: Container(
    height: 600,
    color: Color.fromARGB(255, 169, 252, 247),
    child: Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        children: [
          InkWell(
            onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) =>  firstpage()));

            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.delete,
                  color: Colors.red,
                  size: 30,
                ),
              ],
            ),
          ),
          Column(
            children: [
              Image.network(
                product.image,
                height: 100,
                width: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const title(message: "Product Name:"),
                  title(message: "${product.name} "),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Expanded(
              child: Column(
                children: [const title(message: ' ProductDetails'),
                title(message: product.description,  
                ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const title(message: "Product Price:"),
                      title(message: "${product.price} SR"),
                    ],
                  ),
                ],
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(60),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 4, 4, 4),
              ),
              onPressed: () {
                Navigator.pop(
                    context, MaterialPageRoute(builder: (context) => firstpage()));
              },
              child: Text(
                'HOMEPAGE',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
          ),
      
        ],
      )
    )
      ),
    ),
  ),
);
    
  }
}
