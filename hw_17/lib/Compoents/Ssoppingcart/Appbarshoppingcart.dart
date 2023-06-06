import 'package:flutter/material.dart';
import 'package:hw_17/Extantions/extantions.dart';
import 'package:hw_17/veiw/ProdactDetalsPage.dart';
import 'package:hw_17/veiw/ProdactsPage.dart';

class Appbarshoppingcart extends StatelessWidget {
  const Appbarshoppingcart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        InkWell(
          onTap: () => context.pushPage(ProdactDetalsPage()),
          child: Icon(
            Icons.arrow_circle_left_outlined,
            size: 40,
            color: Colors.white,
          ),
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
        SizedBox(
          height: 30,
          width: 30,
        )
      ],
    );
  }
}
