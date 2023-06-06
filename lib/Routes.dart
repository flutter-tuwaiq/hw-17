// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:hw_17/Pages/ProductDetails.dart';
import 'package:hw_17/Pages/ProductsPage.dart';

import 'Pages/CartPage.dart';

Map<String, WidgetBuilder> Routes() {
  return {
    '/home': (context) => const ProductPage(),
    '/itemView': (context) => const ProductDetails(),
    '/cart': (context) => const CartPage(cartData: [],),
  };
  
}
