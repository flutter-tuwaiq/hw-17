import 'package:flutter/material.dart';

class BrandsWidget extends StatelessWidget {
  const BrandsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(8),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            height: 63,
            width: 112,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.15),
                  spreadRadius: 0,
                  blurRadius: 6,
                  offset: const Offset(1, 2),
                ),
              ],
              image: const DecorationImage(
                image: AssetImage("brand-1.png"),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Container(
            height: 63,
            width: 112,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.15),
                  spreadRadius: 0,
                  blurRadius: 6,
                  offset: const Offset(1, 2),
                ),
              ],
              image: const DecorationImage(
                image: AssetImage("brand-2.png"),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Container(
            height: 63,
            width: 112,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.15),
                  spreadRadius: 0,
                  blurRadius: 6,
                  offset: const Offset(1, 2),
                ),
              ],
              image: const DecorationImage(
                image: AssetImage("brand-3.png"),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Container(
            height: 63,
            width: 112,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.15),
                  spreadRadius: 0,
                  blurRadius: 6,
                  offset: const Offset(1, 2),
                ),
              ],
              image: const DecorationImage(
                image: AssetImage("brand-4.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
