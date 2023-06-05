import 'package:flutter/material.dart';

class Titles extends StatelessWidget {
  const Titles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
        width: MediaQuery.of(context).size.width * 0.4,
        child: const Text(
          "Name",
          style: TextStyle(fontSize: 20),
        ),
      ),
      title: const Text(
        " Price",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 18),
      ),
      trailing: const Text(
        "Remove",
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
