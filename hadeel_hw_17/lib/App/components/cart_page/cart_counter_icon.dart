import 'package:flutter/material.dart';

class CartCounterIcon extends StatelessWidget {
  const CartCounterIcon({
    super.key,
    required this.iconName,
  });

  final IconData iconName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
      width: 25,
      height: 25,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(203, 221, 221, 1),
        shape: BoxShape.circle,
      ),
      child: Icon(iconName, color: Colors.white),
    );
  }
}
