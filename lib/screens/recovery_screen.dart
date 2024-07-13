import 'package:flutter/material.dart';
import 'otp_screen.dart';

class RecoverScreen extends StatefulWidget {
  const RecoverScreen({super.key});

  @override
  State<RecoverScreen> createState() => _RecoverScreenState();
}

class _RecoverScreenState extends State<RecoverScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 1st Header text part
              const SizedBox(
                height: 10,
              ),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Forget Password",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),

              // 2nd body text part
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Please enter your email address. You will receive a link to create or set a new password via email.",
                style: TextStyle(fontSize: 15),
              ),

              // 3rd TextFormField part
              const SizedBox(
                height: 50,
              ),
              TextFormField(
                  // controller: emailController,
                  decoration: const InputDecoration(
                labelText: "Reset Code",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.numbers),
              )),
              const SizedBox(
                height: 10,
              ),

              // the 4th TextField part
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "New Password",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye),
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              // the 5th TextField part
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Confirm Password",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye),
                ),
              ),

              const SizedBox(height: 50),

              // the 6th Elevated Button part
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFDB3022),
                  minimumSize: const Size.fromHeight(55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                child: const Text(
                  "Reset Password",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                onPressed: () {
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                },
              ),

              // the 7th text part
              const SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("OR"),
                  const SizedBox(height: 10),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OTPScreen(),
                        ),
                      );
                    },
                    child: const Text("Verify Using Number",
                        style:
                            TextStyle(color: Color(0xFFDB3022), fontSize: 15)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
