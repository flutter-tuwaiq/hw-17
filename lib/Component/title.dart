import 'package:flutter/cupertino.dart';

class title extends StatelessWidget {
  const title({
    super.key,
    required this.message,
  });

  final String message;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        message,
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}