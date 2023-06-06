import 'package:flutter/material.dart';
import 'package:flutter_application_10/pages/firstpage.dart';
import 'package:flutter_application_10/pages/home.dart';


void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      home:   firstpage()
    );
  }
}
