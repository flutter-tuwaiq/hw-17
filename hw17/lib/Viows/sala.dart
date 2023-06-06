import 'package:flutter/material.dart';
import 'package:hw17/Extinshen/ExtensionBoton.dart';

import '../Model/Model.dart';
import 'StorePage.dart';

class Sala extends StatefulWidget {
  const Sala({super.key});

  @override
  State<Sala> createState() => SalaState();
}

class SalaState extends State<Sala> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [SizedBox()],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image(image: AssetImage("Imags/Vector.png")),
                    Text("PETLY", style: TextStyle(color: Colors.black))
                  ],
                ),
                Icon(Icons.abc, color: Colors.black)
              ],
            )),
        backgroundColor: const Color.fromRGBO(255, 215, 64, 1),
        body: Column(children: [
          const SizedBox(
            width: 20,
            height: 30,
          ),
          sala
        ]),
       bottomNavigationBar: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                InkWell(
                  child: const Icon(Icons.home, size: 50),
                  onTap: () {
                    context.pushPage(const StorePage());
                  },
                )
              ],
            ),
            Row(
              children: [
                InkWell(
                  child: const Icon(Icons.store, size: 50),
                  onTap: () {
                    context.pushPage(const Sala());
                  },
                )
              ],
            )
          ]),);
  }
}
