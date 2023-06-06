import 'package:flutter/material.dart';

import 'MyNavigationBar.dart';
import 'Styles/AppStyles.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(246, 201, 83, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: [
              const SizedBox(width: 125),
              Image.asset("/logo.png"),
              Text('PETLY', style: Styles.textStyle2),
            ],
          ),
          const SizedBox(height: 63),
          Text('Shop for your', style: Styles.textStyle1),
          Text('love today', style: Styles.textStyle1),
          const SizedBox(height: 60),
          Container(
            height: 58,
            width: 330,
            decoration: BoxDecoration(
              color: Styles.orangeColor,
              borderRadius: BorderRadius.circular(60),
            ),
            child: ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all(
                    const Color.fromRGBO(46, 46, 46, 1)),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const MyNavigationBar(),
                  ),
                );
              },
              child: Text("Get Started!!", style: Styles.textStyle3),
            ),
          ),
          const SizedBox(height: 135),
          Image.asset("/image-1.png")
        ],
      ),
    );
  }
}
