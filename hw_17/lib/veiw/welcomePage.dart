import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hw_17/Data/prodactdata.dart';
import 'package:hw_17/Extantions/extantions.dart';

import '../Models/prodact.dart';
import 'ProdactsPage.dart';
import 'home.dart';

class welcomePage extends StatelessWidget {
  const welcomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(16, 122, 225, 1),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(
                height: 400,
                width: 400,
                image: NetworkImage(
                    "https://visme.co/blog/wp-content/uploads/2020/03/animation-software-header.gif"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.storefront_outlined,
                    size: 40,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    "KHALID STORE",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Everything you think \n     about is here",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 64,
              ),
              SizedBox(
                height: 70,
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    context.pushPage(home());
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  child: Text(
                    "Get Statrted",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
