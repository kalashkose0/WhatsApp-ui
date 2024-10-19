import 'package:flutter/material.dart';

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
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context,index){
        
      })
    );
  }
}
