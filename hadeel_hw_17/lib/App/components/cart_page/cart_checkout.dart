import 'package:flutter/material.dart';

import '../spaces.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Price',
                style: TextStyle(
                    color: Color.fromRGBO(116, 150, 150, 1),
                    fontSize: 22,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                '\$64',
                style: TextStyle(
                    color: Color.fromRGBO(210, 170, 150, 1),
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          height24,
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              backgroundColor: Color.fromRGBO(210, 170, 150, 1),
              elevation: 0,
              minimumSize: const Size(200, 44),
            ),
            child: const Text(
              "Check Out",
              style: TextStyle(fontSize: 18),
            ),
          ),
          height24,
        ],
      ),
    );
  }
}
