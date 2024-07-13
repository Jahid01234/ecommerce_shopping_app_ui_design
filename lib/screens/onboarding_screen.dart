import 'package:ecommerce_shopping_app_ui_design/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

 GlobalKey introKey = GlobalKey<IntroductionScreenState>();

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
      bodyTextStyle: TextStyle(fontSize: 19),
      bodyPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero);

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
            title: "Shop Now",
            body:
                "One of the benefits of online shopping is that specialty items, hard-to-find products, and almost everything under the sun is sold on the internet. This is because online retailers do not have to hold inventory in every location, as they do in brick-and-mortar stores.",
            image: Image.asset("assets/images/splash1.png", width: 200),
            decoration: pageDecoration),
        PageViewModel(
            title: "Big Discount",
            body:
                "Hi there! We just wanted to remind you that our discount is running this week only, so if you've been thinking of taking advantage of it, now's the time. Just type in the coupon code  at checkout for [discount]% off your order. We hope you enjoy it!",
            image: Image.asset(
              "assets/images/splash2.png",
              width: 200,
            ),
            decoration: pageDecoration),
        PageViewModel(
            title: "Free Delivery",
            body:
                "Sometimes, the best way to get free shipping is simply to ask for it. You have nothing to lose by opening a chat window on a retailer's website and asking a customer service rep to throw in free shipping. Even if you don't get free shipping, the retailer may offer up some other type of incentive..",
            image: Image.asset("assets/images/splash3.png", width: 200),
            decoration: pageDecoration,
            footer: _buildFooterButton()),
      ],
      showSkipButton: false,
      showDoneButton: false,
      showBackButton: true,
      back: const Text(
        "Back",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Color(0xFFDB3022),
        ),
      ),
      next: const Text(
        "Next",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Color(0xFFDB3022),
        ),
      ),
      onDone: () {},
      onSkip: () {},
      dotsDecorator: DotsDecorator(
          size: const Size.square(10),
          activeSize: const Size(20, 10),
          activeColor: const Color(0xFFDB3022),
          color: Colors.black12,
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
          ),
      ),
    );
  }

  // create custom buildFooterButton
  Widget _buildFooterButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFEF6969),
          minimumSize: const Size.fromHeight(55),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        ),
        child: const Text(
          "Let's Shop",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SignupScreen(),
            ),
          );
        },
      ),
    );
  }
}
