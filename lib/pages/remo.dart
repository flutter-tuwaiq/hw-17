import 'package:flutter/material.dart';
import 'package:flutter_application_10/pages/ProductDetails.dart';
import 'package:flutter_application_10/pages/firstpage.dart';
import 'package:flutter_application_10/pages/home.dart';

class Newclass extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('delet'),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => firstpage()));
          },
        ),
      ),
    );
  }
}


