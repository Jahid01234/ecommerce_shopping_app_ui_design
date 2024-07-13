import 'package:ecommerce_shopping_app_ui_design/models/data_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'product_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController textController = TextEditingController();
  bool clearButton = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
       child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // The 1st App Bar part
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        // Navigator.push(context, MaterialPageRoute(
                        // builder: (context)=>ProductScreen (),
                        // ),
                        // );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  offset: const Offset(0, 3),
                              ),
                            ]),
                        child: const Icon(
                          CupertinoIcons.bars,
                          color: Colors.lightBlue,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  offset: const Offset(0, 3),
                              ),
                            ],
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
                padding:const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                            offset: const Offset(0, 3),
                        )
                      ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        const Icon(CupertinoIcons.search, color: Colors.cyan),
                        const SizedBox(width: 3),
                        Expanded(
                          child: Container(
                            height: 45,
                            width: MediaQuery.of(context).size.width,
                           // width: 230,
                            decoration: const BoxDecoration(color: Colors.white),
                            child: TextFormField(
                              controller: textController,
                              textAlign: TextAlign.start,
                              decoration:  InputDecoration(
                                border: InputBorder.none,
                                hintText: "What would you like to have?",
                                hintStyle:const TextStyle(
                                  color: Colors.cyan,
                                ),
                                suffixIcon: InkWell
                                  (
                                    onTap: (){
                                      setState(() {
                                        textController.clear();
                                      });
                                    },
                                    child: const Icon(
                                      Icons.cancel,color: Colors.cyan,
                                    )
                                ),
                              ),
                              onChanged: (value){
                                if(value != ""){
                                  setState(() {
                                    clearButton = true;
                                  });
                                }
                              },
                          
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // The 3rd image part
              const SizedBox(height: 20),
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: const Color(0xFFFFF0DD),
                    borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset("assets/images/freed.png"),
              ),

              // The 4th List item part
              const SizedBox(height: 20),
              SizedBox(
                height: 50,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: DataItem.tabs.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 40,
                        margin: const EdgeInsets.all(8.0),
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset: const Offset(0, 3),
                              ),
                            ]),
                        child: Center(
                          child: Text(
                            DataItem.tabs[index],
                            style: TextStyle(
                                color: Colors.teal[300],
                                fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      );
                    },
                ),
              ),

              // The 5th image item part
              const SizedBox(height: 20),
              Container(
                height: 180,
                width: double.infinity,
                decoration: const BoxDecoration(color: Colors.white),
                child: ListView.builder(
                    itemCount: DataItem.product['imagesList']?.length ?? 0,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 180,
                        width: 350,
                        margin: const EdgeInsets.only(right: 20),
                        child: Row(
                          children: [
                            // The 1st image part
                            SizedBox(
                              height: 180,
                              width: 180,
                              child: Stack(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                               ProductScreen(),
                                        ),
                                      );
                                    },
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          DataItem.product['imagesList']?[index] ?? '',
                                          fit: BoxFit.cover,
                                          height: 180,
                                          width: 180,
                                        )),
                                  ),
                                  Positioned(
                                      top: 10,
                                      right: 15,
                                      child: Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                        ),
                                        child: const Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                        ),
                                      )),
                                ],
                              ),
                            ),

                            // The 2nd side text part
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 8, right: 8, bottom: 8, top: 2,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    DataItem.product['productTitle']?[index] ?? '',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const SizedBox(
                                    height: 105,
                                    width: 150,
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Text(
                                        "This clothing item has found its way into a variety of styles, even so far as to be worn under a suit jacket. Hoodies with zippers are generally referred to as zip-up hoodies, while a hoodie without a zipper may be described as a pullover hoodie.",
                                        textAlign: TextAlign.justify,
                                        //  maxLines: 5,
                                        // overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 15,
                                      ),
                                      Text(
                                        "(${DataItem.product['reviews']?[index] ?? ''})",
                                        style: const TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        DataItem.product['prices']?[index] ?? '',
                                        style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              ),

              // The 6th Newest Product text part
              const SizedBox(height: 40),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Newest Products",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
              ),

              // The 7th Newest Product item part
              const SizedBox(height: 20),
              GridView.builder(
                  itemCount: DataItem.product['productTitle']?.length ?? 0,
                  shrinkWrap: true,
                  physics:
                      const NeverScrollableScrollPhysics(), // for scrollable true
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.6,
                      crossAxisSpacing: 2),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 180,
                            width: 160,
                            child: Stack(
                              children: [
                                // The image show path
                                InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                               ProductScreen(),
                                        ),
                                      );
                                    },
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          DataItem.product['imagesList']?[index] ?? '',
                                          fit: BoxFit.cover,
                                          height: 180,
                                          width: 160,
                                        ),
                                    ),
                                ),

                                // The position heart icon
                                Positioned(
                                    top: 10,
                                    right: 10,
                                    child: Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(20),
                                        ),
                                        child: const Icon(
                                          Icons.favorite,
                                            color: Colors.red,
                                        ),
                                    ),
                                ),
                              ],
                            ),
                          ),

                          // The product name
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            DataItem.product['productTitle']?[index] ?? '',
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          // The price name
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 20,
                              ),
                              Text(
                                "(${DataItem.product['reviews']?[index] ?? ''})",
                                style: const TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              Text(
                                DataItem.product['prices']?[index] ?? '',
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
              ),
            ],
          ),
        ),
      ),
    ),
    );
  }
}
