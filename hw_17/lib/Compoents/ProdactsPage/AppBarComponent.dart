
import 'package:flutter/material.dart';

class AppBarComponent extends StatelessWidget {
  const AppBarComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(
          Icons.list,
          size: 40,
          color: Colors.white,
        ),
        Row(
          children: [
            Icon(
              Icons.storefront_outlined,
              size: 40,
              color: Colors.white,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              "KHALID STORE",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Icon(
          Icons.search,
          size: 40,
          color: Colors.white,
        )
      ],
    );
  }
}
