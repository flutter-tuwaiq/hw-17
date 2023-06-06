import 'package:flutter/material.dart';
import 'package:hw_17/Extantions/extantions.dart';
import 'package:hw_17/veiw/ProdactsPage.dart';

class AppBarProdactdetalseComponent extends StatelessWidget {
  const AppBarProdactdetalseComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        InkWell(
          onTap: () => context.pushPage(ProdactsPage()),
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
        Icon(
          Icons.search,
          size: 40,
          color: Colors.white,
        )
      ],
    );
  }
}
