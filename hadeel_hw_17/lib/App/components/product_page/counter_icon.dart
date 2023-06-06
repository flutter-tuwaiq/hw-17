import 'package:flutter/material.dart';

class CounterIcon extends StatelessWidget {
  const CounterIcon({
    super.key,
    required this.iconName,
  });

  final IconData iconName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: 30,
      height: 30,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(138, 170, 170, 1),
        shape: BoxShape.circle,
      ),
      child: Icon(iconName, color: Colors.white),
    );
  }
}
