import 'package:flutter/material.dart';

class WelcomePage2 extends StatelessWidget {
  const WelcomePage2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 112),
                width: 310,
                child: const Text(
                  "Get the Fastest delivery food for you",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'SourseSnasPro',
                  ),
                ),
              ),
              Center(
                child: Image.asset(
                    'assets/images/vecteezyuntact-illustration-14dy0221generated-removebg-preview-1.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 170),
                child: SizedBox(
                  height: 60,
                  width: 315,
                  child: FloatingActionButton.extended(
                    label: const Text(
                      'Get Strted',
                      style: TextStyle(
                          fontFamily: 'SourseSnasPro',
                          fontSize: 18,
                          color: Colors.white,
                          letterSpacing: -0.1),
                    ),
                    backgroundColor: const Color.fromARGB(255, 237, 30, 44),
                    onPressed: () {
                      Navigator.pushNamed(context, '/signup');
                    },
                    elevation: 0,
                    splashColor: const Color.fromARGB(255, 242, 195, 55),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
