import 'package:ecommerce_shopping_app_ui_design/screens/cart_screen.dart';
import 'package:ecommerce_shopping_app_ui_design/widgets/container_button_modal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetailsPopup extends StatelessWidget {
  const ProductDetailsPopup({super.key});

  @override
  Widget build(BuildContext context) {

    final iStyle =  TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.bold,
      color: Colors.black
    );

    List<Color> clrs =[
      Colors.deepOrange,
      Colors.cyan,
      Colors.tealAccent,
      Colors.purple
    ];


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
                  padding: EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                          // The 1st Size part
                          Row(
                            children: [
                              Text("Size:",style: iStyle),
                              SizedBox(width: 30,),
                              Text("S",style: iStyle),
                              SizedBox(width: 30,),

                              Text("M",style: iStyle),
                              SizedBox(width: 30,),

                              Text("L",style: iStyle),
                              SizedBox(width: 30,),

                              Text("XL",style: iStyle),


                        ],
                      ),

                          // The 2nd Color part
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text("Color:",style: iStyle),
                              SizedBox(width: 5,),

                              Container(
                                child: Row(
                                  children: [
                                    for(var i = 0; i<4; i++)
                                      Container(
                                        margin: EdgeInsets.symmetric(horizontal: 13),
                                        height: 15,
                                        width: 15,
                                        decoration: BoxDecoration(
                                            color: clrs[i],
                                            borderRadius: BorderRadius.circular(20)
                                        ),
                                      )
                                  ],
                                ),
                              ),


                            ],
                          ),

                          // The 3rd total part
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text("Total:",style: iStyle),
                              SizedBox(width: 24,),
                              Text("-",style: iStyle,),
                              SizedBox(width: 20,),

                              Text("1",style: iStyle,),
                              SizedBox(width: 20,),

                              Text("+",style: iStyle,),

                            ],
                          ),

                         // The 4th payment text part
                         SizedBox(height: 60,),
                         Row(
                           children: [
                             Text("Total Payment:",style: iStyle,),
                             SizedBox(width: 150,),
                             Text("\$400",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),

                           ],
                         ),

                         // The 5th CheckOut button
                        SizedBox(height: 30,),
                        InkWell(
                             onTap: (){
                               Navigator.push(context, MaterialPageRoute(builder: (context)=>CartScreen()));
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
        bgColor: Color(0xFFDB3022),
        itext: "Buy Now",
      ),
    );
  }
}