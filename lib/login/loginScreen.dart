import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsapp/Screens/OTP/otpScreen.dart';
import 'package:whatsapp/Widgets/ui_helper.dart';

class loginScreen extends StatefulWidget {
  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  TextEditingController phoneController = TextEditingController();
  String selectedCountry = "India";

  List<String> countries = ["America", "Africa", "germaany", "itly"];

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
              child: UiHelper.CustomText(
                  text: "Enter your phone number",
                  height: 16,
                  color: const Color(0XFF00A884),
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            UiHelper.CustomText(
              text: "WhatsApp will need to verify your phone",
              height: 16,
            ),
            UiHelper.CustomText(
              text: "number. Carrier charges may apply.",
              height: 16,
            ),
            const SizedBox(
              height: 5,
            ),
            UiHelper.CustomText(
              text: "What's my number?",
              height: 16,
              color: const Color(0XFF00A884),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60, right: 60),
              child: DropdownButtonFormField(
                items: countries.map((String country) {
                  return DropdownMenuItem(
                    child: Text(country),
                    value: country,
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    selectedCountry = newValue!;
                  });
                },
                value: selectedCountry,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF00A884)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF00A884)),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 40,
                  child: Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: "+91",
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0XFF00A884))),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0XFF00A884))),
                          enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Color(0XFF00A884)))),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 250,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: phoneController,
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0XFF00A884)))),
                  ),
                )
              ],
            )
          ],
        ),
        floatingActionButton: UiHelper.CustomButton(
            Callback: () {
              login(phoneController.text.toString());
            },
            buttonname: "Next"),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat);
  }

  login(String phonenumber) {
    if (phonenumber == "") {
      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Enter Phone Number"),
        backgroundColor: Colors.green,
      ));
    } else {
      // Navigator.push(context, MaterialPageRoute(builder: ((context) => otpScreen()));
    }
  }
}
