import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color.fromRGBO(138, 170, 170, 1),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none),
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.white,
        ),
        hintText: "Search",
        hintStyle: TextStyle(color: Colors.grey[300]),
        contentPadding: const EdgeInsets.all(8),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
