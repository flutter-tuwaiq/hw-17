import 'package:flutter/material.dart';

class TableText extends StatelessWidget {
  const TableText({
    super.key,
    required this.message,
  });

  final String message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Text(
        message,
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}
