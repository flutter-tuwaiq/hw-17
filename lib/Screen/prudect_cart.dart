import 'package:flutter/material.dart';

import '../Components/app_bar.dart';

class ProudectCart extends StatelessWidget {
  const ProudectCart({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: customAppBar,
      body: Container(
        color: const Color.fromARGB(255, 255, 227, 143),
        child: Column(
          children: [
           SizedBox(width: 6,),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 130,
                decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [
                    Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(35),
                                child: Image.asset( "lib/assets/Vector.png",fit: BoxFit.fill , height: 60,width: 60, ),
                              ),
                              Positioned(
                                  child: Image.asset("lib/assets/71fN75kIuwL1.png",fit: BoxFit.contain, height: 100,
                              )
                            ),
                            ],
                      ),
                      
                     Container(
                      
                       child: const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Text("Pet Oatmeal Spray"),
                            Text("\$233.4"),
                         
                            Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                              
                                  children: [
                                         Icon( Icons.star,size: 15,color: Color.fromARGB(255, 243, 186, 0),),
                                          Icon(Icons.star,size: 15,color: Color.fromARGB(255, 243, 186, 0),),
                                          Icon(Icons.star,size: 15,color: Color.fromARGB(255, 243, 186, 0), ),
                                          Icon(Icons.star,size: 15,color: Color.fromARGB(255, 243, 186, 0),),
                                          Icon(Icons.star,size: 15, color: Color.fromARGB(255, 243, 186, 0),),
                                          SizedBox(width: 5,),
                                          Text("210+"),
                       ],
                      ),
                       
                        ],
                       ),
                     ),
                       const Row(
                          children: [  
                            Icon(Icons.delete ,size: 20,color: Colors.red,)
                          ],
                         ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}