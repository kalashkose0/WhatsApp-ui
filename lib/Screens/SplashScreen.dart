import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp/OnBoarding/onboardingscreen.dart';
import 'package:whatsapp/Widgets/ui_helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => onboardingscreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/whatsapp1.png"),
            SizedBox(
              height: 20,
            ),
            UiHelper.CustonText(
                text: "WhatsApp", height: 18, fontWeight: FontWeight.bold)
          ],
        ),
      ),
    );
  }
}
