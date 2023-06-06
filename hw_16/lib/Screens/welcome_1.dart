import 'package:flutter/material.dart';

class WelcomePage1 extends StatelessWidget {
  const WelcomePage1({
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
                width: 286,
                child: const Text(
                  "Order from your favourite meal",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'SourseSnasPro',
                  ),
                ),
              ),
              Center(
                child: Image.asset('assets/images/illustration.png'),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(300, 132, 32, 46),
                child: FloatingActionButton.extended(
                  label: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      'Next',
                      style: TextStyle(
                          fontFamily: 'SourseSnasPro',
                          fontSize: 16,
                          color: Colors.white),
                    ),
                  ),
                  backgroundColor: const Color.fromARGB(255, 237, 30, 44),
                  onPressed: () {
                    Navigator.pushNamed(context, '/welcome2');
                  },
                  elevation: 0,
                  splashColor: const Color.fromARGB(255, 242, 195, 55),
                ),
              ),
            ],
          )),
    );
  }
}
