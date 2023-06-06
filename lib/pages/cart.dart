import 'package:flutter/material.dart';
import 'package:flutter_application_10/model/prodect.dart';

class Cart extends StatelessWidget {
  List<Product> items;
  Cart({super.key, required this.items});
    void removeItem(Product product) {
    items.remove(product);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: InkWell(
          onTap: Navigator.of(context).pop,
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: const [
          Icon(
            Icons.more_vert,
            color: Colors.black,
          ),
        ],
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: SizedBox(
              height: 80,
              width: 80,
              child: Image.network(
                items[index].image,
                fit: BoxFit.cover,
              ),
            ),
            title: Text(
              items[index].name,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            subtitle: Text(
              items[index].price,
              style: const TextStyle(color: Colors.black38),
            ),
          );
        },
      ),
    );
  }
}
