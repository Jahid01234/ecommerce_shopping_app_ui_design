import 'package:flutter/material.dart';

import '../widgets/container_button_modal.dart';
import 'order_confirm_screen.dart';

class ShippingAddress extends StatelessWidget {
  const ShippingAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: Text("Add Shipping Address"),
        centerTitle: true,
        leading: BackButton(),
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [

                // The 1st Name part
                SizedBox(height: 30),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Full Name",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person)
                  ),
                ),
                SizedBox(height: 15),

                // The 2nd Mobile Number part
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Mobile Number",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.smartphone_outlined)
                  ),
                ),
                SizedBox(height: 15),

                // The 3rd city part
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "City",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.location_city)
                  ),
                ),
                SizedBox(height: 15),

                // The 4th State/Province/Region part
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "State/Province/Region",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.location_city)
                  ),
                ),
                SizedBox(height: 15),

                // The 5th Zip code part
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Zip Code(Postal Code)",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.code)
                  ),
                ),
                SizedBox(height: 15),

                // The 6th Country part
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Country",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.location_city_sharp)
                  ),
                ),

                // The 7th Add Address button part
                SizedBox(height: 60),
                InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderConfirmScreen()));
                    },
                    child: ContainerButtonModel(
                      containerWidth: MediaQuery.of(context).size.width,
                      bgColor: Colors.red,
                      itext: "Add Address",
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
