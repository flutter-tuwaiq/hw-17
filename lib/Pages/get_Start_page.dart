import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hw_17/constants/const_colors.dart';

class GetStart extends StatelessWidget {
  const GetStart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: btnColor,
        body: SafeArea(
          child: Stack(
            fit: StackFit.expand,
            children: [
              const Image(
                image: AssetImage('images/image01.jpg'),
                fit: BoxFit.fill,
              ),
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(backgroundColor: btnColor),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/homepage');
                      },
                      child:  Text('SHOP NOW',style: GoogleFonts.lato(
                        fontStyle: FontStyle.italic, color: Colors.white),),
                    ),
                  ],
                ),
                
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
