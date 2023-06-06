import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../extensions/next_page.dart';
import '../components/bars.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          firstColor.withOpacity(0.2),
          secondColor.withOpacity(0.2)
        ], begin: Alignment.topLeft)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'YOUR EYES NEED IT!',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 40,
                    color: thirdColor),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: 300,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      context.nextPage(const Bars());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shadowColor: thirdColor,
                      elevation: 10,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(60))),
                    ),
                    child: const Text(
                      'Get started',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                          color: thirdColor),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
