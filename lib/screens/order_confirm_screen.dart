import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/container_button_modal.dart';
import 'order_success_screen.dart';

class OrderConfirmScreen extends StatelessWidget {
  const OrderConfirmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: Text("Confirm Order"),
        centerTitle: true,
        leading: BackButton(),
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // The 1st Shipping Address part
                SizedBox(height: 10,),
                Text("Shipping Address",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600)),
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.all(8),
                  height:110 ,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 4,
                        spreadRadius: 2,
                        offset: Offset(0,3)
                      )
                    ]
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Dear Jahid",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                          TextButton(
                              onPressed: (){},
                              child: Text("Change",style: TextStyle(fontSize: 15,color: Colors.deepOrangeAccent)),
                          )
                        ],
                      ),
                      SizedBox(height: 7),
                      Text("Nill Villa,House-10",style: TextStyle(fontSize: 14,)),
                      SizedBox(height: 3,),
                      Text("Mirpur-2,Road No-10,Dhaka",style: TextStyle(fontSize: 14,)),

                    ],
                  ),
                ),

                // The 2nd Payment Method
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Payment Method",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600)),
                    TextButton(
                      onPressed: (){},
                      child: Text("Change",style: TextStyle(fontSize: 15,color: Colors.deepOrangeAccent)),
                    )
                  ],
                ),

                // The 3rd masterCard Change
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 4,
                                spreadRadius: 2,
                                offset: Offset(0,3)
                            )
                          ]
                      ),
                      child: Image.asset("assets/images/mastercard.jpg"),
                    ),
                    Text("*** *** *** 3497",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600)),
                    
                  ],
                ),

                // The 4th Delivery Method
                SizedBox(height: 30,),
                Text("Delivery Method",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600)),

                // The 5th Delivery Method card
                SizedBox(height: 10,),
                Row(
                  children: [
                    Container(
                      height: 60,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 4,
                                spreadRadius: 2,
                                offset: Offset(0,3)
                            )
                          ]
                      ),
                      child: Column(
                        children: [
                          Image.asset("assets/images/icon3.png",height: 30,width: 60,),
                          Text("2-7 Days",style: TextStyle(fontSize: 12,)),

                        ],
                      ),
                    ),

                    SizedBox(width: 15,),

                    Container(
                      height: 60,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 4,
                                spreadRadius: 2,
                                offset: Offset(0,3)
                            )
                          ]
                      ),
                      child: Column(
                        children: [
                          Icon(CupertinoIcons.house,color: Colors.cyan,size: 35,),
                          Text("2-5 Days",style: TextStyle(fontSize: 12,)),

                        ],
                      ),
                    ),

                  ],
                ),

                // The 6thSub-Total part
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Sub-Total",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey),),
                    Text("\$800.00",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  ],
                ),


                // The 7th Fee shopping text part
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Shopping Fee",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey),),
                    Text("\$15.00",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  ],
                ),

                // The 8th Divide  part
                Divider(thickness: 2,color: Colors.cyan,),

                // The 9th Total Payment text part
                SizedBox(height: 2,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total Payment",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey),),
                    Text("\$815.00",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.red),),
                  ],
                ),

                // The 10th Confirm Payment button part
                SizedBox(height: 30),
                InkWell(
                    onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderSuccessScreen ()));
                    },
                    child: ContainerButtonModel(
                      containerWidth: MediaQuery.of(context).size.width,
                      bgColor: Colors.red,
                      itext: "Confirm Order",
                    )
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
