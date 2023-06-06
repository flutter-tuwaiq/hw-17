import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
  static Color text1Color = const Color.fromRGBO(0, 0, 0, 0.82);
  static Color text2Color = const Color.fromRGBO(5, 5, 5, 0.66);
  static Color priceColor = const Color.fromARGB(255, 174, 125, 0);
  static Color orangeColor = const Color.fromARGB(255, 217, 150, 81);
  static Color navIconsColor = const Color.fromARGB(255, 139, 139, 139);
  static Color textFieldColor = const Color.fromARGB(127, 139, 139, 139);

// Main text styles
  static TextStyle textStyle1 = GoogleFonts.inter(
      fontSize: 40, color: text1Color, fontWeight: FontWeight.w400);
  static TextStyle textStyle2 = GoogleFonts.inter(
      fontSize: 27, color: Colors.black, fontWeight: FontWeight.w400);
  static TextStyle textStyle3 = GoogleFonts.inter(
      fontSize: 24, color: Colors.white, fontWeight: FontWeight.w200);
  static TextStyle textStyle4 = GoogleFonts.inter(
      fontSize: 18, color: Colors.black, fontWeight: FontWeight.w400);
  static TextStyle headLineStyle1 = GoogleFonts.inter(
      fontSize: 15, color: text1Color, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle2 = GoogleFonts.inter(
      fontSize: 13, color: text2Color, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle3 = GoogleFonts.inter(
      fontSize: 14, color: priceColor, fontWeight: FontWeight.w500);

      
  static TextStyle headLineStyle4 = GoogleFonts.poppins(
      fontSize: 14, color: text1Color, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle5 = GoogleFonts.poppins(
      fontSize: 12, color: text2Color, fontWeight: FontWeight.w400);

}
