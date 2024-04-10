import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'forget_screen.dart';
import 'navigation_screen.dart';
import 'signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //  1st image part
              SizedBox(height: 100,),
              Image.asset("assets/images/freed.png"),
              SizedBox(height: 50,),
              Padding(
                  padding:EdgeInsets.symmetric(horizontal: 26),
                child: Column(
                  children: [

                    // the 2nd TextField part
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Enter Email",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email)
                      ),
                    ),
                    SizedBox(height: 10),

                    // the 3rd TextField part
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: "Enter Password",
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
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetScreen()));
                        },
                        child: Text("Forget Password?",
                            style: TextStyle(fontSize: 15,color: Color(0xFFEF6969),fontWeight: FontWeight.w600)
                        ),
                      ),
                    ),
                    SizedBox(height: 50),

                    // the 5th Elevated Button part
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>NavigationScreen()));
                      },
                      child: Text(
                        "Log In",
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
                        Text("Don't Have An Account?",style: TextStyle(fontSize: 15),),
                        SizedBox(width: 3,),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));
                          },
                          child: Text("Sign Up",
                          style: TextStyle(fontSize: 15,color: Color(0xFFEF6969),fontWeight: FontWeight.w600)
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
