import 'package:flutter/material.dart';
import 'package:hw_16/Screens/cart.dart';
import 'package:hw_16/Screens/welcome_1.dart';
import 'Screens/menu_page.dart';
import 'Screens/signup_page.dart';
import 'Screens/welcome_2.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/welcome1': (context) => const WelcomePage1(),
        '/welcome2': (context) => const WelcomePage2(),
        '/signup': (context) => const SignupPage(),
        '/menu': (context) => const MenuPage(),
        '/cart': (context) => const Cart(),
      },
      debugShowCheckedModeBanner: false,
      home: const WelcomePage1(),
    );
  }
}
