import 'package:hw17/models/product.dart';

import '../components/product_cart.dart';

class Data {
  static List<ProductCart> cards = [
    const ProductCart(
      produc: Produc(
          name: "Pet Oatmeal Spray",
          imagePath: 'assets/p1.png',
          price: '\$223.5',
          description:
              'Sweet almond oil nourishes and provides a wonderful fragrance.13 care ingredients such as Aloe vera, chamomile and panthenol nourish the coat and make it supple.Oatmeal spray conditioner remaining in the coat'),
    ),
    const ProductCart(
      produc: Produc(
          name: 'Fleece Cat Carrier',
          imagePath: 'assets/p2.png',
          price: '\$293.2',
          description: 'this is prodect 2'),
    ),
    const ProductCart(
      produc: Produc(
          name: 'Veterinary Ear Drops',
          imagePath: 'assets/p3.png',
          price: '\$123.4',
          description: 'this is prodect 3'),
    ),
    const ProductCart(
      produc: Produc(
          name: 'Pet Vipes Spray',
          imagePath: 'assets/p4.png',
          price: '\$93.2',
          description: 'this is prodect 4'),
    )
  ];
}

class ListData{
  static List <String> listData=[];
}