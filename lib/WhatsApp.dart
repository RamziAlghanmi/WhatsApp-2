import 'package:flutter/material.dart';
import 'package:whatsapp2/Chat_Summery_Widget.dart';
import 'package:whatsapp2/Screens/Call_Screen.dart';
import 'package:whatsapp2/Screens/Chats_Screen.dart';
import 'package:whatsapp2/Screens/Groups_Screen.dart';
import 'package:whatsapp2/Screens/Resents_Screen.dart';
import 'package:whatsapp2/search_widget.dart';

import 'Screens/chat_details_screen.dart';

class WhatsApp extends StatefulWidget {
  WhatsApp({super.key});
  @override
  State<WhatsApp> createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> {
  int index = 3;
  List pages = [
    CallScreen(),
    ChatsScreen(),
    ResentsScreen(),
    GroupsScreen(),
  ]
  List summeries = [
    {
      "name": "ابراهيم",
      "time": "8:00",
      "massage": "اهلا وسهلا ",
      "massageCount": 10,
      "imagePath": "images/image3.jpg",
      "isRead": false,
    },
    {
      "name": "رمزي ",
      "time": "8:00",
      "massage": "اهلا وسهلا ",
      "massageCount": 10,
      "imagePath": "images/image2.jpg",
      "isRead": true,
    },
    {
      "name": "ابراهيم",
      "time": "8:00",
      "massage": "اهلا وسهلا ",
      "massageCount": 5,
      "imagePath": "images/image8.jpg",
      "isRead": true,
    },
    {
      "name": "ابراهيم",
      "time": "8:00",
      "massage": "اهلا وسهلا ",
      "massageCount": 10,
      "imagePath": "images/image7.jpg",
      "isRead": true,
    },
    {
      "name": "ابراهيم",
      "time": "8:00",
      "massage": "اهلا وسهلا ",
      "massageCount": 10,
      "imagePath": "images/image6.jpg",
      "isRead": true,
    },
    {
      "name": "ابراهيم",
      "time": "8:00",
      "massage": "اهلا وسهلا ",
      "massageCount": 10,
      "imagePath": "images/image4.jpg",
      "isRead": true,
    },
    {
      "name": "ابراهيم",
      "time": "8:00",
      "massage": "اهلا وسهلا ",
      "massageCount": 10,
      "imagePath": "images/image1.jpg",
      "isRead": false,
    },
  ];
  List pages = [CallScreen(), ChatsScreen(), Groups(), Resents()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 8, 6, 6),
        appBar: AppBar(
          backgroundColor: Colors.black,
          leadingWidth: 100,
          leading: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                // SizedBox(width: 10),
                PopupMenuButton<String>(
                  padding: EdgeInsets.only(
                    left: 0,
                    top: 0,
                    right: 10,
                    bottom: 10,
                  ),

                  icon: Icon(Icons.more_vert, color: Colors.white),
                  onSelected: (value) {
                    print(value);
                  },
                  itemBuilder: (context) => [
                    // Align(
                    //   alignment: .centerRight,
                    // ),
                    PopupMenuItem(
                      textStyle: TextStyle(fontSize: 20),

                      value: "مجموعة جديدة",
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [Text("مجموعة جديدة", textAlign: .right)],
                      ),
                    ),
                    PopupMenuItem(
                      value: " مجتمع جديد ",
                      child: Text(" مجتمع جديد "),
                    ),
                    PopupMenuItem(
                      value: " قوائم الرسائل الجماعية",
                      child: Text(" قوائم الرسائل الجماعية"),
                    ),
                    PopupMenuItem(
                      value: "الأجهزة المرتبطة",
                      child: Text("الأجهزة المرتبطة"),
                    ),
                    PopupMenuItem(
                      value: "مميزة بنجمة ",
                      child: Text("مميزة بنجمة "),
                    ),
                    PopupMenuItem(
                      value: " قراءة الكل ",
                      child: Text(" قراءة الكل "),
                    ),
                    PopupMenuItem(
                      value: " الأعدادات ",
                      child: Text(" الأعدادات "),
                    ),
                  ],
                ),

                Icon((Icons.camera_alt_outlined), color: Colors.white),
              ],
            ),
          ),

          // leading: const Row(
          //   children: [

          //     // Icon((Icons.more_vert), color: Colors.black),
          //     SizedBox(width: 10),
          //     Icon((Icons.camera_alt_outlined), color: Colors.black),
          //   ],
          // ),
          title: Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.only(top: 10),
            child: Text("واتساب", style: TextStyle(color: Colors.white)),
          ),

          bottom: PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: SearchWidget(),
          ),
        ),

        body: Container(
          padding: EdgeInsets.all(10),
          child: ListView.builder(
            itemCount: summeries.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChatDetails(
                        name: summeries[index]["name"],
                        imagePath: summeries[index]["imagePath"],
                      ),
                    ),
                  );
                },
                child: ChatSumery(
                  name: summeries[index]["name"],
                  imagePath: summeries[index]["imagePath"],
                  massage: summeries[index]["massage"],
                  massageCount: summeries[index]["massageCount"],
                  time: summeries[index]["time"],
                  isRead: summeries[index]["isRead"],
                ),
              );
            },
          ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("object");
          },
          backgroundColor: Colors.green,
          child: const Icon(Icons.add_comment, color: Colors.white),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,

        bottomNavigationBar: BottomNavigationBar(
          enableFeedback: true,
          onTap: (value) {
            setState(() {
              this.index = value;
            });
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => pages[index],),
            );
            print(index);
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.greenAccent,
          currentIndex: index,

          backgroundColor: Colors.black,
          unselectedItemColor: Colors.white,

          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: "المكالمات",
              backgroundColor: Colors.white,
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.groups_3_outlined),
              label: "المجتمعات",
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.update),

              label: "التحديثات",
            ),

            BottomNavigationBarItem(icon: Icon(Icons.chat), label: "الدردشات"),
          ],
        ),
      ),
    );
  }
}
