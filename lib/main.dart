import 'package:flutter/material.dart';
import 'Components/app_bar.dart';
import 'Screen/home_page.dart';



void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: customAppBar,
        body:  const SafeArea(child:  HomePage()),
        


        bottomNavigationBar: Theme(
           data: Theme.of(context).copyWith(
           canvasColor: Colors.white,
        ),

         child: Container(

           child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
             items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined,
                      color: Color.fromARGB(255, 0, 0, 0)),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.shopping_bag_outlined,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  label: ""),

            ],
          ),
         ), 
        ),
      ),
      
    );
  }
}
