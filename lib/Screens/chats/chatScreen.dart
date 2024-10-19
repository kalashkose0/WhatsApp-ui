import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsapp/Screens/contacts/contactScreen.dart';
import 'package:whatsapp/Widgets/ui_helper.dart';

class chatScreen extends StatelessWidget {
  var arrContent = [
    {
      "image":
          "https://th.bing.com/th/id/OIP.-VkJl7lK6-M0_Q--KWolcQHaHk?rs=1&pid=ImgDetMain",
      "name": "Sweety",
      "lastmsg": "Take Care",
      "time": "03:28 am",
      "msgCount": "3"
    },
    {
      "image":
          "https://th.bing.com/th/id/OIP.qKWmR7ETKmcFjO_aBsNHVAHaJQ?rs=1&pid=ImgDetMain",
      "name": "Kitkat",
      "lastmsg": "Gn",
      "time": "12:02 am",
      "msgCount": "2"
    },
    {
      "image":
          "https://th.bing.com/th/id/OIP.wCrj05LUVL41pmjamlu40AHaHa?rs=1&pid=ImgDetMain",
      "name": "guunu",
      "lastmsg": "byyyy",
      "time": "1:09 am",
      "msgCount": "7"
    },
    {
      "image":
          "https://th.bing.com/th/id/OIP.-VkJl7lK6-M0_Q--KWolcQHaHk?rs=1&pid=ImgDetMain",
      "name": "Sweety",
      "lastmsg": "Take Care",
      "time": "03:28 am",
      "msgCount": "3"
    },
    {
      "image":
          "https://th.bing.com/th/id/OIP.qKWmR7ETKmcFjO_aBsNHVAHaJQ?rs=1&pid=ImgDetMain",
      "name": "Kitkat",
      "lastmsg": "Gn",
      "time": "12:02 am",
      "msgCount": "2"
    },
    {
      "image":
          "https://th.bing.com/th/id/OIP.wCrj05LUVL41pmjamlu40AHaHa?rs=1&pid=ImgDetMain",
      "name": "guunu",
      "lastmsg": "byyyy",
      "time": "1:09 am",
      "msgCount": "7"
    },
    {
      "image":
          "https://th.bing.com/th/id/OIP.-VkJl7lK6-M0_Q--KWolcQHaHk?rs=1&pid=ImgDetMain",
      "name": "Sweety",
      "lastmsg": "Take Care",
      "time": "03:28 am",
      "msgCount": "3"
    },
    {
      "image":
          "https://th.bing.com/th/id/OIP.qKWmR7ETKmcFjO_aBsNHVAHaJQ?rs=1&pid=ImgDetMain",
      "name": "Kitkat",
      "lastmsg": "Gn",
      "time": "12:02 am",
      "msgCount": "2"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 40,
                    backgroundImage:
                        NetworkImage(arrContent[index]["image"].toString()),
                  ),
                  title: UiHelper.CustomText(
                      text: arrContent[index]["name"].toString(),
                      height: 15,
                      fontWeight: FontWeight.bold),
                  subtitle: UiHelper.CustomText(
                      text: arrContent[index]["lastmsg"].toString(),
                      height: 13,
                      color: Color(0XFF889095)),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      UiHelper.CustomText(
                          text: arrContent[index]["time"].toString(),
                          height: 12,
                          color: Color(0XFF026500)),
                      SizedBox(
                        height: 5,
                      ),
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: Color(0XFF00A884),
                        child: UiHelper.CustomText(
                            text: arrContent[index]["msgCount"].toString(),
                            height: 12,
                            color: Colors.white),
                      )
                    ],
                  ),
                );
              },
              itemCount: arrContent.length,
            ),
          ),
        ],
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ContactScreen()));
        },
        child: CircleAvatar(
          radius: 35,
          backgroundColor: Color(0XFF00A884),
          child: Icon(
            Icons.message,
            color: Colors.white,
            size: 32,
          ),
        ),
      ),
    );
  }
}
