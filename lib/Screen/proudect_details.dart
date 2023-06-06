import 'package:flutter/material.dart';
import 'package:hw_17/Screen/prudect_cart.dart';




class OerderPage extends StatelessWidget {
  const OerderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      
      body: Stack(
            children: <Widget>[
              
              Column(
                
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height * .35,
                    width: MediaQuery.of(context).size.width * 1 ,
                    color: Color.fromARGB(255, 233, 211, 165),
                    
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 40 ,horizontal: 90),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(35),
                                          child: Image.asset( "lib/assets/Vector.png",fit: BoxFit.contain , height: 130,width: 150, ),
                                        ),
                                        Positioned(
                                            child: Image.asset("lib/assets/71fN75kIuwL1.png",fit: BoxFit.cover, height: 200,
                                        ))
                                      ],
                         ),
                        ],
                      ),
                    ),
                  ),
                  
                ],
              ),
           
              Container(
                
                alignment: Alignment.topCenter,
                padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * .33,
                
                ),
                child: ClipRRect(
                  borderRadius:  BorderRadius.circular(20),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child:   Container(
                      color: Colors.white,
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Container(
                            height: 50,
                            width: 250,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromARGB(255, 249, 226, 148)
                            ),
                            // color: const Color.fromARGB(255, 255, 7, 7),
                            child:  Row( 
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                               Container(
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              //  color: const Color.fromARGB(255, 0, 0, 0)
                            ),
                                child: Text("Product")),
                               Text("Details"),
                               Text("Review"),
                            ],
                            ),
                           ),
                         ),
                          ],
                         ),
                          Padding(
                           padding: EdgeInsets.symmetric(vertical: 20 , horizontal: 30),
                           child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               const Text("Pet Oatmeal Spray" , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w700),),
                               const Text("\$233.4" , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w500 , color: Color.fromARGB(255, 192, 144, 0)),),
                               const SizedBox(height: 10,),
                               const Text("Description"),
                               const SizedBox(height: 5,),
                               const Text("mixture of fragrant essential oils or aroma compounds (fragrances), fixatives and solvents, usually in liquid form, used to give the human body, animals, food, objects, and living-spaces an agreeable scent."),
                               const SizedBox(height: 10,),
                               const Text("Rating :"),
                               const SizedBox(height: 5,),
                               const Row(
                                children: [
                                       Icon( Icons.star,size: 15,color: Color.fromARGB(255, 243, 186, 0),),
                                        Icon(Icons.star,size: 15,color: Color.fromARGB(255, 243, 186, 0),),
                                        Icon(Icons.star,size: 15,color: Color.fromARGB(255, 243, 186, 0), ),
                                        Icon(Icons.star,size: 15,color: Color.fromARGB(255, 243, 186, 0),),
                                        Icon(Icons.star,size: 15, color: Color.fromARGB(255, 243, 186, 0),),
                                        SizedBox(width: 5,),
                                        Text("210+")
                                ],
                               ),

                               Padding(
                                 padding: const EdgeInsets.all(20),
                                 child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children:<Widget> [
                                   ElevatedButton(
                                        
                                        child: Text("Add to Card",style: TextStyle(color: Colors.black)),
                                        style: ElevatedButton.styleFrom(
                                          
                                        backgroundColor: Color.fromARGB(255, 249, 226, 148),
                                     
                                        elevation: 0,
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const ProudectCart()));
                                        },
                                      ),
                                    SizedBox(width: 20,),
                                      Container(
                                        
                                        child: ElevatedButton(
                                           
                                          child: Text("Buy" ,style: TextStyle(color: Colors.black)),
                                        style: ElevatedButton.styleFrom(
                                        backgroundColor: Color.fromARGB(255, 249, 226, 148),
                                        elevation: 0,
                                         ),
                                           onPressed: () {
                                             
                                           },
                                         ),
                                      ),
                                   
                                   
                                  ],
                                 ),
                               ),
                             ],
                           ),
                         )
                        ],
                      ),
                      
                      
                      
                        
                        ),
                    ),
                  ),
                ),
              
            ],
          ),
    );
  }
}
