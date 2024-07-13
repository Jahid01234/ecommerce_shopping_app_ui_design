import 'package:ecommerce_shopping_app_ui_design/screens/login_screen.dart';
import 'package:flutter/material.dart';


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
              const SizedBox(height: 50,),
              Image.asset("assets/images/freed.png"),
              const SizedBox(height: 50,),
              Padding(
                padding:const EdgeInsets.symmetric(horizontal: 26),
                child: Column(
                  children: [

                    TextFormField(
                      decoration: const InputDecoration(
                          labelText: "Enter Name",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.person)
                      ),
                    ),
                    const SizedBox(height: 10),

                    // the 2nd TextField part
                    TextFormField(
                      decoration:const InputDecoration(
                          labelText: "Enter Email",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.email)
                      ),
                    ),
                    const SizedBox(height: 10),

                    TextFormField(
                      decoration:const  InputDecoration(
                          labelText: "Enter Number",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.numbers)
                      ),
                    ),
                    const SizedBox(height: 10),

                    // the 3rd TextField part
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: "Enter Password",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.remove_red_eye),
                      ),
                    ),
                   const SizedBox(height: 10),

                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: "Confirm Password",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.remove_red_eye),
                      ),
                    ),

                    const SizedBox(height: 50),

                    // the 4th Elevated Button part
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor:const Color(0xFFDB3022),
                          minimumSize:const Size.fromHeight(55),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0))),
                      child: const Text(
                        "Create Account",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginScreen()));
                      },

                    ),
                    const SizedBox(height: 10,),

                    // the 5th Text  part
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Already have an account?",style: TextStyle(fontSize: 15),),
                        const SizedBox(width: 3,),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginScreen()));
                          },
                          child: const Text("Sign In",
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

