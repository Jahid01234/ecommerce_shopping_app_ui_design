import 'package:ecommerce_shopping_app_ui_design/screens/login_screen.dart';
import 'package:flutter/material.dart';

import 'navigation_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {

    return Material(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //  1st image part
              SizedBox(height: 50,),
              Image.asset("assets/images/freed.png"),
              SizedBox(height: 50,),
              Padding(
                padding:EdgeInsets.symmetric(horizontal: 26),
                child: Column(
                  children: [

                    TextFormField(
                      decoration: InputDecoration(
                          labelText: "Enter Name",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.person)
                      ),
                    ),
                    SizedBox(height: 10),

                    // the 2nd TextField part
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: "Enter Email",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.email)
                      ),
                    ),
                    SizedBox(height: 10),

                    TextFormField(
                      decoration: InputDecoration(
                          labelText: "Enter Number",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.numbers)
                      ),
                    ),
                    SizedBox(height: 10),

                    // the 3rd TextField part
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Enter Password",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.remove_red_eye),
                      ),
                    ),
                    SizedBox(height: 10),

                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Confirm Password",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.remove_red_eye),
                      ),
                    ),
                    SizedBox(height: 5,),

                    // the 4th  Forget Password part
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: (){},
                        child: Text("Forget Password",
                            style: TextStyle(fontSize: 15,color: Color(0xFFDB3022),fontWeight: FontWeight.w600)
                        ),
                      ),
                    ),
                    SizedBox(height: 50),

                    // the 5th Elevated Button part
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                      },
                      child: Text(
                        "Create Account",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFDB3022),
                          minimumSize: Size.fromHeight(55),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0))),
                    ),
                    SizedBox(height: 10,),

                    // the 6th Text  part
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Allready Have An Account?",style: TextStyle(fontSize: 15),),
                        SizedBox(width: 3,),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                          },
                          child: Text("Sign In",
                              style: TextStyle(fontSize: 15,color: Color(0xFFDB3022),fontWeight: FontWeight.w600)
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

