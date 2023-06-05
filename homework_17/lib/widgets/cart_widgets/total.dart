import 'package:flutter/material.dart';

class Total extends StatelessWidget {
  const Total({
    super.key,
    required this.total,
  });

  final int total;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Text(
        "Total",
        style: TextStyle(fontSize: 20),
      ),
      title: Text(
        "$total",
        textAlign: TextAlign.center,
      ),
      trailing: ElevatedButton(
        onPressed: () {},
        style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.black)),
        child: const Text("Buy"),
      ),
    );
  }
}
