import 'package:flutter/material.dart';

class NavigateMenu extends StatelessWidget {
  const NavigateMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 42),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
            width: 285,
            child: TextField(
              decoration: InputDecoration(
                disabledBorder: InputBorder.none,
                filled: true,
                fillColor: const Color.fromARGB(208, 251, 235, 222),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(196, 251, 235, 222))),
                hintText: 'What do you want to order?',
                hintStyle: const TextStyle(
                    fontSize: 12, color: Color.fromARGB(255, 253, 167, 68)),
                border: const OutlineInputBorder(),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 238, 141, 31),
                  size: 32,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
