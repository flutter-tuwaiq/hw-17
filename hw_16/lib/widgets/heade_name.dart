import 'package:flutter/material.dart';

class HeaderName extends StatelessWidget {
  const HeaderName({
    super.key,
    required this.header,
  });
  final String header;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(42, 22, 0, 0),
      child: Row(
        children: [
          Text(
            header,
            style: const TextStyle(
                fontFamily: 'SourseSnasPro',
                fontSize: 20,
                fontWeight: FontWeight.w100,
                letterSpacing: 0.5),
          ),
        ],
      ),
    );
  }
}
