import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import '../intro/intro_page.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const id = "splash_screen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  _initTimer() {
    Timer(const Duration(seconds: 17), () {
      Navigator.pushReplacementNamed(context, IntroPage.id);
    });
  }

  @override
  void initState() {
    super.initState();
    _initTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Column(
        children: [
          const Image(
            width: 400,
            height: 500,
            image: AssetImage("assets/images/logo.png"),
            fit: BoxFit.contain,
          ),
          const Padding(
            padding: EdgeInsets.all(30),
            child:  Text(
              "Islam => Religion of Peace",
              style: TextStyle(
                  color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.all(10),
            child: DefaultTextStyle(
              style:  const TextStyle(
                fontSize: 35,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  FadeAnimatedText("Islam consists of\n\t\t\t\t\t\t\t\t 5 pillars:"),
                  FadeAnimatedText("Faith"),
                  FadeAnimatedText("Prayer"),
                  FadeAnimatedText("Fasting"),
                  FadeAnimatedText("Zakat"),
                  FadeAnimatedText("Hajj"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
