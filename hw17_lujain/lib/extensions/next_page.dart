import 'package:flutter/material.dart';

extension Nav on BuildContext {
  nextPage(Widget page) {
    Navigator.of(this).push(MaterialPageRoute(builder: ((context) {
      return page;
    })));
  }
}
