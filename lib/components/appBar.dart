import 'package:flutter/material.dart';


AppBar customAppBar(
  BuildContext context,
) {
  return AppBar(
    leading: IconButton(
      icon: Icon(Icons.navigate_before),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    title: Text("PEPCOL"),
    centerTitle: true,
  );
}
