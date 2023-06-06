import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white70,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home)),
        BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.basketShopping)),
      ],
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }
}






// BottomNavigationBar customBottomNavigationBar(BuildContext context) {
//   return BottomNavigationBar(
//     currentIndex: 0,
//     type: BottomNavigationBarType.fixed,
//     backgroundColor: Colors.white70,
//     items: [
//       BottomNavigationBarItem(icon: Icon(Icons.home)),
//       BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.basketShopping)),
//     ],
//   );
// }
