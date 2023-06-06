import 'package:flutter/material.dart';

class cart extends StatelessWidget {
  const cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        //  leading: Icon(Icons.pets_outlined),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(Icons.pets_outlined), Text("PETLY")],
        ),
      ),

     
      backgroundColor: Colors.white,
    );
  }
}
