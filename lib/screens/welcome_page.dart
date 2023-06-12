import 'package:flutter/material.dart';
import 'package:hw_17/constants/spaces.dart';
import 'package:hw_17/extenstion/context.dart';
import 'package:hw_17/screens/home_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "PEPCOL",
              style: TextStyle(fontSize: 64, fontWeight: FontWeight.bold),
            ),
            kVSpace24,
            const Text(
              textAlign: TextAlign.center,
              "Where you can find your Beloved phone",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            kVSpace24,
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: const StadiumBorder(),
                  fixedSize: const Size(330, 60)),
              onPressed: () {
                context.pushPage(const HomePage());
              },
              child: const Text(
                "Get Started!!",
                style: TextStyle(fontSize: 24),
              ),
            )
          ],
        ),
      ),
    );
  }
}
