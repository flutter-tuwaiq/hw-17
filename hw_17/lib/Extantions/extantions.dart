import 'package:flutter/material.dart';

extension Push on BuildContext {
  pushPage(Widget page) {
    return Navigator.of(this).push(
      MaterialPageRoute(builder: (context) {
        return page;
      }),
    );
  }
}