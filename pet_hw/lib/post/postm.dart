import 'package:flutter/material.dart';
import 'package:pet_hw/p_detailes.dart';
import 'package:pet_hw/extinstions/context.dart';
import 'package:pet_hw/post/data.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          leading: Icon(Icons.more_vert_rounded),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Icon(Icons.pets_outlined), Text("PETLY")],
          ),
          actions: [
            Icon(Icons.search),
          ]),
      body: SafeArea(
        bottom: false,
        child: ListView.separated(
          itemCount: Data.cards.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                context.pushPage(DetailsPage(chat: Data.cards[index].chat));
              },
              child: Data.cards[index],
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              height: 5,
            );
          },
        ),
      ),
    );
  }
}
