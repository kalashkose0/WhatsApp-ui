import 'package:flutter/material.dart';
import 'package:whatsapp/Widgets/ui_helper.dart';

class loginScreen extends StatelessWidget {
  const loginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.white,
      //   title: Text("Enter your phone number"),
      // ),

      body: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          Center(
            child: UiHelper.CustonText(
                text: "Enter your phone number",
                height: 16,
                color: Color(0XFF00A884),
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          UiHelper.CustonText(
            text: "WhatsApp will need to verify your phone",
            height: 16,
          ),
          UiHelper.CustonText(
            text: "number. Carrier charges may apply.",
            height: 16,
          ),
          UiHelper.CustonText(
            text: "What's my number?",
            height: 16,
            color: Color(0XFF00A884),
          ),
        ],
      ),
    );
  }
}
