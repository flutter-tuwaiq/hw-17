import 'package:flutter/material.dart';

import '../Screen/proudect_details.dart';

class ProductMenu extends StatelessWidget {
  const ProductMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Chose Product"),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                child: SizedBox(
                  height: 210,
                  width: 150,
                  child: Container(
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(6),
                                child: CircleAvatar(
                                    backgroundColor:
                                        Colors.redAccent.withOpacity(0.8),
                                    radius: 10,
                                    child: const Icon(
                                      Icons.favorite,
                                      size: 10,
                                      color: Colors.white,
                                    )),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Stack(
                                children: [

                                  InkWell(
                                    onTap: () { 
                                       Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const OerderPage()));
                                     },
                                      child:  Center(
                                        child:  Image.asset("lib/assets/71fN75kIuwL1.png",height: 100,fit: BoxFit.cover,
                                  ),
                                        
                                  //       Image.asset(
                                  //       "lib/assets/Vector.png",fit: BoxFit.cover,height: 112,width: 100,
                                  //     ),
                                  // Positioned(
                                  //     child: Image.asset("lib/assets/71fN75kIuwL1.png",height: 100,fit: BoxFit.cover,
                                  // ),
                                  // ),
                                  
                                ),
                                ),
                                      
                                      
                                     
                                  
                                ],
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("New Product item"),
                                    SizedBox(height: 5,),
                                    Row(
                                      children: [
                                        Row(
                                          children: [
                                            Text("\$233.5",style: TextStyle(fontSize: 15, color: Color.fromARGB( 255, 181, 136, 0),
                                                )),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon( Icons.star,size: 11,color: Colors.amber,),
                                        Icon(Icons.star,size: 11,color: Colors.amber,),
                                        Icon(Icons.star,size: 11,color: Colors.amber, ),
                                        Icon(Icons.star,size: 11,color: Colors.amber,),
                                        Icon(Icons.star,size: 11, color: Colors.amber,),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
              ),

              SizedBox(width: 30,),
              ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                child: SizedBox(
                  height: 210,
                  width: 150,
                  child: Container(
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(6),
                                child: CircleAvatar(
                                    backgroundColor:
                                        Colors.redAccent.withOpacity(0.8),
                                    radius: 10,
                                    child: const Icon(
                                      Icons.favorite,
                                      size: 10,
                                      color: Colors.white,
                                    )),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    "lib/assets/Vector.png",fit: BoxFit.cover,height: 112,width: 100,
                                  ),
                                  Positioned(
                                      child: Image.asset("lib/assets/71fN75kIuwL1.png",height: 100,fit: BoxFit.cover,
                                  ))
                                ],
                              ),
                            ],
                          ),
                          
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("New Product item"),
                                    SizedBox(height: 5,),
                                    Row(
                                      children: [
                                        Row(
                                          children: [
                                            Text("\$233.5",style: TextStyle(fontSize: 15, color: Color.fromARGB( 255, 181, 136, 0),
                                                )),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon( Icons.star,size: 11,color: Colors.amber,),
                                        Icon(Icons.star,size: 11,color: Colors.amber,),
                                        Icon(Icons.star,size: 11,color: Colors.amber, ),
                                        Icon(Icons.star,size: 11,color: Colors.amber,),
                                        Icon(Icons.star,size: 11, color: Colors.amber,),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
              ),

              

              
             //-----------------------------------------
             
            ],
          ),
          SizedBox(width: 30, height: 20,),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                    child: SizedBox(
                      height: 210,
                      width: 150,
                      child: Container(
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(6),
                                    child: CircleAvatar(
                                        backgroundColor:
                                            Colors.redAccent.withOpacity(0.8),
                                        radius: 10,
                                        child: const Icon(
                                          Icons.favorite,
                                          size: 10,
                                          color: Colors.white,
                                        )),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Stack(
                                    children: [
                                      Image.asset(
                                        "lib/assets/Vector.png",fit: BoxFit.cover,height: 112,width: 100,
                                      ),
                                      Positioned(
                                          child: Image.asset("lib/assets/71fN75kIuwL1.png",height: 100,fit: BoxFit.cover,
                                      ))
                                    ],
                                  ),
                                ],
                              ),
                              
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("New Product item"),
                                        SizedBox(height: 5,),
                                        Row(
                                          children: [
                                            Row(
                                              children: [
                                                Text("\$233.5",style: TextStyle(fontSize: 15, color: Color.fromARGB( 255, 181, 136, 0),
                                                    )),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon( Icons.star,size: 11,color: Colors.amber,),
                                            Icon(Icons.star,size: 11,color: Colors.amber,),
                                            Icon(Icons.star,size: 11,color: Colors.amber, ),
                                            Icon(Icons.star,size: 11,color: Colors.amber,),
                                            Icon(Icons.star,size: 11, color: Colors.amber,),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              
                            ],
                            
                          )),
                    ),
                  ),
                ],
              ),

              
        ],
      
    );
  }
}
