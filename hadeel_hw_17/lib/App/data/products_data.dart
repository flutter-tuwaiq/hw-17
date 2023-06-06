import 'package:hadeel_hw_17/App/models/product.dart';

import '../components/home_page/product_card.dart';

class ProductsData {
  static List<ProductCard> cards = [
    ProductCard(
      product: Product(
        title: 'Atollo Metal',
        briefDescription: 'It become one of the icons of Italian design.',
        price: '64',
        image: 'lib/App/assets/images/pic1.png',
        description:
            'Atollo The geometric shapes that compose it - the cylinder, the cone and the hemisphere - have given birth to a decorative and essential product at the same time',
        details: {
          "Material": "Metal",
          "Light source": "LED bulb",
          "Power": "Max 40W"
        },
      ),
    ),
    ProductCard(
      product: Product(
        title: 'Revolve',
        briefDescription: 'Each piece will age and mature with you',
        price: '59',
        image: 'lib/App/assets/images/pic2.png',
        description:
            ' The geometric shapes that compose it - the cylinder, the cone and the hemisphere - have given birth to a decorative and essential product at the same time',
        details: {
          "Material": "Metal",
          "Light source": "LED bulb",
          "Power": "Max 40W"
        },
      ),
    ),
    ProductCard(
      product: Product(
        title: 'Bradbury',
        briefDescription: 'It create a warm glow around the room',
        price: '52',
        image: 'lib/App/assets/images/pic3.png',
        description:
            ' The geometric shapes that compose it - the cylinder, the cone and the hemisphere - have given birth to a decorative and essential product at the same time',
        details: {
          "Material": "Metal",
          "Light source": "LED bulb",
          "Power": "Max 40W"
        },
      ),
    ),
    ProductCard(
      product: Product(
        title: 'Martha',
        briefDescription: 'Brighten up your work space with this desk lamp',
        price: '70',
        image: 'lib/App/assets/images/pic4.png',
        description:
            ' The geometric shapes that compose it - the cylinder, the cone and the hemisphere - have given birth to a decorative and essential product at the same time',
        details: {
          "Material": "Metal",
          "Light source": "LED bulb",
          "Power": "Max 40W"
        },
      ),
    ),
  ];
}
