import 'package:flutter/material.dart';
import 'package:flutter_application_10/pages/home.dart';

class firstpage extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("https://1.bp.blogspot.com/-LQsvlPhmDE0/YPBbZtoRTDI/AAAAAAACKcw/1ALz0I-xpc8QB60bUm7VmXzEtkqvrJitACLcBGAsYHQ/s1024/1-iphone-wallpapers-hd-%25D8%25AE%25D9%2584%25D9%2581%25D9%258A%25D8%25A7%25D8%25AA-%25D8%25A7%25D9%258A%25D9%2581%25D9%2588%25D9%2586-%25D8%25A7%25D9%2594%25D9%258A%25D9%2581%25D9%2588%25D9%2586-129-576x1024.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Container(height: 300,width: 300,
              padding: const EdgeInsets.all(40.0),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.7),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Text(
                    "Shop ",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,fontSize: 40,
                      color: Color.fromARGB(255, 14, 16, 16)),
                  ),
                  Text("for your love today",
                   style: TextStyle(
                    fontWeight: FontWeight.w500,fontSize: 20),),
                  SizedBox(height: 20.0),
                  ClipRRect(borderRadius: BorderRadius.circular(20),
                    child: SizedBox(width: 200,height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 4, 4, 4),
                 ),
                        onPressed: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context) =>  HomePage()));
                        },
                        child: Text('Get Started',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    
  }
}

