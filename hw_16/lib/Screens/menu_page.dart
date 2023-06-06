import 'package:flutter/material.dart';
import 'package:hw_16/Screens/details/details_screen.dart';
import '../Model/Product.dart';
import '../widgets/category_type.dart';
import '../widgets/heade_name.dart';
import '../widgets/item_card.dart';
import '../widgets/nav_bar.dart';
import '../widgets/profil_photo.dart';
import '../widgets/search_in_menu.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const NavBar(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProfilePhoto(),
            const NavigateMenu(),
            const HeaderName(
              header: 'Categories',
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CategoryType(
                  type: 'snacks',
                  imagePath: 'assets/images/download-1-1-1.png',
                ),
                CategoryType(
                  type: 'Drinks',
                  imagePath: 'assets/images/download-3-1.png',
                ),
                CategoryType(
                  type: 'Food',
                  imagePath: 'assets/images/download-3-2.png',
                ),
              ],
            ),
            const HeaderName(
              header: 'Drinks',
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(20),
              child: GridView.builder(
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ItemCard(
                  product: products[index],
                  press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                        product: products[index],
                      ),
                    ),
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
