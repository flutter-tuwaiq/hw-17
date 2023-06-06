import 'package:flutter/material.dart';

AppBar customAppBar(BuildContext context) {
  return AppBar(
    leading: IconButton(
        onPressed: () => Navigator.of(context).pop(),
        icon: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100), color: Colors.white),
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ))),
    flexibleSpace: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/image02.png'),
          fit: BoxFit.cover,
        ),
      ),
    ),
    bottom: const PreferredSize(
      preferredSize: Size.fromHeight(70),
      child: Padding(
        padding: EdgeInsets.only(
          top: 20,
          bottom: 8.0,
          left: 8.0,
          right: 8.0,
        ),
      ),
    ),
  );
}
