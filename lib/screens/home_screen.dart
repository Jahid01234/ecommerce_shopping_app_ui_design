import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'product_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<String> tabs =["All","Category","Top","Recommended"];
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

  List reviews =[
    "54",
    "120",
    "542",
    "534",
  ];





  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
        child: SingleChildScrollView(
         child: Padding(
           padding: EdgeInsets.symmetric(horizontal: 10),
           child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // The 1st App Bar part
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                       // Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductScreen ()));
                      },
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  offset: Offset(0, 3)),
                            ]
                        ),
                        child: Icon(
                          CupertinoIcons.bars,
                          color: Colors.lightBlue,
                        ),
                      ),
                    ),


                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  offset: Offset(0, 3)),
                            ]
                        ),

                          child: Icon(
                          Icons.notifications,
                          color: Colors.lightBlue[300],
                        ),
                      ),
                    )
                  ],
                ),
              ),


              // The 2nd search box part
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(0,3)
                      )
                    ]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Icon(CupertinoIcons.search, color: Colors.cyan),
                        Container(
                          padding: EdgeInsets.only(left: 5,right: 5,bottom: 8),
                          height: 45,
                          width: 230,
                          decoration: BoxDecoration(
                            color: Colors.white
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "What would you like to have?",hintStyle: TextStyle(color: Colors.cyan),
                            ),
                          ),

                        ),
                        SizedBox(width: 30,),
                        Icon(Icons.filter_list,color: Colors.cyan),
                      ],
                    ),
                  ),
                ),
              ),

              // The 3rd image part
              SizedBox(height: 20),
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xFFFFF0DD),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Image.asset("assets/images/freed.png"),
              ),

              // The 4th List item part
              SizedBox(height: 20),
              SizedBox(
                height: 50,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: tabs.length,
                    itemBuilder: (context,index){
                      return Container(
                        height: 40,
                        margin: EdgeInsets.all(8.0),
                       padding: EdgeInsets.only(left: 15, right: 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset: Offset(0, 3)),
                          ]
                        ),
                        child: Center(
                            child: Text(tabs[index],style: TextStyle(color: Colors.teal[300],fontWeight: FontWeight.bold),)
                        ) ,
                      );
                    }
                ),

              ),

              // The 5th image item part
              SizedBox(height: 20),
              Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white
                ),
                child: ListView.builder(
                     itemCount:imagesList.length ,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index){
                      return  Container(
                        height: 180,
                        width: 350 ,
                        margin: EdgeInsets.only(right: 20),
                        child: Row(
                          children: [

                            // The 1st image part
                            SizedBox(
                              height: 180,
                              width: 180,
                              child: Stack(
                                children: [
                                  InkWell(
                                    onTap:(){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductScreen ()));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(imagesList[index],
                                        fit: BoxFit.cover,
                                          height: 180,
                                          width: 180,
                                        )
                                    ),
                                  ),
                                  Positioned(
                                      top: 10,
                                      right: 15,
                                      child: Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          color : Colors.white,
                                          borderRadius: BorderRadius.circular(20)
                                        ),
                                        child: Icon(Icons.favorite,color: Colors.red,),
                                      )
                                  ),
                                ],
                              ),
                            ),


                            // The 2nd side text part
                            Padding(
                              padding: const EdgeInsets.only(left: 8,right: 8,bottom: 8,top: 2),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(productTitle[index],style: TextStyle(fontWeight: FontWeight.bold),),
                                  SizedBox(height: 10,),
                                  SizedBox(
                                    height: 105,
                                    width: 150,
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Text("This clothing item has found its way into a variety of styles, even so far as to be worn under a suit jacket. Hoodies with zippers are generally referred to as zip-up hoodies, while a hoodie without a zipper may be described as a pullover hoodie.",
                                        textAlign: TextAlign.justify,
                                        //  maxLines: 5,
                                        // overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      Icon(Icons.star,color: Colors.amber,size: 15,),
                                      Text("(" + reviews[index]+")",style: TextStyle(fontSize: 15,)),
                                      SizedBox(width: 5,),
                                      Text(prices[index],style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                                    ],
                                  )

                                ],
                              ),
                            )
                          ],
                        ),
                      );

                    }
                ),
              ),


              // The 6th Newest Product text part
              SizedBox(height: 40),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Newest Products",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  )
              ),

              // The 7th Newest Product item part
              SizedBox(height: 20),
              GridView.builder(
                 itemCount: productTitle.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),// for scrollable true
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                     crossAxisCount: 2,
                     childAspectRatio: 0.6,
                     crossAxisSpacing: 2
                  ),
                  itemBuilder: (context,index){
                    return Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 180,
                            width: 160,
                            child:Stack(
                              children: [
                                // The image show path
                                InkWell(
                                    onTap : (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductScreen ()));
                                    },
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(imagesList[index],
                                          fit: BoxFit.cover,
                                          height: 180,
                                          width: 160,

                                        ))
                                ),

                                // The position heart icon
                                Positioned(
                                    top: 10,
                                    right: 10,

                                    child:Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(20)
                                        ),
                                        child: Icon(Icons.favorite,color: Colors.red)
                                    )
                                ),

                              ],
                            ) ,
                          ),

                          // The product name
                          SizedBox(height: 10,),
                          Text(productTitle[index],style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),

                          // The price name
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Icon(Icons.star,color: Colors.amber,size: 20,),
                              Text("(" + reviews[index]+")",style: TextStyle(fontSize: 18,)),
                              SizedBox(width: 3,),
                              Text(prices[index],style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                            ],
                          )
                        ],
                      ),
                    );
                  }
              )

            ],
           ),
         ),
      ),
    ));
  }
}
