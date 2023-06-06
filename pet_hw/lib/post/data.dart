
import '../model/chat.dart';
import 'chat_card.dart';

class Data {
  static List<PostCard> cards = [
    const PostCard(
      chat: Chat(
        name: 'p1',
        price: 200,
      ),
    ),
    const PostCard(
      chat: Chat(
        name: 'p2',
        price: 300,
      ),
    ),
    const PostCard(
      chat: Chat(
        name: 'p3',
        price: 300,
      ),
    ),
    const PostCard(
      chat: Chat(
        name: 'p4',
        price: 300,
      ),
    ),
  ];
}
