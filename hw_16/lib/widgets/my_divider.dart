import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({
    super.key,
  });
//horizontal: 50, vertical: 79.68
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(50, 79.68, 50, 0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          const Divider(
              height: 50,
              thickness: 1,
              color: Color.fromARGB(255, 222, 222, 222)),
          Container(
            color: Colors.white,
            height: 30,
            width: 40,
          ),
          const Text(
            'OR',
            style: TextStyle(
                fontSize: 18, fontFamily: 'ThinFont', color: Colors.black),
          ),
        ],
      ),
    );
  }
}
