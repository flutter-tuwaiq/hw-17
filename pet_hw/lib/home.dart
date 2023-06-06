import 'package:flutter/material.dart';
import 'package:pet_hw/extinstions/context.dart';
import 'package:pet_hw/homepage.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[300],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.pets_outlined),
              Text(
                "PETLY",
                style: TextStyle(fontSize: 27.69),
              )
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          const Text(
            "Shop for your \n love today",
            style: TextStyle(fontSize: 40),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 100,
          ),
          Container(
            width: 371,
            height: 58,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
            child: ElevatedButton(
              onPressed: () {
                context.pushPage(homepage());
              },
              style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(), backgroundColor: Colors.black),
              child: const Text(
                'Get Started!!',
                // style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
          SizedBox(
            height: 300,
          ),
        ],
      ),
    );
  }
}

