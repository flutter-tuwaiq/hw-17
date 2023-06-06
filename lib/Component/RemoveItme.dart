import 'package:flutter/material.dart';
import 'package:flutter_application_10/model/prodect.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
    required this.item,
    required this.remove,
  });

  final Product item;
  final Function() remove;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: SizedBox(
          width: MediaQuery.of(context).size.width * 0.35,
          child: Text(
            "${item.name} ",
            style: const TextStyle(fontSize: 18),
          ),
        ),
        title: Text(
          "${item.price} SR",
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 18),
        ),
        trailing: InkWell(
          onTap: () {
            remove.call();
          },
          child: const Icon(
            Icons.remove_circle,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}