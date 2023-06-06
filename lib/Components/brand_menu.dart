import 'package:flutter/material.dart';



class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            
            child: Container(
              
              color: Colors.amber.withOpacity(0.5),
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * .02,),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),


                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Chose brand"),
                        const SizedBox(
                          height: 10,
                        ),

                        Row(
                          children: [
                            ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              child: SizedBox(
                                height: 63,
                                width: 112.55,
                                child: Container(
                                    color: Colors.white,
                                    child: Image.asset("lib/assets/image2.png"),),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              child: SizedBox(
                                height: 63,
                                width: 112.55,
                                child: Container(
                                    color: Colors.white,
                                    child: Image.asset("lib/assets/image3.png"),),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              child: SizedBox(
                                height: 60,
                                width: 111.55,
                                child: Container(
                                    color: Colors.white,
                                    child: Image.asset("lib/assets/image4.png"),),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              child: SizedBox(
                                height: 63,
                                width: 112.55,
                                child: Container(
                                    color: Colors.white,
                                    child: Image.asset("lib/assets/image5.png"),),
                              ),
                            ),


                             ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              child: SizedBox(
                                height: 63,
                                width: 112.55,
                                child: Container(
                                    color: Colors.white,
                                    child: Image.asset("lib/assets/image5.png"),),
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      
    );
  }
}
