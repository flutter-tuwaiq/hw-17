import 'package:flutter/material.dart';

class SearchFields extends StatelessWidget {
  const SearchFields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromARGB(255, 255, 246, 245),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 64,
                    color: Color.fromARGB(255, 255, 246, 245),
                  ),
                  borderRadius: BorderRadius.circular(36),
                ),
                label: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Text(
                    'Email Adress',
                    style: TextStyle(
                        fontFamily: 'SourseSnasPro',
                        color: Colors.black,
                        letterSpacing: 0.3,
                        fontSize: 15),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 32,
        ),
        Stack(
          children: [
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromARGB(255, 255, 246, 245),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 64,
                    color: Color.fromARGB(255, 255, 246, 245),
                  ),
                  borderRadius: BorderRadius.circular(36),
                ),
                label: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Text(
                    'Password',
                    style: TextStyle(
                        fontFamily: 'SourseSnasPro',
                        color: Colors.black,
                        letterSpacing: 0.3,
                        fontSize: 15),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.visibility_off_outlined),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 32,
        ),
        TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color.fromARGB(255, 255, 246, 245),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 64,
                color: Color.fromARGB(255, 255, 246, 245),
              ),
              borderRadius: BorderRadius.circular(36),
            ),
            label: const Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Text(
                'Confirm Password',
                style: TextStyle(
                    fontFamily: 'SourseSnasPro',
                    color: Colors.black,
                    letterSpacing: 0.3,
                    fontSize: 15),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
