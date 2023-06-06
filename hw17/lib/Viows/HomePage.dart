import 'package:flutter/material.dart';

import 'StorePage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 221, 255),
      body: Column(
        children: [
          const SizedBox(
            width: 100,
            height: 200,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage("Imags/Vector.png")),
              Text('PETLY', style: TextStyle(fontSize: 30)),
            ],
          ),
          const SizedBox(
            width: 100,
            height: 200,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Shop for your love today", style: TextStyle(fontSize: 30)),
            ],
          ),
          const SizedBox(height: 40),
          Container(
            height: 60,
            width: 350,
            color: const Color.fromARGB(255, 0, 221, 255),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const StorePage();
                      },
                    ),
                  );
                },
                child: const Text("Get Started!!",
                    style: TextStyle(fontSize: 20))),
          ),
          const SizedBox(height: 40),
          const Image(image: AssetImage("Imags/image 1.png"))
        ],
      ),
    );
  }
}
