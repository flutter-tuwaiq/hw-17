import 'package:hw_17/Models/product.dart';
import 'package:hw_17/components/product_card.dart';

class CardData {
  static List<ProductCard> cartList = [];

  static List<ProductCard> cards = const [
    ProductCard(
      product: Product(
          imageUrl:
              'https://www.makeupforever.sa/dw/image/v2/BDCL_PRD/on/demandware.static/-/Sites-mufe-master-catalog/default/dw7610b034/hi-res/HDSKIN_PALETTE/3548752189095_1_enlarged_2-min.jpg?sw=380&sh=380&sfrm=png&bgcolor=ffffff',
          productName: 'HD SKIN FACE PALETTE',
          price: '365',
          discription:
              'We have co-created with our pros two harmonies of HD Skin Face Palette to match all your skin-tone needs. It\’s now possible to unify and beautify your skin thanks to just one palette with 12 complementary cream shades that correct and enhance your natural beauty.'),
    ),
    ProductCard(
      product: Product(
          imageUrl:
              'https://www.makeupforever.sa/dw/image/v2/BDCL_PRD/on/demandware.static/-/Sites-mufe-master-catalog/default/dw2eb7c128/hi-res/MIST23/US-3548752194693_I000064114_HD-SKIN-MATTE-VELVET-23-11g-1N14_Face_0.jpg?sw=320&sh=320&sfrm=png&bgcolor=ffffff',
          productName: 'HD SKIN POWDER FOUNDATION',
          price: '210',
          discription:
              'No one wants a compact foundation to be cakey and powdery: that’s why we created HD Skin Powder Foundation. Because every skin and shade is unique, our new compact foundation is available in 38 shades, to enhance every skin tone with 4 clear families (light, medium, tan, deep) and 3 undertones (red, neutral and yellow).'),
    ),
    ProductCard(
      product: Product(
          imageUrl:
              'https://www.makeupforever.sa/dw/image/v2/BDCL_PRD/on/demandware.static/-/Sites-mufe-master-catalog/default/dw38ec1d2e/hi-res/Professionall_Mascara/US-3548752188425_I000038000_THE-PROFESSIONALL-MASCARA-22-16ML-_Face_0.jpg?sw=380&sh=380&sfrm=png&bgcolor=ffffff',
          productName: 'THE PROFESSIONALL MASCARA',
          price: '135',
          discription:
              'The Professionall mascara is a universal mascara for all, in 2 easy steps. It\'s also 24-hour wear* flake free.'),
    ),
    ProductCard(
      product: Product(
          imageUrl:
              'https://www.makeupforever.sa/dw/image/v2/BDCL_PRD/on/demandware.static/-/Sites-mufe-master-catalog/default/dw501a6e65/images/I000017230/3548752094061_I000017230_prosculptingbrowbrun_Face_0.jpg?sw=320&sh=320&sfrm=png&bgcolor=ffffff',
          productName: 'PRO SCULPTING BROW',
          price: '135',
          discription:
              'Pro Sculpting Brow is an eyebrow pencil and highlighter that\'s specifically designed to contour and sculpt brows in 3 easy steps. Its slanted matte edge colors and defines, the brush combs and sculpts and the shimmery sponge tip highlights for perfectly sculpted brows.'),
    ),
    ProductCard(
      product: Product(
          imageUrl:
              'https://www.makeupforever.sa/dw/image/v2/BDCL_PRD/on/demandware.static/-/Sites-mufe-master-catalog/default/dwdb072ea9/images/I000022012/3548752119818_I000022012_Artist_Liquid_Matte_403_Face_0.jpg?sw=320&sh=320&sfrm=png&bgcolor=ffffff',
          productName: 'ARTIST LIQUID MATTE',
          price: '115',
          discription: 'ARTIST LIQUID MATTE is an ultra-matte liquid lipstick that allows professional makeup artists and makeup enthusiasts to create bold expressions of color. Concentrated in pigments and powders, Artist Liquid Matte provides truly matte, saturated color payoff with a lightweight feel.'),
    ),
    ProductCard(
      product: Product(
          imageUrl:
              'https://www.makeupforever.sa/dw/image/v2/BDCL_PRD/on/demandware.static/-/Sites-mufe-master-catalog/default/dw6206e3ca/images/I000020202/3548752143257_I000020202_lipshot_202_Face_0.jpg?sw=320&sh=320&sfrm=jpg&bgcolor=ffffff',
          productName: 'ARTIST LIP SHOT',
          price: '99',
          discription: 'A long-lasting lacquer stylo that gives your lips a shot of color.'),
    ),
    ProductCard(
      product: Product(
          imageUrl:
              'https://www.makeupforever.sa/dw/image/v2/BDCL_PRD/on/demandware.static/-/Sites-mufe-master-catalog/default/dw2a63a490/images/17115/3548752058612_17115_kitcremesourcilswaterproofblond_Face_0.jpg?sw=320&sh=320&sfrm=png&bgcolor=ffffff',
          productName: 'AQUA BROW KIT',
          price: '249',
          discription: 'HD Aqua Brow\'s highly-pigmented eyebrow gel formula enhances and reshapes natural brows. Thanks to its superior waterproof finish, creamy texture, and a high concentration of pigments, it creates a natural, strong-hold finish that won\'t fade. This kit includes a spoolie and angled brush for on-the-go grooming.'),
    ),
    // ProductCard(
    //   product: Product(imageUrl: '', productName: '', price: ''),
    // ),
    // ProductCard(
    //   product: Product(imageUrl: '', productName: '', price: ''),
    // ),
  ];
}
