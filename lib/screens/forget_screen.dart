import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'recovery_screen.dart';

class ForgetScreen extends StatefulWidget {
  const ForgetScreen({super.key});

  @override
  State<ForgetScreen> createState() => _ForgetScreenState();
}



class _ForgetScreenState extends State<ForgetScreen> {
  final TextEditingController emailController = TextEditingController();
  bool clearButton = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 1st Header text part
              const SizedBox(height: 10,),
              const Text("Forget Password",style: TextStyle(fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              ),

              // 2nd body  text part
              const SizedBox(height: 50,),
              const Text(
                  "Please enter your email address. You will receive a link to create or set a new password via email.",
                style: TextStyle(fontSize: 15),),

              // 3rd TextFormField part
              const SizedBox(height: 50,),
              TextFormField(
                controller: emailController,
                onChanged: (value){
                  if(value != ""){
                    setState(() {
                      clearButton = true;
                    });
                  }
                },
                decoration: InputDecoration(
                    labelText: "Email",
                    border: const OutlineInputBorder(),
                    prefixIcon: const Icon(Icons.email),
                    suffixIcon: InkWell
                      (
                       onTap: (){
                         setState(() {
                           emailController.clear();
                         });
                       },
                        child: const Icon(
                          CupertinoIcons.multiply,color: Colors.black,
                        )
                    ),
                    ),
                ),

              const SizedBox(height: 50),

              // the 4th Elevated Button part
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor:const Color(0xFFDB3022),
                  minimumSize: const Size.fromHeight(55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                child: const Text(
                  "Send Code",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>const RecoverScreen(),
                  ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
