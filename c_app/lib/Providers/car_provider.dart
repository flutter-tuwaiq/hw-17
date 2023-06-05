import 'package:c_app/Models/cart_model.dart';
import 'package:flutter/foundation.dart';

class CartProvider with ChangeNotifier {
  final List<CartModel> _cartItems = [];

  List<CartModel> get cartItems => _cartItems;

  void addToCart(CartModel item) {
    _cartItems.add(item);
    notifyListeners();
  }

  void removeFromCart(int itemId) {
    _cartItems.removeAt(itemId);
    // _cartItems.removeWhere((item) => item.image == itemId);
    notifyListeners();
  }

  void updateQuantity(String itemId, int newQuantity) {
    final item = _cartItems.firstWhere((item) => item.image == itemId);
    notifyListeners();
  }
}
