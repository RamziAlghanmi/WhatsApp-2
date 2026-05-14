import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChatSumery extends StatelessWidget {
  ChatSumery({
    super.key,
    required this.name,
    required this.time,
    required this.massage,
    required this.massageCount,
    required this.imagePath,
    this.isRead,
  });

  String name;
  String time;
  String massage;
  int massageCount;

  String imagePath;
  bool? isRead = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(width: 1),
        borderRadius: .circular(10),
      ),
      padding: EdgeInsets.all(10),
      child: Row(
        textDirection: TextDirection.rtl,
        mainAxisAlignment: .end,
        crossAxisAlignment: .start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(60),
            child: Container(
              width: 50,
              height: 50,
              color: Colors.blue[200],

              child: Image.asset(imagePath, fit: .cover),
            ),
          ),

          // CircleAvatar(radius: 25, child: Image.asset(imagePath!, fit: .cover)),
          SizedBox(width: 10),
          Column(
            mainAxisAlignment: .end,
            crossAxisAlignment: .end,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: .bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 0),
              Text(
                massage,
                style: TextStyle(fontSize: 10, color: Colors.white),
              ),
            ],
          ),
          Spacer(),
          Column(
            mainAxisAlignment: .start,
            children: [
              Text(time, style: TextStyle(color: Colors.white)),
              SizedBox(height: 5),
              Row(
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.green[500],
                    child: Text(
                      "$massageCount",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ),
                  SizedBox(width: 5),

                  Icon(
                    isRead! ? Icons.done_all : Icons.check,
                    color: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
