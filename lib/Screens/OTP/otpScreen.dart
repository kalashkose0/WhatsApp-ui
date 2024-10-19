import 'package:flutter/material.dart';
import 'package:whatsapp/Widgets/ui_helper.dart';
import 'package:whatsapp/profile/profileScreens.dart';

class otpScreen extends StatelessWidget {
  String phonenumber;
  otpScreen({required this.phonenumber});

  TextEditingController otp1Controller = TextEditingController();
  TextEditingController otp2Controller = TextEditingController();
  TextEditingController otp3Controller = TextEditingController();
  TextEditingController otp4Controller = TextEditingController();
  TextEditingController otp5Controller = TextEditingController();
  TextEditingController otp6Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("heluuu"),
        //   centerTitle: true,
        // ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              UiHelper.CustomText(
                  text: "Verifying your number",
                  height: 20,
                  color: const Color(0XFF00A884),
                  fontWeight: FontWeight.bold),
              const SizedBox(
                height: 30,
              ),
              UiHelper.CustomText(
                  text: "You've tried to register +91${phonenumber}",
                  height: 15),
              const SizedBox(
                height: 5,
              ),
              UiHelper.CustomText(
                  text: "recently. Wait before requesting an sms or a call",
                  height: 15),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UiHelper.CustomText(text: "with your code", height: 15),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: UiHelper.CustomText(
                        text: "Wrong number?",
                        height: 15,
                        color: const Color(0XFF00A884)),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UiHelper.CustomContainer(otp1Controller),
                  const SizedBox(
                    width: 10,
                  ),
                  UiHelper.CustomContainer(otp2Controller),
                  const SizedBox(
                    width: 10,
                  ),
                  UiHelper.CustomContainer(otp3Controller),
                  const SizedBox(
                    width: 10,
                  ),
                  UiHelper.CustomContainer(otp4Controller),
                  const SizedBox(
                    width: 10,
                  ),
                  UiHelper.CustomContainer(otp5Controller),
                  const SizedBox(
                    width: 10,
                  ),
                  UiHelper.CustomContainer(otp6Controller),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              UiHelper.CustomText(
                  text: "Didn't recieve code?",
                  height: 15,
                  color: const Color(0XFF00A884))
            ],
          ),
        ),
        floatingActionButton: UiHelper.CustomButton(
            Callback: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => profileScreen())));
            },
            buttonname: "Next"),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat);
  }
}
