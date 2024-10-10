import 'package:flutter/material.dart';
import 'package:whatsapp/Widgets/ui_helper.dart';
import 'package:whatsapp/login/loginScreen.dart';

class onboardingscreen extends StatelessWidget {
  const onboardingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/bordingscreen.png"),
            SizedBox(
              height: 20,
            ),
            UiHelper.CustonText(
                text: "Welcome to Whatsapp",
                height: 20,
                color: Color(0XFF000000)),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustonText(text: "Read Out", height: 14),
                UiHelper.CustonText(
                    text: "Privacy Policy",
                    height: 14,
                    color: Color(0XFF0C42CC)),
                UiHelper.CustonText(
                    text: "Tap ''Agree & continue''", height: 14),
                SizedBox(
                  height: 5,
                ),
                Column(
                  children: [
                    UiHelper.CustonText(text: "to accept the", height: 14),
                    UiHelper.CustonText(
                        text: "Terms of service",
                        height: 14,
                        color: Color(0XFF0C42CC))
                  ],
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(
          Callback: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => loginScreen())); 
          },
          buttonname: "Agree and continue"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
