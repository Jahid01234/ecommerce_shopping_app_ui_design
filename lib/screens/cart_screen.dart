import 'package:ecommerce_shopping_app_ui_design/models/data_item.dart';
import 'package:ecommerce_shopping_app_ui_design/widgets/container_button_modal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'payment_method_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          title: const Text("Cart"),
          centerTitle: true,
          leading:const BackButton(),
          elevation: 0,
        ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              // The 1st Container part
              ListView.builder(
                itemCount: DataItem.product['imagesList']?.length ?? 0,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index){
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
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
                            //imagesList[index],
                            DataItem.product['imagesList']?[index] ?? '',
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
                            Text(
                               // productTitle[index],
                              DataItem.product['productTitle']?[index] ?? '',
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                ),
                            ),
                            const SizedBox(height: 10,),
                            const Text("Hoodie Jacket",style: TextStyle(color: Colors.black38,)),

                           const SizedBox(height: 10,),
                            Text(
                              DataItem.product['prices']?[index] ?? '',
                              style:const TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                             ),
                            ),
                          ],
                        ),

                        // The 4th total part
                        const Row(
                          children: [
                            Icon(
                              CupertinoIcons.minus,size: 15,
                              color: Colors.deepOrangeAccent,
                            ),
                            SizedBox(width: 5,),

                            Text("1",style: TextStyle(
                                color: Colors.pinkAccent,
                                fontWeight: FontWeight.bold,fontSize: 18,
                            ),
                            ),
                            SizedBox(width: 5,),

                            Icon(CupertinoIcons.plus,size: 15,
                              color: Colors.deepOrangeAccent,
                            ),
                            SizedBox(width: 3,)
                          ],
                        )

                      ],
                    ),
                  );
                  },
              ),

              // The 2nd Text and checkbox part
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Select All ",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                  ),
                  Checkbox(
                      value: false,
                      onChanged:(value){}
                  ),
                ],
              ),

              // The 3rd divider part
              const Divider(
                height: 20,
                color: Colors.cyan,
                thickness: 2,
              ),

              // The 4th Text and checkbox part
              const SizedBox(height: 2),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total Payment ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                  Text("\$800",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
                ],
              ),


              // The 5th checkOut Button part
              const SizedBox(height: 30),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>const PaymentMethodScreen(),
                  ),
                  );
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
