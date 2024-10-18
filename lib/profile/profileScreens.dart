import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsapp/Widgets/ui_helper.dart';

class profileScreen extends StatelessWidget {
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              UiHelper.CustomText(
                  text: "Profile info",
                  height: 20,
                  color: Color(0XFF00A884),
                  fontWeight: FontWeight.bold),
              SizedBox(
                height: 30,
              ),
              UiHelper.CustomText(
                  text: "Please provide your name and an optional", height: 15),
              SizedBox(
                height: 5,
              ),
              UiHelper.CustomText(text: "Profile Photo", height: 15),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  _openBottom(context);
                },
                child: CircleAvatar(
                  radius: 104,
                  backgroundColor: Color(0XFFD9D9D9),
                  child: Icon(
                    Icons.camera_alt_rounded,
                    size: 60,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 280,
                    child: TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        hintText: "  Type Your Name here",
                        hintStyle: TextStyle(color: Color(0XFF5E5E5E)),
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0XFF00A884))),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0XFF00A884))),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0XFF00A884))),
                      ),
                    ),
                  ),
                  Icon(Icons.emoji_emotions_rounded)
                ],
              )
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

  _openBottom(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 200,
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.camera_alt,
                      size: 80,
                      color: Colors.grey,
                    ),
                    Icon(
                      Icons.image,
                      size: 80,
                      color: Colors.grey,
                    )
                  ],
                )
              ],
            ),
          );
        });
  }
}
