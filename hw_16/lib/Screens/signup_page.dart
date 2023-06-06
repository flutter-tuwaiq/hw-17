import 'package:flutter/material.dart';
import 'package:hw_16/widgets/my_app_bar.dart';
import 'package:hw_16/widgets/signup_third_party.dart';

import '../widgets/my_divider.dart';
import '../widgets/serach_fields.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(10, 86),
        child: MyAppBar(),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: SearchFields(),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 59.34),
                child: SizedBox(
                  height: 70.78,
                  width: 325.26,
                  child: FloatingActionButton.extended(
                    label: const Text(
                      'Log in',
                      style: TextStyle(
                          fontFamily: 'SourseSnasPro',
                          fontSize: 17,
                          color: Colors.white,
                          letterSpacing: -0.1),
                    ),
                    backgroundColor: const Color.fromARGB(255, 237, 30, 44),
                    onPressed: () {
                      Navigator.pushNamed(context, '/menu');
                    },
                    splashColor: const Color.fromARGB(255, 242, 195, 55),
                  ),
                ),
              ),
            ],
          ),
          const DividerWidget(),
          const SignupThirdParty()
        ],
      ),
    );
  }
}
