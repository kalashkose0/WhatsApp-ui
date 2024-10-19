import 'package:flutter/material.dart';
import 'package:whatsapp/Widgets/ui_helper.dart';

class statusScreen extends StatelessWidget {
  var statusContent = [
    {
      "image":
          "https://th.bing.com/th/id/OIP.qKWmR7ETKmcFjO_aBsNHVAHaJQ?rs=1&pid=ImgDetMain",
      "name": "Sweety",
      "statustime": "15 min ago"
    },
    {
      "image":
          "https://th.bing.com/th/id/OIP.-VkJl7lK6-M0_Q--KWolcQHaHk?rs=1&pid=ImgDetMain",
      "name": "guunu",
      "statustime": "1 day ago"
    },
    {
      "image":
          "https://th.bing.com/th/id/OIP.wCrj05LUVL41pmjamlu40AHaHa?rs=1&pid=ImgDetMain",
      "name": "junnu",
      "statustime": "1 hr ago"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            UiHelper.CustomText(text: "Status", height: 20)
          ],
        ),
        SizedBox(
          height: 10,
        ),
        ListTile(
          leading: Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Stack(children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(
                    "https://st3.depositphotos.com/9998432/13335/v/450/depositphotos_133352156-stock-illustration-default-placeholder-profile-icon.jpg"),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: Color(0XFF008069),
                  child: Center(
                      child: Icon(
                    Icons.add,
                    color: Color(0XFFFFFFFF),
                    size: 15,
                  )),
                ),
              )
            ]),
          ),
          title: UiHelper.CustomText(text: "My Status", height: 20),
          subtitle:
              UiHelper.CustomText(text: "Tap to add status update", height: 15),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              UiHelper.CustomText(text: "Recent updates", height: 15),
              Icon(
                Icons.arrow_drop_down,
                color: Color(0XFF5E5E5E),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage:
                      NetworkImage(statusContent[index]["img"].toString()),
                ),
                title: UiHelper.CustomText(
                    text: statusContent[index]["name"].toString(), height: 16),
                subtitle: UiHelper.CustomText(
                    text: statusContent[index]["statustime"].toString(),
                    height: 14),
              );
            },
            itemCount: statusContent.length,
          ),
        )
      ],
    ));
  }
}
