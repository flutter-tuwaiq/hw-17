import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: const Text(
        'Sign up',
        style: TextStyle(
          color: Colors.black,
          fontFamily: 'SourseSnasPro',
        ),
      ),
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 32,
        ),
        onPressed: () => Navigator.of(context).pop(),
      ),
    );
  }
}
