import 'package:flutter/material.dart';

final myappBar = AppBar(
  backgroundColor: Colors.white,
  elevation: 0,
  // automaticallyImplyLeading: false,
  leading: const BackButton(
    color: Colors.black,
  ),
  title: const Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: EdgeInsets.all(94),
        child: Text(
          'PETLY',
          style: TextStyle(color: Colors.black),
        ),
      ),
      Icon(
        Icons.search,
        color: Colors.black,
      ),
    ],
  ),
);
