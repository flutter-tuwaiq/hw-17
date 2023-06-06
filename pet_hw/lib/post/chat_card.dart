
import 'package:flutter/material.dart';

import '../model/chat.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key, required this.chat});

  final Chat chat;

  @override
  Widget build(BuildContext context) {
    // final unreadMessagesCount = chat.messages.where((element) => element.isRead == false).length;
    return Container(
      height: 300,
      width: 1,
      padding: const EdgeInsets.all(50),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.elliptical(50, 60)),
      ),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.favorite),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                      chat.imageUrl ??
                          'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSxiB4cUQOcbUc6WnaSNijwmLoIkqHijqUU_48EGFAtbnSx0k9-',
                      width: 100.0,
                      height: 100.0),
                )),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              '${chat.name}',
              style: TextStyle(
                  fontSize: 12.86,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              ' \$ ${chat.price} ',
              style: TextStyle(
                  fontSize: 10.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.orange[900]),
            ),
            const Row(
              children: [
                Row(children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 12,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 12,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 12,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 12,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 12,
                  )
                ]),
                SizedBox(
                  width: 40,
                ),
                Icon(Icons.add_shopping_cart_outlined)
              ],
            ),
          ],
        ),
      ),
    );

    
}

}