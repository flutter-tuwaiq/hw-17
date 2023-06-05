import 'package:flutter/material.dart';

import '../components/bottom_navigation.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 188, 66),
      body: ListView(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 124,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/Vector.png"),
                  const SizedBox(
                    width: 4,
                  ),
                  const Text(
                    "PETLY",
                    style: TextStyle(fontSize: 28),
                  ),
                ],
              ),
              const SizedBox(
                height: 14,
              ),
              const Padding(
                padding: EdgeInsets.all(34),
                child: Text(
                  'Shop for your love today',
                  style: TextStyle(fontSize: 38),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const BottomNavigation();
                      },
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  padding: const EdgeInsets.all(14),
                  backgroundColor: const Color.fromARGB(206, 0, 0, 0),
                  fixedSize: const Size(348, 58),
                ),
                child: const Text(
                  "Get Started!!",
                  style: TextStyle(
                    fontSize: 24,
                    color: Color.fromARGB(202, 255, 255, 255),
                  ),
                ),
              ),
              const SizedBox(
                height: 68,
              ),
              Image.asset('assets/animal.png'),
            ],
          ),
        ],
      ),
    );
  }
}
