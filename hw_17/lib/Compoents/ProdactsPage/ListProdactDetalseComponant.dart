import 'package:flutter/material.dart';
import 'package:hw_17/Extantions/extantions.dart';
import 'package:hw_17/veiw/ProdactDetalsPage.dart';

import 'prodactDetalsComponents.dart';

class ListProdactDetalse extends StatelessWidget {
  const ListProdactDetalse({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.pushPage(ProdactDetalsPage()),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 17),
        height: 400,
        width: 400,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Row(
              children: [
                prodactDetals(
                  price: "\$242.4",
                  prodactname: "Adidas white T-shirt",
                  Imageprodact:
                      "https://www.tuttosport.com.tn/20777-home_default/adidas-t-shirt-adicolor-classics-trefoil.jpg",
                ),
                SizedBox(
                  width: 16,
                ),
                prodactDetals(
                  price: "\$150",
                  prodactname: "Adidas black T-shirt",
                  Imageprodact:
                      "https://m.media-amazon.com/images/I/21kWvzZ9d+L._AC_SY350_.jpg",
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                prodactDetals(
                  price: "\$100.4",
                  prodactname: "Adidas blue T-shirt",
                  Imageprodact:
                      "https://static-ssp.supersports.co.th/media/catalog/product/s/s/ssp63655063-1.jpg",
                ),
                SizedBox(
                  width: 16,
                ),
                prodactDetals(
                  price: "\$400.4",
                  prodactname: "Adidas res T-shirt",
                  Imageprodact:
                      "https://www.footlocker.com.sa/assets/styles/FootLocker/image-thumb__153182__product_zoom_medium_606x504/317354874530_01.jpg",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
