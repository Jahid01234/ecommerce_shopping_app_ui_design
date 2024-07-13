import 'package:ecommerce_shopping_app_ui_design/screens/cart_screen.dart';
import 'package:ecommerce_shopping_app_ui_design/widgets/container_button_modal.dart';
import 'package:flutter/material.dart';

class ProductDetailsPopup extends StatelessWidget {
   ProductDetailsPopup({super.key});

  final iStyle = const TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.bold,
      color: Colors.black
  );

  final List<Color> clrs = [
    Colors.deepOrange,
    Colors.cyan,
    Colors.tealAccent,
    Colors.purple
  ];

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        showModalBottomSheet(
            context: context,
            builder: (context){
              return Container(
                height: MediaQuery.of(context).size.height/2.5,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                          // The 1st Size part
                           Row(
                            children: [
                              Text("Size:",style: iStyle),
                              const SizedBox(width: 30,),
                              Text("S",style: iStyle),
                              const SizedBox(width: 30,),

                              Text("M",style: iStyle),
                              const SizedBox(width: 30,),

                              Text("L",style: iStyle),
                              const SizedBox(width: 30,),

                              Text("XL",style: iStyle),


                        ],
                      ),

                          // The 2nd Color part
                          const SizedBox(height: 10,),
                          Row(
                            children: [
                              Text("Color:",style: iStyle),
                              const SizedBox(width: 5,),

                              Row(
                                children: [
                                  for(var i = 0; i<4; i++)
                                    Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 13
                                      ),
                                      height: 15,
                                      width: 15,
                                      decoration: BoxDecoration(
                                          color: clrs[i],
                                          borderRadius: BorderRadius.circular(20)
                                      ),
                                    )
                                ],
                              ),


                            ],
                          ),

                          // The 3rd total part
                          const SizedBox(height: 10,),
                          Row(
                            children: [
                              Text("Total:",style: iStyle),
                              const SizedBox(width: 24,),
                              Text("-",style: iStyle,),
                              const SizedBox(width: 20,),

                              Text("1",style: iStyle,),
                              const SizedBox(width: 20,),

                              Text("+",style: iStyle,),

                            ],
                          ),

                         // The 4th payment text part
                         const SizedBox(height: 60,),
                         Row(
                           children: [
                             Text("Total Payment:",style: iStyle,),
                             const SizedBox(width: 150,),
                             const Text("\$400",style: TextStyle(
                               color: Colors.red,
                               fontWeight: FontWeight.bold,
                             ),
                             ),
                           ],
                         ),

                         // The 5th CheckOut button
                        const SizedBox(height: 30,),
                        InkWell(
                             onTap: (){
                               Navigator.push(context, MaterialPageRoute(
                                   builder: (context)=>const CartScreen(),
                               ),
                               );
                             },
                             child: Align(
                               alignment: Alignment.center,
                               child: ContainerButtonModel(
                                 containerWidth: MediaQuery.of(context).size.width/2.0,
                                 bgColor: Colors.black,
                                 itext: "Checkout",
                               ),
                             ) ,
                        )
                    ],
                  ),
                ),
              );
            }
        );

      },
      child: ContainerButtonModel(
        containerWidth: MediaQuery.of(context).size.width/1.8,
        bgColor: const Color(0xFFDB3022),
        itext: "Buy Now",
      ),
    );
  }
}
