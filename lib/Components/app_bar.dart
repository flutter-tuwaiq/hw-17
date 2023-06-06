import 'package:flutter/material.dart';

final customAppBar = AppBar(
  centerTitle: true,
 backgroundColor: Colors.white,
 elevation: 0,
  leading: const Icon(
    Icons.blur_linear_sharp,
    color: Colors.black,
  ),
  
  title: 
  Center(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      child: Row(
        children: [
          Image.asset("lib/assets/map_pet-store.png"),
          Text("PELTY",style: TextStyle(color: Colors.black),
      ),
        ],
      ),
    ),
  ),
  //  Text("PELTY",style: TextStyle(color: Colors.black),
  // ),
  actions: const [
    Icon(
      Icons.search,
      color: Colors.black,
    )
  ],
);










// iconTheme: IconThemeData(
//     color: Colors.black, //change your color here
//   ),
//   title: Text("Sample"),
//   centerTitle: true,
// ),