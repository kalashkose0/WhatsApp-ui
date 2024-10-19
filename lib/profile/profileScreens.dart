import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp/Screens/homeScreen.dart';
import 'package:whatsapp/Widgets/ui_helper.dart';
import 'dart:io';

class profileScreen extends StatefulWidget {
  @override
  State<profileScreen> createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
  TextEditingController nameController = TextEditingController();

  File? pickedimage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              UiHelper.CustomText(
                  text: "Profile info",
                  height: 20,
                  color: const Color(0XFF00A884),
                  fontWeight: FontWeight.bold),
              const SizedBox(
                height: 30,
              ),
              UiHelper.CustomText(
                  text: "Please provide your name and an optional", height: 15),
              const SizedBox(
                height: 5,
              ),
              UiHelper.CustomText(text: "Profile Photo", height: 15),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  _openBottom(context);
                },
                child: _pickImage == null
                    ? CircleAvatar(
                        radius: 104,
                        backgroundColor: Color(0XFFD9D9D9),
                        child: Icon(
                          Icons.camera_alt_rounded,
                          size: 60,
                        ),
                      )
                    : CircleAvatar(
                        radius: 80,
                        backgroundImage: pickedimage != null
                            ? FileImage(pickedimage!)
                            : null,
                      ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 280,
                    child: TextField(
                      controller: nameController,
                      decoration: const InputDecoration(
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
                  const Icon(Icons.emoji_emotions_rounded)
                ],
              )
            ],
          ),
        ),
        floatingActionButton: UiHelper.CustomButton(
            Callback: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => homeScreen())));
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
                    IconButton(
                      onPressed: () {
                        _pickImage(ImageSource.camera);
                      },
                      icon: Icon(
                        Icons.camera_alt,
                        size: 80,
                        color: Colors.grey,
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          _pickImage(ImageSource.gallery);
                        },
                        icon: Icon(
                          Icons.image,
                          size: 80,
                          color: Colors.grey,
                        ))
                  ],
                )
              ],
            ),
          );
        });
  }

  _pickImage(ImageSource imageSource) async {
    try {
      final photo = await ImagePicker().pickImage(source: imageSource);
      if (photo == null) {
        return;
      }
      final tempimage = File(photo.path);
      setState(() {
        pickedimage = tempimage;
      });
    } catch (ex) {
      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(ex.toString()),
        backgroundColor: Color(0XFF00A884),
      ));
    }
  }
}
