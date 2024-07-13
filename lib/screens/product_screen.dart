import 'package:ecommerce_shopping_app_ui_design/models/data_item.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../widgets/product_details_popup.dart';

class ProductScreen extends StatelessWidget {
   ProductScreen({super.key});

  final List<String> image = DataItem.product['imagesList'] ?? [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: const Text("Product OverView"),
        centerTitle: true,
        leading: const BackButton(),
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // The  1st FanCarouselImageSlider part
              SizedBox(
                height: 450,
                width: MediaQuery.of(context).size.width,
                child: FanCarouselImageSlider(
                  sliderHeight: 430,
                  imagesLink: image,
                  isAssets: true,
                  autoPlay: true,
                ),
              ),
              const SizedBox(height: 10,),


              // The 2nd text part
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        const Text("Warm Zipper",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),
                        const SizedBox(height: 3,),
                        const Text("Hoodie jacket"),
                        const SizedBox(height: 7,),
                        RatingBar.builder(
                            direction: Axis.horizontal,
                            itemCount: 5,
                            initialRating: 4,
                            minRating: 2,
                            itemSize: 20,
                            itemBuilder:(context, index)=> const Icon(Icons.star,color: Colors.red,),
                            onRatingUpdate: (double rating){}
                        )
                      ],
                    ),
                    const Text("\$300",style: TextStyle(color: Colors.cyan,fontWeight: FontWeight.bold,fontSize: 20,),),
                  ],
                ),
              ),

              // The 3rd description text part
              const SizedBox(height: 7,),
              const Padding(
                padding: EdgeInsets.only(left: 8,right: 8),
                child: Text("Stay warm and stylish with our collection of letter hoodies. Choose from a wide range of designs and colors to express your unique style and make a fashion statement.",
                  style: TextStyle(fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),

              // The 4th Cart Icon part
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  // The 1st Icon Button
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: const Center(child: Icon(Icons.shopping_cart,color: Colors.red,),),
                  ),

                  // The 2nd  custom Button
                   ProductDetailsPopup()
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
