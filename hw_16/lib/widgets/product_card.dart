// import 'package:flutter/material.dart';

// import '../Constents/spaces.dart';

// class ProductCard extends StatelessWidget {
//   const ProductCard({
//     super.key,
//     required this.productName,
//     required this.productImage,
//     required this.price,
//     required this.rating,
//   });
//   final String productName;
//   final String productImage;
//   final String price;
//   final String rating;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.fromLTRB(0, 16, 0, 14),
//       child: Container(
//         height: 227,
//         width: 163,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(16),
//           boxShadow: const [
//             BoxShadow(
//               color: Color.fromARGB(19, 9, 9, 9),
//               spreadRadius: 2,
//               blurRadius: 2,
//               offset: Offset(0, 4), // Shadow position
//             ),
//           ],
//         ),
//         child: Column(
//           children: [
//             Text(
//               productName,
//               style: const TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//             Image.asset(
//               productImage,
//               height: 160,
//               width: 120,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 const Icon(
//                   Icons.star_border_rounded,
//                   color: Color.fromARGB(255, 248, 139, 14),
//                 ),
//                 Text(
//                   rating,
//                   style: const TextStyle(
//                     color: Color.fromARGB(180, 9, 5, 28),
//                   ),
//                 ),
//                 kHSpace8,
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   'SR  $price',
//                   style: const TextStyle(
//                       color: Color.fromARGB(255, 237, 30, 43),
//                       fontFamily: 'SourseSnasPro',
//                       fontSize: 18),
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
