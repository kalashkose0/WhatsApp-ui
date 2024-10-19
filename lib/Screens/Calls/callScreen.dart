import 'package:flutter/material.dart';
import 'package:whatsapp/Widgets/ui_helper.dart';

class callScreen extends StatelessWidget {
  var callContent = [
    {
      "image":
          "https://th.bing.com/th/id/OIP.qKWmR7ETKmcFjO_aBsNHVAHaJQ?rs=1&pid=ImgDetMain",
      "name": "Sweety",
      "calltime": "15 min ago"
    },
    {
      "image":
          "https://th.bing.com/th/id/OIP.-VkJl7lK6-M0_Q--KWolcQHaHk?rs=1&pid=ImgDetMain",
      "name": "guunu",
      "calltime": "1 day ago"
    },
    {
      "image":
          "https://th.bing.com/th/id/OIP.wCrj05LUVL41pmjamlu40AHaHa?rs=1&pid=ImgDetMain",
      "name": "junnu",
      "calltime": "1 hr ago"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              UiHelper.CustomText(text: "Recent", height: 18),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage:
                        NetworkImage(callContent[index]["img"].toString()),
                  ),
                  title: UiHelper.CustomText(
                      text: callContent[index]["name"].toString(),
                      height: 18,
                      color: Colors.black),
                  subtitle: UiHelper.CustomText(
                      text: callContent[index]["calltime"].toString(),
                      height: 16),
                  trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.call,
                        color: Color(0XFF00A884),
                      )),
                );
              },
              itemCount: callContent.length,
            ),
          )
        ],
      ),
    );
  }
}
