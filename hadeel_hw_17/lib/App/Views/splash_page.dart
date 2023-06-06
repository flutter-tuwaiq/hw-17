import 'package:flutter/material.dart';
import 'package:hadeel_hw_17/App/Views/home_page.dart';
import 'package:hadeel_hw_17/App/extensions/context.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    new Future.delayed(const Duration(seconds: 4), () {
      context.pushPage(HomePage());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(
          'lib/App/assets/images/animation.json',
        ),
      ),
    );
  }
}
