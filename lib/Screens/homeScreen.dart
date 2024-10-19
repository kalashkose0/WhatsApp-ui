import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/Calls/callScreen.dart';
import 'package:whatsapp/Screens/Status/statusScreen.dart';
import 'package:whatsapp/Screens/camera/cameraScreen.dart';
import 'package:whatsapp/Screens/chats/chatScreen.dart';
import 'package:whatsapp/Widgets/ui_helper.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                text: "CHATS",
              ),
              Tab(
                text: "STATUS",
              ),
              Tab(
                text: "CALLS",
              ),
            ],
            indicatorColor: Colors.white,
          ),
          toolbarHeight: 100,
          title: UiHelper.CustomText(
              text: "WhatsApp", height: 25, color: Colors.white),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert_sharp),
              color: Colors.white,
            ),
          ],
        ),
        body: TabBarView(children: [
          cameraScreen(),
          chatScreen(),
          statusScreen(),
          callScreen()
        ]),
      ),
    );
  }
}
