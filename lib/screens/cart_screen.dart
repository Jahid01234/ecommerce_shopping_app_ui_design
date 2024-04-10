import 'package:ecommerce_shopping_app_ui_design/widgets/container_button_modal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'payment_method_screen.dart';

class CartScreen extends StatelessWidget {


  List imagesList =[
    "assets/images/image1.jpg",
    "assets/images/image2.jpg",
    "assets/images/image3.jpg",
    "assets/images/image4.jpg",
  ];

  List productTitle =[
    "Warm Zipper",
    "Knitted Woo!",
    "Zipper Win",
    "Child Win",
  ];

  List prices =[
    "\$300",
    "\$650",
    "\$50",
    "\$100",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          title: Text("Cart"),
          centerTitle: true,
          leading: BackButton(),
          elevation: 0,
        ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              // The 1st Container part
              Container(
                child: ListView.builder(
                  itemCount: imagesList.length,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index){
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // The 1st CheckBox part
                          Checkbox(
                             splashRadius: 20,
                              activeColor: Colors.red,
                              value: true,
                              onChanged: (value){}
                          ),

                          // The 2nd image part
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child:Image.asset(
                              imagesList[index],
                              height: 80,
                              width: 80,
                              fit: BoxFit.cover,
                            ) ,
                          ),

                          // The 3rd text part
                          Column(
                            //mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(productTitle[index],style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                              SizedBox(height: 10,),
                              Text("Hoodie Jacket",style: TextStyle(color: Colors.black38,)),

                              SizedBox(height: 10,),
                              Text(prices[index],style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),


                            ],
                          ),

                          // The 4th total part
                          Row(
                            children: [
                              Icon(CupertinoIcons.minus,size: 15,color: Colors.deepOrangeAccent,),
                              SizedBox(width: 5,),

                              Text("1",style: TextStyle(color: Colors.pinkAccent,fontWeight: FontWeight.bold,fontSize: 18),),
                              SizedBox(width: 5,),

                              Icon(CupertinoIcons.plus,size: 15,color: Colors.deepOrangeAccent,),
                              SizedBox(width: 3,)
                            ],
                          )

                        ],
                      ),
                    );
                    }
                ),
              ),

              // The 2nd Text and checkbox part
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Select All ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                  Checkbox(
                      value: false,
                      onChanged:(value){}
                  )
                ],
              ),

              // The 3rd divider part
              Divider(
                height: 20,
                color: Colors.cyan,
                thickness: 2,
              ),

              // The 4th Text and checkbox part
              SizedBox(height: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total Payment ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                  Text("\$800",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
                ],
              ),


              // The 5th checkOut Button part
              SizedBox(height: 30),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentMethodScreen()));
                },
                child: ContainerButtonModel(
                  containerWidth: MediaQuery.of(context).size.width,
                  bgColor: Colors.red,
                  itext: "Checkout",
                )
              )




            ],
          ),
        ),
      ),
    );
  }
}
