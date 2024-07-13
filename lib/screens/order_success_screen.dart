import 'package:flutter/material.dart';
import '../widgets/container_button_modal.dart';
import 'splash_screen.dart';

class OrderSuccessScreen extends StatelessWidget {
  const OrderSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
                image: AssetImage("assets/images/bg1.jpg"),
                fit: BoxFit.cover,
                opacity: 0.5)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(
              child: Image.asset(
                "assets/images/s.gif",
                height: 120,
                width: 120,
                fit: BoxFit.cover,
              ),
            ),
            const Text(
              "Success!",
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "Your oder will delivered soon.",
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
            const Text(
              "Thanks You! for choosing our app.",
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SplashScreen(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ContainerButtonModel(
                    containerWidth: MediaQuery.of(context).size.width,
                    bgColor: Colors.red,
                    itext: "Continue Shopping",
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
